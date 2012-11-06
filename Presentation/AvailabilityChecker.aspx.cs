using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace ABS_1.Presentation
{
    public partial class AvailabilityChecker : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            string pattern1 = ",";
            string pattern2 = " ";
            string[] months = { "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" };

            string text = Calendar1.SelectedDate.ToLongDateString();

            string[] subString = Regex.Split(text, pattern1);

            text = subString[1];

            string[] subString2 = Regex.Split(text, pattern2);

            for (int i = 0; i < 12; i++)
            {
                if (months[i] == subString2[2])
                {
                    if (i < 9)
                    {
                        i = i + 1;
                        string temp = i.ToString();
                        temp = "0" + temp;
                        subString2[2] = temp;
                    }
                    else
                    {
                        i = i + 1;
                        string temp = i.ToString();
                        subString2[2] = temp;
                    }
                }

            }

            text = subString2[3] + "-" + subString2[2] + "-" + subString2[1];

            CalLabel.Text = text;
        }
    }
}

