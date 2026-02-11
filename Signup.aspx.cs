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
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Desktop\JueJue_C#\CU_CanteenAutomationSystemProject\CU_CanteenAutomationSystemProject\App_Data\canteen.mdf;Integrated Security=True");

        protected void btnSubmit1_Click(object sender, EventArgs e)
        {



        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string ID = txtStudentId.Text.Trim();
            string Name = txtName.Text.Trim();
            string Email = txtEmail.Text.Trim();
            string Phone = txtPhoneNo.Text.Trim();
            string DOB = txtDOB.Text.Trim();

            string gender;
            if (rdoMale.Checked)
            {
                gender = "Male";
            }
            else
            {
                gender = "Female";
            }
            string GEN = gender;
            string Year = ddYear.SelectedItem.Text.Trim();
            string Section = ddSection.SelectedItem.Text.Trim();

            //string profileImagePath = "";

            string Amt = txtAmount.Text.Trim();
            if (chKpay.Checked)
            {
                string pay = chKpay.Text.Trim();
            }
            else if (chWave.Checked)
            {
                string pay = chWave.Text.Trim();
            }
            string Pwd = txtPassword.Text.Trim();
            string Confirm_Password = txtComPass.Text.Trim();

            // Connection string from Web.config
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();

                // Check if the user already exists
                string query = "SELECT COUNT(1) FROM signup WHERE ID = @id";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@id", ID);
                    int count = Convert.ToInt32(cmd.ExecuteScalar());

                    if (count > 0)
                    {
                        // User already exists, display an alert box
                        ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('User already exists');", true);
                        return;
                    }
                }

                /*
                if (fImage.HasFile)
                {
                    string fileName = Path.GetFileName(fImage.PostedFile.FileName);
                    string filePath = Server.MapPath("~/images/" + fileName);
                    fImage.SaveAs(filePath);
                    profileImagePath = "~/images/" + fileName;
                }
                */

                // Insert new user details into the database
                query = "INSERT INTO [signup] (Id,Name,Email,Phone,DOB,Gender,Year,Section,Amount,Payment,Password,Confirm_pwd) VALUES (@id,@n,@e,@p,@d,@g,@y,@s,@a,@pay,@pwd,@confirm)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@id", ID);
                    cmd.Parameters.AddWithValue("@n", Name);
                    cmd.Parameters.AddWithValue("@e", Email);
                    cmd.Parameters.AddWithValue("@p", Phone);
                    cmd.Parameters.AddWithValue("@d", DOB);

                    if (rdoMale.Checked)
                    {
                        gender = "Male";
                    }
                    else
                    {
                        gender = "Female";
                    }
                    cmd.Parameters.AddWithValue("@g", gender);
                    cmd.Parameters.AddWithValue("@y", Year);
                    cmd.Parameters.AddWithValue("@s", Section);
                   // cmd.Parameters.AddWithValue("@img", profileImagePath);
                    cmd.Parameters.AddWithValue("@a", Amt);

                    var message = "";
                    if (chKpay.Checked)
                    {
                        message = chKpay.Text + " ";
                    }
                    else if (chWave.Checked)
                    {
                        message += chWave.Text + " ";
                    }

                    cmd.Parameters.AddWithValue("@pay", message);
                    cmd.Parameters.AddWithValue("@pwd", Pwd);
                    cmd.Parameters.AddWithValue("@confirm", Confirm_Password);

                    cmd.ExecuteNonQuery();
                    conn.Close();
                }


            }
            Response.Redirect("login.aspx");
        }






        protected void btnCancel_Click(object sender, EventArgs e)
        {
            ClearFormFields();
        }

        private void ClearFormFields()
        {
            // Assuming you have TextBox controls on your form
            txtStudentId.Text = string.Empty;
            txtName.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtPhoneNo.Text = string.Empty;
            txtDOB.Text = string.Empty;
            ddYear.Text = string.Empty;
            rdoMale.Text = string.Empty;
            rdoFemale.Text = string.Empty;
            ddSection.Text = string.Empty;
            txtAmount.Text = string.Empty;
           chKpay.Checked = false;
            //chWave.Checked = false;
            txtPassword.Text = string.Empty;
            txtComPass.Text = string.Empty;
            // Clear other fields as needed
        }
    }
}