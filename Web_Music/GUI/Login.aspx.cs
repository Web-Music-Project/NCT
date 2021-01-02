using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_Music.BUS;

namespace Web_Music.GUI
{
    public partial class Login : System.Web.UI.Page
    {
        BUS_Account bus_TaiKhoan = new BUS_Account();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void dang_nhap_Click(object sender, EventArgs e)
        {
            string username = txtusername.Text;
            string password = txtpass.Text;
            Session["login_id"] = 0;
            Session["login_username"] = username;
            Session["login_role"] = "user";
            if (bus_TaiKhoan.GetRole(username, password).Trim() == "admin")
            {
                Session["login_id"] = bus_TaiKhoan.GetIdByUsername(username);
                Session["login_role"] = "admin";
                Response.Redirect("Admin/QuanLyTaiKhoan.aspx");
            }
            else if (bus_TaiKhoan.GetRole(username, password) == "user")
            {
                Session["login_id"] = bus_TaiKhoan.GetIdByUsername(username);
                Response.Redirect("Home.aspx");
            }
            else if (bus_TaiKhoan.GetRole(username, password) == "none")
            {
                msg.Text = "Tên đăng nhập hoặc mật khẩu sai!";
            }
        }
    }
}