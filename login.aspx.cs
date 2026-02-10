using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace CU_Canteen
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
           
                SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Desktop\JueJue_C#\CU_Canteen\CU_Canteen\App_Data\canteen.mdf;Integrated Security=True");
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT Id, Name,Email,Password,Confirm_pwd FROM signup WHERE Id=@id and Name=@name and Email=@email and Password=@pwd and Confirm_pwd=@comPass ", conn);
                cmd.Parameters.AddWithValue("@id", txtStudentId.Text);
                cmd.Parameters.AddWithValue("@name", txtName.Text);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@pwd", txtPassword.Text);
                cmd.Parameters.AddWithValue("@comPass", txtComPass.Text);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                cmd.ExecuteNonQuery();
                if (dt.Rows.Count > 0)
                {
                    Session["Id"] =txtStudentId.Text; 

                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Response.Redirect("login.aspx");
                }

                conn.Close();
         }

        private void ClearFormFields()
        {
            // Assuming you have TextBox controls on your form
            txtStudentId.Text = string.Empty;
            txtName.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtPassword.Text = string.Empty;
            txtComPass.Text = string.Empty;

            // Clear other fields as needed
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            ClearFormFields();

        }
    }
}
    
