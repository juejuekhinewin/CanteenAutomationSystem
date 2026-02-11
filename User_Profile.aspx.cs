using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CU_Canteen
{
    public partial class User_Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Optionally, you can bind the data manually here
            }


        }


        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Desktop\JueJue_C#\CU_Canteen\CU_Canteen\App_Data\canteen.mdf;Integrated Security=True");

        protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
        {
            // Retrieve the key (UserId) from the DataKey collection
            string userId = Convert.ToString(DetailsView1.DataKey.Value);

            // Retrieve the updated values from the DetailsView control
            string username = (string)e.NewValues["Name"];
            string email = (string)e.NewValues["Email"];
            string phone = (string)e.NewValues["Phone"];
            string date = (string)e.NewValues["DOB"];
            string gender = (string)e.NewValues["Gender"];
            string year = (string)e.NewValues["Year"];
            string section = (string)e.NewValues["Section"];
            string amount = (string)e.NewValues["Amount"];
            string pay = (string)e.NewValues["Payment"];
            string pwd = (string)e.NewValues["Password"];
            string compass = (string)e.NewValues["Confirm_pwd"];

            // Update the database using ADO.NET
            UpdateUser(userId, username, email, phone, date,gender,year,section,amount,pay,pwd,compass);

            // Cancel the edit mode
            DetailsView1.ChangeMode(DetailsViewMode.ReadOnly);

            // Rebind the data to reflect the changes
            BindDetailsView();
        }

        private void UpdateUser(string userId, string name, string email, string phone, string date,string gender,string year,string section,string amount,string pay, string password,string compass)
        {
            
                string query = "UPDATE signup SET Name = @n, Email = @e, Phone = @ph, DOB = @d,Gender=@g,Year=@y,Section=@s,Amount=@amt,Payment=@pay,Password=@pwd, Confirm_pwd=@comPass WHERE ID=@id";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                // Add parameters to prevent SQL injection
                cmd.Parameters.AddWithValue("@id", userId);
                cmd.Parameters.AddWithValue("@n", name);
                    cmd.Parameters.AddWithValue("@e", email);
                    cmd.Parameters.AddWithValue("@ph", phone);
                    cmd.Parameters.AddWithValue("@d", date);
                    cmd.Parameters.AddWithValue("@g", gender);
                    cmd.Parameters.AddWithValue("@y", year);
                    cmd.Parameters.AddWithValue("@s", section);
                    cmd.Parameters.AddWithValue("@amt", amount);
                    cmd.Parameters.AddWithValue("@pay", pay);
                    cmd.Parameters.AddWithValue("@pwd", password);
                    cmd.Parameters.AddWithValue("@comPass", compass);
                


                // Open the connection and execute the query
                conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            
        }

        private void BindDetailsView()
        {
            // Rebind the DetailsView control with the updated data from the database
            SqlDataSource1.DataBind();
        }
    }

        
    }