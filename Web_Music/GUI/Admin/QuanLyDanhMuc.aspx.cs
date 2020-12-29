using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_Music.BUS;

namespace Web_Music.GUI.Admin
{
    public partial class QuanLyDanhMuc : System.Web.UI.Page
    {
        BUS_Category bus_Category = new BUS_Category();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                HienThi();
            }    
        }
        private  void HienThi()
        {
            dgvdanhmuc.DataSource = bus_Category.GetAllCategory();
            dgvdanhmuc.DataBind();
        }

        protected void btnSua_Command(object sender, CommandEventArgs e)
        {
          if(e.CommandName == "sua")
            {
                int id = Convert.ToInt16(e.CommandArgument);
                Session["Song_ID"] = id;
                Response.Redirect("SuaDanhMuc.aspx");
            }
        }

        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "xoa")
            {
                int id = Convert.ToInt16(e.CommandArgument);
                bus_Category.DeleteCategory(id);
                HienThi();
            }
        }

        protected void dgvdanhmuc_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            dgvdanhmuc.DataSource = bus_Category.GetAllCategory();
            dgvdanhmuc.PageIndex = e.NewPageIndex;
            DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            dgvdanhmuc.DataSource = bus_Category.FindCategoryByName(txtsearch.Text);
            dgvdanhmuc.DataBind();
        }
    }
}