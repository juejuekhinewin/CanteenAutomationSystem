using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CU_Canteen
{
    public partial class payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Desktop\JueJue_C#\CU_Canteen\CU_Canteen\App_Data\canteen.mdf;Integrated Security=True");


        protected void btnView_Click(object sender, EventArgs e)
        {
            conn.Open();
            string query = "select * from signup where Id='" + txtID.Text + "'";
            SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txtID.Text = dr["Id"].ToString();
                txtName.Text = dr["Name"].ToString();
                txtAmt.Text = dr["Amount"].ToString();

            }
            else
            {
                txtID.Text = "";
                txtName.Text = "";
                txtAmt.Text = "";

            }
            conn.Close();
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            conn.Open();
            string sqlQuery = "";
            sqlQuery = @"UPDATE [signup] SET [Amount] = '" + txtAmt.Text + "' WHERE [Id] = '" + txtID.Text + "'";

            SqlCommand cmd = new SqlCommand(sqlQuery, conn);
            // cmd.Parameters.AddWithValue("Changed_Date", DateTime.Now);
            //cmd.ExecuteNonQuery();
            int rowsAffected = cmd.ExecuteNonQuery();

            // Check if the update was successful
            if (rowsAffected > 0)
            {
                Response.Write("<script>alert('Record Updated Successfully')</script>");
                //Response.Redirect("selectdata.aspx");
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
            txtID.Text = string.Empty;
            txtName.Text = string.Empty;
            txtAmt.Text = string.Empty;
            // Clear other fields as needed
        }
    }
}


