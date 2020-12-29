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
    public partial class SuaBaiHat : System.Web.UI.Page
    {
        BUS_Song bus_song = new BUS_Song();
        BUS_Singer bus_singer = new BUS_Singer();
        BUS_Category bus_category = new BUS_Category();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HienThi();
            }
        }

        public void HienThi()
        {
            ddl_singer.DataSource = bus_singer.GetAllSinger();
            ddl_singer.DataTextField = "Name";
            ddl_singer.DataValueField = "ID";
            ddl_singer.DataBind();

            ddl_Category.DataSource = bus_category.GetAllCategory();
            ddl_Category.DataTextField = "Name";
            ddl_Category.DataValueField = "ID";
            ddl_Category.DataBind();

            int id_song = int.Parse(Session["id_song"].ToString());
            DataTable dt = new DataTable();
            dt = bus_song.GetChiTietBaiHatById(id_song);
            txtTenBaiHat.Text = dt.Rows[0]["Name"].ToString();
            ddl_singer.SelectedValue = dt.Rows[0]["Singer_ID"].ToString();
            ddl_Category.SelectedValue = dt.Rows[0]["Category_ID"].ToString();
            txtLyric.Text = dt.Rows[0]["Lyric"].ToString();
            thumbnail_image.ImageUrl = "../../../Image/Cover_vuong/" + dt.Rows[0]["Thumbnail"].ToString();
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            int id_song = int.Parse(Session["id_song"].ToString());

            DataTable dt = new DataTable();
            dt = bus_song.GetChiTietBaiHatById(id_song);
            string thumbnail = "";
            string music_source = "";
            thumbnail = dt.Rows[0]["Thumbnail"].ToString();
            music_source = dt.Rows[0]["Source"].ToString();

            if (upload_thumbnail.HasFile)
            {
                string filepath2 = MapPath("../../Image/Cover_vuong/");
                upload_thumbnail.SaveAs(filepath2 + upload_thumbnail.FileName);
            }
            if (upload_music.HasFile)
            {
                string filepath3 = MapPath("../../Music/");
                upload_music.SaveAs(filepath3 + upload_music.FileName);
            }
            if (upload_thumbnail.FileName != string.Empty)
            {
                thumbnail = upload_thumbnail.FileName;
            }
            if(upload_music.FileName != string.Empty)
            {
                music_source = upload_music.FileName;
            }
            bus_song.UpdateSong(id_song, txtTenBaiHat.Text, txtLyric.Text.Replace("'","''"), thumbnail, music_source, 500, int.Parse(ddl_singer.SelectedValue), int.Parse(ddl_Category.SelectedValue));
            HienThi();
        }
    }
}