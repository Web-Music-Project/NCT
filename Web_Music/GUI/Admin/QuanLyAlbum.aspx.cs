using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_Music.BUS;

namespace Web_Music.GUI.Admin
{
    public partial class QuanLyAlbum : System.Web.UI.Page
    {
        BUS_Album bus_album = new BUS_Album();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                HienThi();
            }
        }
        private void HienThi()
        {
            dgvalbum.DataSource = bus_album.GetAllAlbum();
            dgvalbum.DataBind();
        }

        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            if(e.CommandName == "xoa")
            {
                int id = Convert.ToInt16(e.CommandArgument);
                bus_album.DeleteAlbum(id);
            }
            HienThi();
        }

        protected void btnSua_Command(object sender, CommandEventArgs e)
        {
            if(e.CommandName == "sua")
            {
                int id = Convert.ToInt16(e.CommandArgument);
                Session["ID_Album"] = id;
                Response.Redirect("SuaAlbum.aspx");
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            dgvalbum.DataSource = bus_album.FindAlbumByName(txtsearch.Text);
            dgvalbum.DataBind();
        }

        protected void dgvalbum_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            dgvalbum.DataSource = bus_album.GetAllAlbum();
            dgvalbum.PageIndex = e.NewPageIndex;
            dgvalbum.DataBind();
        }
    }
}