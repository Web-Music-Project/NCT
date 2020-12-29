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
    public partial class ThemBaiHatVaoAlbum : System.Web.UI.Page
    {
        BUS_Song bus_song = new BUS_Song();
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
            int album_id = Convert.ToInt16(Session["ID_Album"]);
            ddl_BaiHat.DataSource = bus_song.GetSongNotExistInAlbum(album_id);
            ddl_BaiHat.DataTextField = "Name";
            ddl_BaiHat.DataValueField = "ID";
            ddl_BaiHat.DataBind();
        }

        protected void btn_them_Click(object sender, EventArgs e)
        {
            if(ddl_BaiHat.Items.Count != 0)
            {
                int album_id = Convert.ToInt16(Session["ID_Album"]);
                int song_id = Convert.ToInt16(ddl_BaiHat.SelectedValue);
                bus_song_album.InsertSongToAlbum(song_id, album_id);
                HienThi();
            }
        }
    }
}