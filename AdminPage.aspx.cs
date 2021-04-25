using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Configuration;
namespace FoodCatering
{
    public partial class AdminPage : System.Web.UI.Page
    {
        
        SqlConnection con = new SqlConnection("Data Source=MSI\\SQLEXPRESS01;Initial Catalog=Caterdb;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand comm = new SqlCommand("SELECT COUNT(u_name) FROM Customer WHERE u_name != 'Admin';", con);
            SqlDataReader r = comm.ExecuteReader();
            while (r.Read())
            {
                Label1.Text = r.GetValue(0).ToString();

            }

            con.Close();
            con.Open();


            comm = new SqlCommand("SELECT COUNT([order_id]) FROM [dbo].[Order]", con);
            r = comm.ExecuteReader();
            while (r.Read())
            {
                Label2.Text = r.GetValue(0).ToString();

            }

            con.Close();
            con.Open();

            comm = new SqlCommand("SELECT COUNT([package_id]) FROM [dbo].[Package]", con);
            r = comm.ExecuteReader();
            while (r.Read())
            {
                Label3.Text = r.GetValue(0).ToString();

            }

            con.Close();
            con.Open();

            comm = new SqlCommand("SELECT SUM([total_price]) FROM [dbo].[Order]", con);
            r = comm.ExecuteReader();
            while (r.Read())
            {
                Label4.Text = r.GetValue(0).ToString();

            }

            con.Close();
            con.Open();
            comm = new SqlCommand("SELECT SUM([total_price]) FROM [dbo].[Order]", con);
            r = comm.ExecuteReader();
            while (r.Read())
            {
                Label4.Text = r.GetValue(0).ToString();

            }

            con.Close();

        }
    }
}