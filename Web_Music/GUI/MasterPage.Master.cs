using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Web_Music.GUI
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Search_ServerClick(object sender, EventArgs e)
        {
            string url = "KetQuaTimKiem.aspx?search_string=" + txtSearch.Text;
            Response.Redirect(url);
        }

        protected void Logout_ServerClick(object sender, EventArgs e)
        {
            Session["login_id"] = 0;
            Session["login_username"] = "";
            Session["login_role"] = "";
            Response.Redirect("Login.aspx");
        }

        protected void FavoriteSong_ServerClick(object sender, EventArgs e)
        {
            int account_id = Convert.ToInt16(Session["login_id"]);
            if(account_id == 0)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Redirect("BaiHatYeuThich.aspx");
            }
        }
    }
}