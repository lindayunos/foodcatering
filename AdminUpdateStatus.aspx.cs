using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace FoodCatering
{
    public partial class AdminUpdateStatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                DropDownList orderpackstat = (row.Cells[5].FindControl("DropDownList1") as DropDownList);
                int orderid = Convert.ToInt32(row.Cells[0].Text);

                updaterow(orderid, orderpackstat.SelectedItem.Text);
            }
        }

        private void updaterow(int orderid1, String orderstat1)
        {
            String mycon = "Data Source=MSI\\SQLEXPRESS01;Initial Catalog=CaterDB;Integrated Security=True";
            String updatedata = "Update [Order] set order_status='" + orderstat1 + "' where order_id=" + orderid1;
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated!');", true);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}