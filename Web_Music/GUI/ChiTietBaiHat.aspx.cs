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
    public partial class ChiTietBaiHat : System.Web.UI.Page
    {
        BUS_Song bus_song = new BUS_Song();
        BUS_Favorite_Song bus_favorite_song = new BUS_Favorite_Song();
        public DataTable dt = new DataTable();
        public DataTable dt1 = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            int song_id = int.Parse(Request.QueryString["Song_ID"]);
            //Lấy chi tiết bài hát theo song_id gán vào dt
            dt = bus_song.GetChiTietBaiHatById(song_id);

            //Lấy random các bài hát gán vào dt1
            dt1 = bus_song.GetAllChiTietBaiHatRandom();

        }

        protected void AddToFavorite_ServerClick(object sender, EventArgs e)
        {
            int song_id = int.Parse(Request.QueryString["Song_ID"]);
            if(Convert.ToInt16(Session["login_id"]) == 0)
            {
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "Messagebox", "alert('Bạn phải đăng nhập để sử dụng tính năng này');", true);
                AddToFavorite_msg.Text = "Bạn phải đăng nhập";
                MinusToFavorite_msg.Text = "";
            }
            else
            {
                int login_id = Convert.ToInt16(Session["login_id"]);
                if (bus_favorite_song.CheckSongFavoriteInAccount(login_id, song_id) == false)
                {
                    bus_favorite_song.InsertFavoriteSong(login_id, song_id);
                    AddToFavorite_msg.Text = "Thêm thành công vào DS yêu thích";
                    MinusToFavorite_msg.Text = "";
                }
                else
                {
                    AddToFavorite_msg.Text = "Bài hát đã tồn tại trong DS yêu thích";
                    MinusToFavorite_msg.Text = "";
                }
                
            }
        }

        protected void MinusToFavorite_ServerClick(object sender, EventArgs e)
        {
            int song_id = int.Parse(Request.QueryString["Song_ID"]);
            if (Convert.ToInt16(Session["login_id"]) == 0)
            {
                MinusToFavorite_msg.Text = "Bạn phải đăng nhập";
                AddToFavorite_msg.Text = "";
            }
            else
            {
                int login_id = Convert.ToInt16(Session["login_id"]);
                if(bus_favorite_song.CheckSongFavoriteInAccount(login_id,song_id) == true)
                {
                    bus_favorite_song.DeleteByAccountIdAndSongId(login_id, song_id);
                    MinusToFavorite_msg.Text = "Xóa thành công khỏi DS yêu thích";
                    AddToFavorite_msg.Text = "";
                }
                else
                {
                    MinusToFavorite_msg.Text = "Bài hát không tồn tại trong DS yêu thích";
                    AddToFavorite_msg.Text = "";
                }
            }
        }
    }
}