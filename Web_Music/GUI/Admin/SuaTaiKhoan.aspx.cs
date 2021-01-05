﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_Music.BUS;
using System.Data;

namespace Web_Music.GUI.Admin
{
    public partial class SuaTaiKhoan : System.Web.UI.Page
    {
        BUS_Account bus = new BUS_Account();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                HienThi();
            }
          
        }
        public void HienThi()
        {
            int id = Convert.ToInt16(Session["id"]);
            DataTable dt = new DataTable();
            dt = bus.GetAccountById(id);
            txttaikhoan.Text = dt.Rows[0]["Username"].ToString();
            txtmatkhau.Text = dt.Rows[0]["Password"].ToString();
            ddl_role.SelectedValue = dt.Rows[0]["Role"].ToString();
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            string username = txttaikhoan.Text;
            string pass = txtmatkhau.Text;
            string role = ddl_role.SelectedValue;
            int id = Convert.ToInt16(Session["id"]);
            bus.UpDateAccount(username,pass,role,id);
            Response.Redirect("QuanLyTaiKhoan.aspx");
        }
    }
}