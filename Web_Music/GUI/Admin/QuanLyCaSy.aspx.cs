using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_Music.BUS;

namespace Web_Music.GUI.Admin
{
    public partial class QuanLyBaiHat : System.Web.UI.Page
    {
        BUS_Singer bus_artist = new BUS_Singer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                HienThi();
            }
            
        }
        public void HienThi()
        {
            dgvcasy.DataSource = bus_artist.GetAllSinger();
            dgvcasy.DataBind();
        }

        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {

            if (e.CommandName == "xoa")
            {
                int id = Convert.ToInt16(e.CommandArgument);
                Session["idcs"] = id;
                bus_artist.DeleteSinger(id);
                Response.Redirect("QuanLyCaSy.aspx");

            }
        }

        protected void btnSua_Command(object sender, CommandEventArgs e)
        {

            if (e.CommandName == "sua")
            {
                int id = Convert.ToInt16(e.CommandArgument);
                Session["idcs"] = id;
                Response.Redirect("SuaCaSy.aspx");

            }
        }

        protected void dgvcasy_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            dgvcasy.DataSource = bus_artist.GetAllSinger();
            dgvcasy.PageIndex = e.NewPageIndex;
            dgvcasy.DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            dgvcasy.DataSource = bus_artist.FindSingerByName(txtsearch.Text);
            dgvcasy.DataBind();
        }
    }
}