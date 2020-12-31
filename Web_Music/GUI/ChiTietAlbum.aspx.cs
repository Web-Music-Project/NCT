using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Web_Music.BUS;

namespace Web_Music.GUI
{
    public partial class ChiTietAlbum : System.Web.UI.Page
    {
        BUS_Multitable bus_multitable = new BUS_Multitable();
        BUS_Album bus_album = new BUS_Album();
        public DataTable dt1 = new DataTable();
        public DataTable dt2 = new DataTable();
        public DataTable dt3 = new DataTable();
        public DataTable dt4 = new DataTable();
        public DataTable dt5 = new DataTable();
        public DataTable dt6 = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            int album_id = Convert.ToInt16(Request.QueryString["Album_ID"]);
            //Lấy các bài hát theo Album_ID gắn vào dt1
            dt1 = bus_multitable.GetDataByAlbumId(album_id);
            //Lấy thông tin album theo Album_ID trên url
            dt2 = bus_album.GetAlbumById(album_id);

            //Lấy các bài hát trong album Việt Nam Top 10 gán vào dt3
            dt3 = bus_multitable.GetDataByAlbumId(23);

            //Lấy các bài hát trong album Âu Mỹ Top 10 gán vào dt4
            dt4 = bus_multitable.GetDataByAlbumId(24);

            //Lấy các bài hát trong album Top 5 gán vào dt5
            dt5 = bus_multitable.GetDataByAlbumId(25);

            //Lấy các bài hát trong album Hàn Quốc Top 10 gán vào dt6
            dt6 = bus_multitable.GetDataByAlbumId(27);
        }
    }
}