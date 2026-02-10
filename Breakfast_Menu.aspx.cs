using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Collections.Specialized.BitVector32;
using System.Xml.Linq;
using System.Threading;
using System.Drawing;
using System.Data;

namespace CU_Canteen
{
    public partial class Breakfast_Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            


        }
        /*
        private void BindGrid()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string query = "SELECT * FROM [Breakfast]";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    conn.Open();
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);

                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }


        }
        */
        
        protected void btnInsert_Click(object sender, EventArgs e)
        {
            //string bID = txtMenuId.Text.Trim();
            string ImagePath = "";
            string bName = txtMenuName.Text.Trim();
            string bPrice = txtMenuPrice.Text.Trim();



            // Connection string from Web.config
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();

                // Save the profile image
                if (FileUpload1.HasFile)
                {
                    string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    string filePath = Server.MapPath("~/addtocardv2-main/image/" + fileName);
                    FileUpload1.SaveAs(filePath);
                    ImagePath = "~/addtocardv2-main/image/" + fileName;
                }

                // Insert new user details into the database
                string query = "INSERT INTO [Breakfast] (Image,Name,Price) VALUES (@img,@name,@price)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {

                    cmd.Parameters.AddWithValue("@img", ImagePath);
                    cmd.Parameters.AddWithValue("@name", bName);
                    cmd.Parameters.AddWithValue("@price", bPrice);

                    try
                    {
                        conn.Open();
                        //cmd.ExecuteNonQuery();

                        // Display success alert box
                        

                        // Optionally, clear the TextBox
                        txtMenuName.Text = string.Empty;
                        txtMenuPrice.Text = string.Empty;
                        ImagePath = string.Empty;
                        int rowsAffected = cmd.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            Response.Write("<script>alert('Item inserted successfully!')</script>");
                            //Response.Write("<script>alert('Record Updated Successfully')</script>");
                            //Response.Redirect("selectdata.aspx");
                        }
                        else
                        {
                            Response.Write("Record not found.");
                        }


                    }
                    catch (Exception ex)
                    {
                        // Handle error (optional)
                        Response.Write("<script>alert('Something went wrong!')</script>");
                    }

                    cmd.ExecuteNonQuery();


                    conn.Close();
                }

            }

        }



        
    }
}
        
    
