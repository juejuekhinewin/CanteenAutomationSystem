using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CU_Canteen
{
    public partial class lunch : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Desktop\JueJue_C#\CU_Canteen\CU_Canteen\App_Data\canteen.mdf;Integrated Security=True");
        int total = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            showShoppingCart();
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from Lunch", conn);
            SqlDataReader rdr = cmd.ExecuteReader();

            while (rdr.Read())
            {
                Table table = new Table();
                table.Style.Add("padding", "20px");
                table.Style.Add("border", "1px solid black");
                table.CssClass = "product - box";

                TableRow row1 = new TableRow();
                TableCell cell1 = new TableCell();
                Image img = new Image();
                img.ImageUrl = rdr["Image"].ToString();
                img.CssClass = "product-img";
                cell1.Controls.Add(img);
                row1.Cells.Add(cell1);
                table.Rows.Add(row1);

                TableRow row2 = new TableRow();
                TableCell cell2 = new TableCell();
                cell2.Style.Add("text-align", "center");
                cell2.Text = "<h2 class='product-title'>" + rdr["Name"].ToString() + "</h2><span class='product-price'>" + rdr["Price"].ToString() + "</span>";// change database productname and price
                row2.Cells.Add(cell2);
                table.Rows.Add(row2);

                TableRow row3 = new TableRow();
                TableCell cell3 = new TableCell();
                Button detailBtn = new Button();
                detailBtn.ID = rdr["Name"].ToString() + "," + rdr["Price"].ToString();
                detailBtn.Text = "Add to Cart";
                detailBtn.Height = Unit.Pixel(40);
                detailBtn.Width = Unit.Pixel(80);
                detailBtn.Click += new EventHandler(DetailBtn_Click);
                cell3.Style.Add("text-align", "center");
                cell3.Controls.Add(detailBtn);
                row3.Cells.Add(cell3);
                table.Rows.Add(row3);

                Panel1.Controls.Add(table);


            }
            conn.Close();
        }
        protected void DetailBtn_Click(object sender, EventArgs e)
        {

            Button clickedButton = (Button)sender;
            string cid = clickedButton.ID;
            string[] parts = cid.Split(new[] { ',' }, StringSplitOptions.RemoveEmptyEntries);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from ShoppingCart where Name='" + parts[0] + "';", conn);
            SqlDataReader rdr = cmd.ExecuteReader();
            if (rdr.Read())
            {
                int qty = Convert.ToInt32(rdr["qty"]) + 1;
                rdr.Close();

                cmd = new SqlCommand("update ShoppingCart set qty='" + qty + "' where Name='" + parts[0] + "';", conn);
                cmd.ExecuteNonQuery();
            }
            else
            {
                rdr.Close();
                cmd = new SqlCommand("Insert into ShoppingCart(Id,Name,qty,price) values('1','" + parts[0] + "','1','" + parts[1] + "')", conn);
                cmd.ExecuteNonQuery();
            }
            conn.Close();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

            if (Panel3.Visible == true)
            {
                Panel3.Visible = false;
            }
            else
            {
                Panel3.Visible = true;
            }

        }
        protected void devBtn_Click(object sender, EventArgs e)
        {
            Panel3.Controls.Clear();
            Panel3.Visible = true;
            Button txt = (Button)sender;
            String id = txt.ID;
            string[] parts = id.Split(new[] { ',' }, StringSplitOptions.RemoveEmptyEntries);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from ShoppingCart where Name='" + parts[1] + "';", conn);
            SqlDataReader rdr = cmd.ExecuteReader();
            if (rdr.Read())
            {
                int qty = Convert.ToInt32(rdr["qty"]) - 1;
                if (qty < 1)
                {
                    qty = 1;
                }
                rdr.Close();

                cmd = new SqlCommand("update ShoppingCart set qty='" + qty + "' where Name='" + parts[1] + "';", conn);
                cmd.ExecuteNonQuery();
            }
            conn.Close();
            showShoppingCart();
        }

        protected void plusBtn_Click(object sender, EventArgs e)
        {
            Panel3.Controls.Clear();
            Panel3.Visible = true;
            Button txt = (Button)sender;
            String id = txt.ID;
            string[] parts = id.Split(new[] { ',' }, StringSplitOptions.RemoveEmptyEntries);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from ShoppingCart where Name='" + parts[1] + "';", conn);
            SqlDataReader rdr = cmd.ExecuteReader();
            if (rdr.Read())
            {
                int qty = Convert.ToInt32(rdr["qty"]) + 1;
                rdr.Close();

                cmd = new SqlCommand("update ShoppingCart set qty='" + qty + "' where Name='" + parts[1] + "';", conn);
                cmd.ExecuteNonQuery();
            }
            conn.Close();
            showShoppingCart();
        }

        protected void buyBtn_Click(object sender, EventArgs e)
        {
            String Name = "", Qty = "";
            int total = 0;
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from ShoppingCart;", conn);
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Name += rdr["Name"].ToString() + ",";
                Qty += rdr["qty"].ToString() + ",";
                total += Convert.ToInt32(rdr["price"]);
            }

            rdr.Close();
            conn.Close();

            conn.Open();
            cmd = new SqlCommand("Insert into LunchOrder(Id,Name,qty,Total) values('" + Session["Id"] + "','" + Name + "','" + Qty + "','" + total + "')", conn);
            cmd.ExecuteNonQuery();
            conn.Close();

            conn.Open();
            cmd = new SqlCommand("delete from ShoppingCart where Id='1'", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            int remain = 0;

            conn.Open();
            cmd = new SqlCommand("select * from signup where id='" + Session["Id"] + "';", conn);
            rdr = cmd.ExecuteReader();
            if (rdr.Read())
            {
                remain = Convert.ToInt32(rdr["Amount"]) - total;
            }
            rdr.Close();
            conn.Close();

            conn.Open();
            cmd = new SqlCommand("update signup set Amount='" + remain + "' where id='" + Session["Id"] + "';", conn);
            cmd.ExecuteNonQuery();
            conn.Close();

            Response.Redirect("LunchReceipt.aspx");
        }

        protected void cancelBtn_Click(object sender, EventArgs e)
        {
            Panel3.Visible = false;
        }

        protected void tb_TextChanged(object sender, EventArgs e)
        {

        }

        void showShoppingCart()
        {
            Table table = new Table();
            table.Style.Add("margin", "auto");
            table.Style.Add("text-align", "center");
            table.Style.Add("width", "100%");
            table.Style.Add("padding", "20px");
            table.Style.Add("border", "1px solid blue");

            TableRow tr1 = new TableRow();
            TableCell tc = new TableCell();
            tc.Style.Add("height", "40px");
            tc.Style.Add("text-align", "center");
            tc.ColumnSpan = 3;
            tc.Text = "<h1>Shopping List</h1>";
            tr1.Cells.Add(tc);
            table.Rows.Add(tr1);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from ShoppingCart;", conn);
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                int t = Convert.ToInt32(rdr["Price"]) * Convert.ToInt32(rdr["qty"]);
                TableRow row1 = new TableRow();
                TableCell cell1 = new TableCell();
                cell1.Text = rdr["Name"].ToString();
                row1.Cells.Add(cell1);
                TableCell cell2 = new TableCell();
                TextBox tb = new TextBox();

                Button devBtn = new Button();
                devBtn.ID = "devButton," + rdr["Name"].ToString();
                devBtn.Text = "-";
                devBtn.Height = Unit.Pixel(30);
                devBtn.Width = Unit.Pixel(30);
                devBtn.Click += new EventHandler(devBtn_Click);
                cell2.Controls.Add(devBtn);

                tb.ID = rdr["Name"].ToString();
                tb.Text = rdr["qty"].ToString();
                tb.ReadOnly = true;
                tb.Height = Unit.Pixel(25);
                tb.Width = Unit.Pixel(25);
                tb.TextChanged += new EventHandler(tb_TextChanged);
                cell2.Controls.Add(tb);

                Button plusBtn = new Button();
                plusBtn.ID = "plusButton," + rdr["Name"].ToString();
                plusBtn.Text = "+";
                plusBtn.Height = Unit.Pixel(30);
                plusBtn.Width = Unit.Pixel(30);
                plusBtn.Click += new EventHandler(plusBtn_Click);
                cell2.Controls.Add(plusBtn);

                row1.Cells.Add(cell2);

                TableCell cell3 = new TableCell();
                cell3.Text = t.ToString();
                row1.Cells.Add(cell3);

                table.Rows.Add(row1);

                total += t;
            }
            conn.Close();

            TableRow tr = new TableRow();
            TableCell tc1 = new TableCell();
            tc1.Text = "Total";
            tr.Cells.Add(tc1);
            TableCell tc2 = new TableCell();
            tr.Cells.Add(tc2);
            TableCell tc3 = new TableCell();
            tc3.ID = "totalColumn";
            tc3.Text = total.ToString();
            tr.Cells.Add(tc3);
            table.Rows.Add(tr);

            TableRow row3 = new TableRow();
            TableCell cell4 = new TableCell();
            Button detailBtn = new Button();
            detailBtn.ID = "BuyButton";
            detailBtn.Text = "Buy";
            detailBtn.Height = Unit.Pixel(40);
            detailBtn.Width = Unit.Pixel(80);
            detailBtn.Click += new EventHandler(buyBtn_Click);
            cell4.Style.Add("text-align", "right");
            cell4.Controls.Add(detailBtn);
            row3.Cells.Add(cell4);

            TableCell cell = new TableCell();
            row3.Cells.Add(cell);

            TableCell cell5 = new TableCell();
            Button cancelBtn = new Button();
            cancelBtn.ID = "CancelButton";
            cancelBtn.Text = "Cancel";
            cancelBtn.Height = Unit.Pixel(40);
            cancelBtn.Width = Unit.Pixel(80);
            cancelBtn.Click += new EventHandler(cancelBtn_Click);
            cell5.Style.Add("text-align", "left");
            cell5.Controls.Add(cancelBtn);
            row3.Cells.Add(cell5);
            table.Rows.Add(row3);

            Panel3.Controls.Add(table);
        }
    }
 }
