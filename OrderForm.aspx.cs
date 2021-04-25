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
    public partial class OrderForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=MSI\\SQLEXPRESS01;Initial Catalog=Caterdb;Integrated Security=True");
            con.Open();
            SqlCommand comm = new SqlCommand("Insert into OrderSummary values('" + int.Parse(TextBox1.Text) + "','" + DropDownList1.SelectedValue + "','" + int.Parse(TextBox4.Text) + "','" + TextBox5.Text + "')", con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succesfully Book');", true);

        }
    }
}