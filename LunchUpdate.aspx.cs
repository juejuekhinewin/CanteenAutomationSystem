using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CU_Canteen
{
    public partial class LunchUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Desktop\JueJue_C#\CU_Canteen\CU_Canteen\App_Data\canteen.mdf;Integrated Security=True");
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            conn.Open();

            string sqlQuery = "";
            sqlQuery = @"UPDATE [Lunch] SET [Name] = '" + txtMenuName.Text + "' ,[Price] = '" + txtMenuPrice.Text + "' WHERE [Id] = '" + txtMenuId.Text + "'";

            SqlCommand cmd = new SqlCommand(sqlQuery, conn);

            //cmd.ExecuteNonQuery();
            int rowsAffected = cmd.ExecuteNonQuery();

            // Check if the update was successful
            if (rowsAffected > 0)
            {
                Response.Write("<script>alert('Record Updated Successfully')</script>");
                //Response.Redirect("selectLunch.aspx");
            }
            else
            {
                Response.Write("Record not found.");
            }
            conn.Close();



        }


        protected void btnView_Click(object sender, EventArgs e)
        {
            conn.Open();
            string query = "select * from Lunch where Id='" + txtMenuId.Text + "'";
            SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txtMenuName.Text = dr["Name"].ToString();
                txtMenuPrice.Text = dr["Price"].ToString();

            }
            else
            {
                txtMenuName.Text = "";
                txtMenuPrice.Text = "";

            }
            conn.Close();

        }


        }
        }
    
