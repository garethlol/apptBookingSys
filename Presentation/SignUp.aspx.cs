using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ABS_1.DbConnect;

namespace ABS_1
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {

        }

        protected void Wizard1_FinishButtonClick1(object sender, WizardNavigationEventArgs e)
        {
            ABS_1.DbConnect.Users d = new DbConnect.Users();
            d.insertUser(txtName.Text, txtUsername.Text, txtEmail.Text, txtPassword.Text);
        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {

        }

    }
}