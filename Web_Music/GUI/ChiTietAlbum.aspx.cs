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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HienThi();
            }
        }

        private void HienThi()
        {
            int album_id = Convert.ToInt16(Request.QueryString["Album_ID"]);
            //Lấy các bài hát theo id gắn vào dt1
            dt1 = bus_multitable.GetDataByAlbumId(album_id);
            //Lấy thông tin album theo id
            dt2 = bus_album.GetAlbumById(album_id);
        }
    }
}