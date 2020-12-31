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
    public partial class ChiTietCaSi : System.Web.UI.Page
    {
        BUS_Singer bus_singer = new BUS_Singer();
        public DataTable dt1 = new DataTable();
        public DataTable dt2 = new DataTable();
        public DataTable dt3 = new DataTable();
        public DataTable dt4 = new DataTable();
        public DataTable dt5 = new DataTable();
        public DataTable dt6 = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Lấy Singer_ID trên url
            int singer_id = Convert.ToInt16(Request.QueryString["Singer_ID"]);

            //Lấy thông tin singer gán vào dt1
            dt1 = bus_singer.GetSingerById(singer_id);

            //Lấy các bài hát theo Singer_ID gán vào dt2
            dt2 = bus_singer.GetSongBySingerId(singer_id);
        }
    }
}