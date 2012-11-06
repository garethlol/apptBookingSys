using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;
using System.Data;

namespace ABS_1.Presentation
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.cmdLogin.ServerClick += new System.EventHandler(this.cmdLogin_ServerClick);
        }

        protected bool ValidateUser(string userName, string passWord)
        {
            SqlConnection conn;
            SqlCommand cmd;
            string lookupPassword = "1";

            if ((null == userName) || (0 == userName.Length))
            {

                return false;
            }

            if ((null == passWord) || (0 == passWord.Length))
            {

                return false;
            }

            /* FOR LOCALHOST */
             conn = new SqlConnection("Data Source=localhost;Initial Catalog=s3252820_wdt;Integrated Security=True");

            /* Gareth */
            //conn = new SqlConnection("Data Source=potoroo.cs.rmit.edu.au;Initial Catalog=s3252820_wdt;Persist Security Info=True;User Id=s3252820_wdt;Password=virus1989man");

            /* Michael */
            // conn = new SqlConnection("Data Source=localhost;Initial Catalog=s3252820_wdt;Integrated Security=True");


            conn.Open();

            cmd = new SqlCommand("SELECT [UserPassword] FROM [User] WHERE [UserName] = @userName", conn);
            cmd.Parameters.Add("@userName", SqlDbType.VarChar);
            cmd.Parameters["@userName"].Value = userName;

            // Execute command and fetch pwd field into lookupPassword string.
            lookupPassword = (string) cmd.ExecuteScalar();

            

            // Cleanup command and connection objects.
            cmd.Dispose();
            conn.Dispose();


            // If no password found, return false.
            if (null == lookupPassword)
            {
                // You could write failed login attempts here to event log for additional security.
                return false;
            }

            // Compare lookupPassword and input passWord, using a case-sensitive comparison.
            return (0 == string.Compare(lookupPassword, passWord, false));

        }

        protected void cmdLogin_ServerClick(object sender, System.EventArgs e)
        {
            if (ValidateUser(txtUserName.Value, txtUserPass.Value))
            {
                FormsAuthentication.RedirectFromLoginPage(txtUserName.Value, true);
                Response.Redirect("~/Members/Index_Members.aspx", true);
            }
            else
            {
                Response.Redirect("~/Presentation/login.aspx", true);
            }
        }
    }
}