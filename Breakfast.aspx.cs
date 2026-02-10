using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace CU_CanteenAutomationSystemProject
{
    public partial class Breakfast : System.Web.UI.Page
    {
        
        //string connectionString =  @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Desktop\JueJue_C#\CU_CanteenAutomationSystemProject\CU_CanteenAutomationSystemProject\App_Data\canteen.mdf;Integrated Security=True;Connect Timeout=30";
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Desktop\JueJue_C#\CU_CanteenAutomationSystemProject\CU_CanteenAutomationSystemProject\App_Data\canteen.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            



        }
        //string connectionString = ConfigurationManager.ConnectionStrings["canteen1"].ConnectionString;





        protected void btnView_Click(object sender, EventArgs e)
        {
            conn.Open();
            string query = "select * from Breakfast where Id='" + txtMenuId.Text + "'";
            SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txtMenuName.Text = dr["Name"].ToString();
                txtMenuPrice.Text = dr["Price"].ToString();

            }
            else
            {
                txtMenuName.Text = "";
                txtMenuPrice.Text = "";

            }
            conn.Close();
        }



        protected void btnUpdate_Click1(object sender, EventArgs e)
        {
            conn.Open();

            var sqlQuery = "";


            sqlQuery = @"UPDATE [Breakfast] SET [Name] = '" + txtMenuName.Text + "' ,[Price] = '" + txtMenuPrice.Text + "' WHERE [Id] = '" + txtMenuId.Text + "'";

            SqlCommand cmd = new SqlCommand(sqlQuery, conn);

            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Record Updated Successfully')</script>");

        }

        

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}
    
