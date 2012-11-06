using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ABS_1.Members
{
    public partial class NaviBar_Member : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string path = Server.MapPath("~/NavBarLinks/Navi_Member.xml");
            DataSet dstNavContents = new DataSet();
            dstNavContents.ReadXml(path);
            GridView2.DataSource = dstNavContents.Tables[0].DefaultView;
            GridView2.DataBind();
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}