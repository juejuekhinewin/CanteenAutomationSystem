using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CU_Canteen
{
    public partial class LunchDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Desktop\JueJue_C#\CU_Canteen\CU_Canteen\App_Data\canteen.mdf;Integrated Security=True");

        protected void btnDelete_Click1(object sender, EventArgs e)
        {
            string sqlQuery = @"Delete from Lunch where Id='" + txtMenuId.Text + "' ";
            conn.Open();
            txtMenuId.Text = "";
            SqlCommand cmd = new SqlCommand(sqlQuery, conn);
            int rowsAffected = cmd.ExecuteNonQuery();

            if (rowsAffected > 0)
            {
                Response.Write("<script>alert('Record Deleted Successfully')</script>");
                Response.Redirect("selectLunch.aspx");
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
            
            // Clear other fields as needed
        }
    }
}
