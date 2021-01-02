using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Music.GUI.Admin
{
    public partial class AdminMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["login_role"] == null)
            {
                Session["login_role"] = "";
            }
            if(Session["login_role"].ToString() != "admin")
            {
                Response.Redirect("AcessDeny.aspx");
            }
        }

        protected void Logout_ServerClick(object sender, EventArgs e)
        {
            Session["login_role"] = "";
            Session["login_id"] = 0;
            Session["login_username"] = "";
            Response.Redirect("../Login.aspx");
        }
    }
}