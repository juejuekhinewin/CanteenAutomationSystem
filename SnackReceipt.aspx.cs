using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CU_Canteen
{
    public partial class SnackReceipt : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Desktop\JueJue_C#\CU_Canteen\CU_Canteen\App_Data\canteen.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
            string pname = "";
            string qty = "";
            int total = 0;
            int num = 0;


            SqlCommand cmd = new SqlCommand("select * from SnackOrder where Id='" + Session["Id"] + "'", conn);
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                pname = rdr["Name"].ToString();
                qty = rdr["qty"].ToString();
                total = Convert.ToInt32(rdr["Total"]);

            }
            conn.Close();
            string[] item = pname.Split(new[] { ',' }, StringSplitOptions.RemoveEmptyEntries);
            string[] qty1 = qty.Split(new[] { ',' }, StringSplitOptions.RemoveEmptyEntries);

            DataTable dt = new DataTable();
            dt.Columns.Add("Name");
            dt.Columns.Add("Quality");
            foreach (string p in item)
            {
                DataRow row = dt.NewRow();
                row["Name"] = p;
                row["Quality"] = qty1[num];

                dt.Rows.Add(row);
                num++;
            }
            DataRow row1 = dt.NewRow();
            row1["Name"] = "Total";
            row1["Quality"] = total.ToString();
            dt.Rows.Add(row1);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        
            }
    }
}