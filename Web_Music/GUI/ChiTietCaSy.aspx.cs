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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HienThi();
            }
        }

        public void HienThi()
        {
            int singer_id = Convert.ToInt16(Request.QueryString["Singer_ID"]);
            dt1 = bus_singer.GetSingerById(singer_id);
        }
    }
}