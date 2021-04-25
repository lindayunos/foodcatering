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
    public partial class Signup : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=MSI\\SQLEXPRESS01;Initial Catalog=Caterdb;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            string ins = "Insert into [Customer](u_name,u_pass,u_no,u_address) values('" + TextBox1.Text + "','" + TextBox5.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
            SqlCommand comm = new SqlCommand(ins, con);
            con.Open();
            comm.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Registered');window.location.href='Login.aspx';", true);
            con.Close();
        }
    }
}