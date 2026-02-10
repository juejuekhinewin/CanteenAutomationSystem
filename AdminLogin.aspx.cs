using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace CU_Canteen
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogIn_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Desktop\JueJue_C#\CU_Canteen\CU_Canteen\App_Data\canteen.mdf;Integrated Security=True");
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from Admin where Name=@n and Password=@p", conn);
            
            cmd.Parameters.AddWithValue("@n", txtName.Text);
            cmd.Parameters.AddWithValue("@p", txtPassword.Text);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            int i = cmd.ExecuteNonQuery();
            conn.Close();

            if (dt.Rows.Count > 0)
            {
                Response.Redirect("Restaurants.aspx");
            }
            else
            {
                Response.Redirect("AdminLogin.aspx");

            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            ClearFormFields();
            //Response.Redirect("HomePage.aspx");
        }

        private void ClearFormFields()
        {
            // Assuming you have TextBox controls on your form
            txtName.Text = string.Empty;
            txtPassword.Text = string.Empty;
           
            // Clear other fields as needed
        }
    }
}