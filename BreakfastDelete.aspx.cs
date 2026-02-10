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
    public partial class BreakfastDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Desktop\JueJue_C#\CU_Canteen\CU_Canteen\App_Data\canteen.mdf;Integrated Security=True");


        protected void btnDelete_Click1(object sender, EventArgs e)
        {
            string sqlQuery = @"Delete from Breakfast where Id='" + txtMenuId.Text + "' ";
            conn.Open();
            txtMenuId.Text = "";
            SqlCommand cmd = new SqlCommand(sqlQuery, conn);
            int rowsAffected = cmd.ExecuteNonQuery();
            // Check if the update was successful
            if (rowsAffected > 0)
            {
                Response.Write("<script>alert('Record Deleted Successfully')</script>");
                //Response.Redirect("selectdata.aspx");
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
    
