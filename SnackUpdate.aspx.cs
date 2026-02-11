using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace CU_Canteen
{
    public partial class SnackUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Desktop\JueJue_C#\CU_Canteen\CU_Canteen\App_Data\canteen.mdf;Integrated Security=True");

        protected void bnView_Click(object sender, EventArgs e)
        {
            conn.Open();
            string query = "select * from SnackShop where Sid='" + txtMenuId.Text + "'";
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

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            conn.Open();
            string sqlQuery = "";

            sqlQuery = @"UPDATE [SnackShop] SET [Name] = '" + txtMenuName.Text + "' ,[Price] = '" + txtMenuPrice.Text + "' WHERE [Sid] = '" + txtMenuId.Text + "'";

            SqlCommand cmd = new SqlCommand(sqlQuery, conn);

            //cmd.ExecuteNonQuery();
            int rowsAffected = cmd.ExecuteNonQuery();

            // Check if the update was successful
            if (rowsAffected > 0)
            {
                Response.Write("<script>alert('Record Updated Successfully')</script>");
                Response.Redirect("selectSnack.aspx");
            }
            else
            {
                Response.Write("Record not found.");
            }
            conn.Close();
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            ClearFormFields();

        }

        private void ClearFormFields()
        {
            // Assuming you have TextBox controls on your form
            txtMenuId.Text = string.Empty;
            txtMenuName.Text = string.Empty;
            txtMenuPrice.Text = string.Empty;
            // Clear other fields as needed
        }

    }
}
