using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CU_Canteen
{
    public partial class profile : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Desktop\JueJue_C#\CU_CanteenAutomationSystemProject\CU_CanteenAutomationSystemProject\App_Data\canteen.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                int userId = 1; 
                LoadUserData(userId);
            }

        }
        private string connectionString = "your_connection_string_here";
        private void LoadUserData(int userId)
        {
            // ADO.NET code to fetch data from the database
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT ID, Name, Email, PhoneNo FROM signup WHERE ID = @id";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@id", userId);

                // Open the database connection
                con.Open();

                // Execute the query and read the results
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    // Populate the form controls with data if the user is found
                    reader.Read();

                    .Text = reader["UserId"].ToString();
                    txtUsername.Text = reader["Username"].ToString();
                    txtEmail.Text = reader["Email"].ToString();
                    txtPhoneNumber.Text = reader["PhoneNumber"].ToString();
                }
                else
                {
                    
                    txtStudentId.Text = "User not found";
                }

                
                reader.Close();
            }


        }
    }
}
