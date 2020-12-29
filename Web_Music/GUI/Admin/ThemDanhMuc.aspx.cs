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
    public partial class ThemDanhMuc : System.Web.UI.Page
    {
        BUS_Category bus_category = new BUS_Category();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            bus_category.InsertCategory(txtalbum.Text);
        }
    }
}