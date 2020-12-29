using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_Music.BUS;

namespace Web_Music.GUI.Admin
{
    public partial class ThemCaSy : System.Web.UI.Page
    {
        BUS_Singer bus = new BUS_Singer();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click1(object sender, EventArgs e)
        {
            if (upload_avatar.HasFile)
            {
                string filepath = MapPath("../../Image/Cover_vuong/");
                upload_avatar.SaveAs(filepath + upload_avatar.FileName);
            }
            bus.InsertSinger(txtname.Text, txtdate.Text, gioitinh.SelectedValue, txtquoctich.Text,upload_avatar.FileName, txtgioithieu.Text.Replace("'","''"));
            DataBind();
        }
    }
}