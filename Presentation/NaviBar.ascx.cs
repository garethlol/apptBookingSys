using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ABS_1
{
    public partial class NaviBar : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string path = Server.MapPath("~/NavBarLinks/Navi.xml");
            DataSet dstNavContents = new DataSet();
            dstNavContents.ReadXml(path);
            GridView1.DataSource = dstNavContents.Tables[0].DefaultView;
            GridView1.DataBind();
        }
    }
}