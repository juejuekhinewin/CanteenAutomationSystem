using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CU_Canteen
{
    public partial class Snack_Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void bnInsert_Click(object sender, EventArgs e)
        {
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
                string query = "INSERT INTO [SnackShop] (Image,Name,Price) VALUES (@img,@name,@price)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {

                    cmd.Parameters.AddWithValue("@img", ImagePath);
                    cmd.Parameters.AddWithValue("@name", bName);
                    cmd.Parameters.AddWithValue("@price", bPrice);

                    try
                    {
                        conn.Open();



                        // Optionally, clear the TextBox
                        txtMenuName.Text = string.Empty;
                        txtMenuPrice.Text = string.Empty;
                        ImagePath = string.Empty;
                        int rowsAffected = cmd.ExecuteNonQuery();




                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('Item inserted successfully!')</script>");

                        // Handle error (optional)
                        //Response.Write("<script>alert('Something went wrong!')</script>");
                    }

                    cmd.ExecuteNonQuery();


                    conn.Close();
                }

            }
        }
    }
}