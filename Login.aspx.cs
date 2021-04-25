using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace FoodCatering
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=MSI\\SQLEXPRESS01;Initial Catalog=Caterdb;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("SELECT u_pass FROM Customer WHERE u_name = '" + username.Text + "';", con);
            comm.ExecuteNonQuery();
            SqlDataReader r = comm.ExecuteReader();
            //string hashResult = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox2.Text, "SHA1");
            while (r.Read())
            {
                if (r.GetValue(0).ToString() == TextBoxpwd.Text)
                {
                    if (username.Text != "Admin")
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('User are succesfully login');window.location.href='Package.aspx';", true);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Admin are successfully logged in ');window.location.href='AdminPage.aspx';", true);
                }
                else
                {
                    Label2.ForeColor = System.Drawing.Color.Red;
                    Label2.Text = "Invalid Email or Password"; 
                }
            }

            con.Close();
        }
        
    }


}

    



