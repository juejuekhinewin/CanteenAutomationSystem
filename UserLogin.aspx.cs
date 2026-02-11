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
    public partial class UserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Lenovo\\Desktop\\JueJue_C#\\CU_Canteen\\CU_Canteen\\App_Data\\canteen.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select * from signup where ID=@i and Name=@n and Email=@e and Password=@p and Confirm_Pwd=@cp", conn);
            cmd.Parameters.AddWithValue("@i", TextBox1.Text);
            cmd.Parameters.AddWithValue("@n", txtStudentName.Text);
            cmd.Parameters.AddWithValue("@e", txtEmail.Text);
            cmd.Parameters.AddWithValue("@p", txtPassword.Text);
            cmd.Parameters.AddWithValue("@cp", txtComPass.Text);

            conn.Open();

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            int i = cmd.ExecuteNonQuery();
            conn.Close();

            if (dt.Rows.Count > 0)
            {
                Response.Redirect("User_Profile.aspx");
            }
            else
            {
                Response.Redirect("UserLogin.aspx");

            }

           



        }


        protected void txtStudentName_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
