using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_Music.BUS;

namespace Web_Music.GUI.Admin
{
    public partial class ThemAlbum : System.Web.UI.Page
    {
        BUS_Album bus_album = new BUS_Album();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            if (upload_thumbnail.HasFile)
            {
                string filepath = MapPath("../../Image/Cover_vuong/");
                upload_thumbnail.SaveAs(filepath + upload_thumbnail.FileName);
            }
            bus_album.InsertAlbum(txtNameAlbum.Text, upload_thumbnail.FileName);
        }
    }
}