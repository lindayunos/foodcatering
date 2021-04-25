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
    public partial class Homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=MSI\\SQLEXPRESS01;Initial Catalog=CaterdbIntegrated Security=True");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[Food_Table]
                   ([CustName]
                   ,[CustEmail]
                   ,[CustPwd]
                   ,[CustPhone]
                   ,[CustAddress])
             VALUES
                   ('" + name.Text + "', '" + email.Text + "', '" + pwd.Text + "', '" + phone.Text + "', '" + address.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('user is registered successfully')</script>");

        }

        
    }
}