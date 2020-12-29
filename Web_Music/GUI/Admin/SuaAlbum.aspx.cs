using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Web_Music.BUS;

namespace Web_Music.GUI.Admin
{
    public partial class SuaAlbum : System.Web.UI.Page
    {
        BUS_Album bus_album = new BUS_Album();
        BUS_Song_Album bus_song_album = new BUS_Song_Album();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HienThi();
            }
        }

        public void HienThi()
        {
            int id_album = Convert.ToInt16(Session["ID_Album"]);
            DataTable dt = new DataTable();
            dt = bus_album.GetAlbumById(id_album);
            txtAlbumName.Text = dt.Rows[0]["Name"].ToString();
            thumbnail_img.ImageUrl = "../../../Image/Cover_vuong/" + dt.Rows[0]["Thumbnail"].ToString();
            dgv_SongInAlbum.DataSource = bus_album.GetChiTietAlbumById(id_album);
            dgv_SongInAlbum.DataBind();
            lb_TenAlbum.Text = "Các bài hát trong album " + dt.Rows[0]["Name"].ToString();
        }
        protected void btnsua_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt16(Session["ID_Album"]);
            DataTable dt = new DataTable();
            dt = bus_album.GetAlbumById(id);
            string thumbnail = dt.Rows[0]["Thumbnail"].ToString();
            if (upload_thumbnail.HasFile)
            {
                string filepath = MapPath("../../Image/Cover_vuong/");
                upload_thumbnail.SaveAs(filepath + upload_thumbnail.FileName);
            }
            if (upload_thumbnail.FileName != "")
            {
                thumbnail = upload_thumbnail.FileName;
            }
            bus_album.UpdateAlbum(txtAlbumName.Text, thumbnail, id);
            HienThi();
        }
        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "xoa")
            {
                int id_song = Convert.ToInt16(e.CommandArgument);
                bus_song_album.DeleteSongInAlbumById(id_song);
            }
            HienThi();
        }

        protected void btnSua_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "sua")
            {
                int id = Convert.ToInt16(e.CommandArgument);
                Session["ID_Album"] = id;
                Response.Redirect("SuaAlbum.aspx");
            }
        }

        protected void dgvalbum_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            dgv_SongInAlbum.DataSource = bus_album.GetAllAlbum();
            dgv_SongInAlbum.PageIndex = e.NewPageIndex;
            dgv_SongInAlbum.DataBind();
        }
    }
}