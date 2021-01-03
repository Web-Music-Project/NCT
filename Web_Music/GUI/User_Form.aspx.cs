using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_Music.BUS;

namespace Web_Music.GUI
{
    public partial class User_Form : System.Web.UI.Page
    {
        BUS_Account bus_account = new BUS_Account();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtUsername.Text = Session["login_username"].ToString();
            }
            
        }

        protected void SuaMatKhau_Click(object sender, EventArgs e)
        {
            int account_id = Convert.ToInt16(Session["login_id"]);
            string old_pass = bus_account.GetAccountById(account_id).Rows[0]["Password"].ToString();
            if(old_pass == txtOldPass.Text)
            {
                msg.Text = "";
                if(txtNewPass.Text == txtConfirmNewPass.Text)
                {
                    bus_account.UpDateAccount(txtUsername.Text, txtNewPass.Text,"user", account_id);
                    msg.Text = "Sửa thành công";
                }
                else
                {
                    msg.Text = "Mật khẩu mới không khớp!";
                }
            }
            else
            {
                msg.Text = "Mật khảu cũ không chính xác!";
            }
        }
    }
}