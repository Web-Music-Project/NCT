using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_Music.BUS;
using System.Data;

namespace Web_Music.GUI.Admin
{
    public partial class SuaCaSy : System.Web.UI.Page
    {
        BUS_Singer bus = new BUS_Singer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                HienThi();
            }    
        }

       public void HienThi()
        {
            int id = Convert.ToInt16(Session["idcs"]);
            DataTable dt = new DataTable();
            dt = bus.GetSingerById(id);
            txtname.Text = dt.Rows[0]["Name"].ToString();
            txtdate.Text = dt.Rows[0]["DateOfBirth"].ToString();
            gioitinh.SelectedValue = dt.Rows[0]["Sex"].ToString();
            txtquoctich.Text = dt.Rows[0]["Nation"].ToString();
            avatar_image.ImageUrl = "../../../Image/Cover_vuong/" + dt.Rows[0]["Avatar"].ToString();
            txtgioithieu.Text = dt.Rows[0]["Story"].ToString();
        }
        protected void btnsua_Click(object sender, EventArgs e)
        {
            if (upload_avatar.HasFile)
            {
                string filepath = MapPath("../../Image/Cover_vuong/");
                upload_avatar.SaveAs(filepath + upload_avatar.FileName);
            }
            int id = Convert.ToInt16(Session["idcs"]);
            DataTable dt = new DataTable();
            dt = bus.GetSingerById(id);
            string avatar_source = dt.Rows[0]["Avatar"].ToString();
            if(upload_avatar.FileName != string.Empty)
            {
                avatar_source = upload_avatar.FileName;
            }
            bus.UpdateSinger(txtname.Text, txtdate.Text, gioitinh.SelectedValue, txtquoctich.Text,avatar_source, txtgioithieu.Text.Replace("'","''"), id);
            Response.Redirect("QuanLyCaSy.aspx");
        }
    }
}