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
    public partial class SuaDanhMuc : System.Web.UI.Page
    {
        BUS_Category bus_category = new BUS_Category();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HienThi();
            }
        }

        private void HienThi()
        {
            int id = Convert.ToInt16(Session["Song_ID"]);
            DataTable dt = bus_category.GetCategoryByID(id);
            txtCategory.Text = dt.Rows[0]["Name"].ToString();
        }

        protected void btnsua_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt16(Session["Song_ID"]);
            bus_category.UpdateCategory(txtCategory.Text, id);
        }
    }
}