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
    public partial class ChiTietCategory : System.Web.UI.Page
    {
        BUS_Category bus_category = new BUS_Category();
        BUS_Multitable bus_multitable = new BUS_Multitable();
        BUS_Song bus_song = new BUS_Song();
        public DataTable dt1 = new DataTable();
        public DataTable dt2 = new DataTable();
        public DataTable dt3 = new DataTable();
        public DataTable dt4 = new DataTable();
        public DataTable dt5 = new DataTable();
        public DataTable dt6 = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            int category_id = Convert.ToInt16(Request.QueryString["Category_ID"]);
            //Lấy tên category theo category_id gán vào dt1
            dt1 = bus_category.GetCategoryByID(category_id);

            //Lấy các bài hát theo category_id gán vào dt2
            dt2 = bus_song.GetSongByCategoryId(category_id);

            //Lấy các bài hát trong album Việt Nam Top 10 gán vào dt3
            dt3 = bus_multitable.GetDataByAlbumId(23);

            //Lấy các bài hát trong album Âu Mỹ Top 10 gán vào dt4
            dt4 = bus_multitable.GetDataByAlbumId(24);

            //Lấy các bài hát trong album Hàn Quốc Top 10 gán vào dt6
            dt6 = bus_multitable.GetDataByAlbumId(27);
        }
    }
}