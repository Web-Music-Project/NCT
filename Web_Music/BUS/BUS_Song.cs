using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Web_Music.DAL;

namespace Web_Music.BUS
{
    public class BUS_Song
    {
        Data data = new Data();
        public DataTable GetChiTietBaiHatById(int id)
        {
            string sql = @"select * from Song, Singer where Song.Singer_ID = Singer.ID and Song.ID = '" + id + "'";
            return data.GetTable(sql);
        }

        public DataTable GetAllChiTietBaiHat()
        {
            string sql = @"select * from Song left join Singer on Song.Singer_ID = Singer.ID left join Category on Song.Category_ID = Category.ID";
            return data.GetTable(sql);
        }

        public void AddSong(string name, string lyric, string thumbnail, string source, int singer_id, int category_id)
        {
            string sql = @"insert into Song values(N'"+name+"',N'"+lyric+"','"+thumbnail+"','"
                +source+"','"+500+"','"+singer_id+"','"+category_id+"')";

            data.ExcuteNonQuerry(sql);
        }

        public DataTable GetAllSong()
        {
            string sql = @"select * from Song";
            return data.GetTable(sql);
        }

        public void DeleteSong(int id)
        {
            string sql = @"delete from Song where ID = '"+id+"'";
            data.ExcuteNonQuerry(sql);
        }

        public DataTable FindSongByName(string name)
        {
            string sql = @"select * from Song left join Singer on Song.Singer_ID = Singer.ID left join Category on Song.Category_ID = Category.ID where Song.Name like '%" + name + "%'";
            return data.GetTable(sql);
        }

        public void UpdateSong(int id_song,string name, string lyric, string thumbnail, string source,int views, int singer_id, int category_id)
        {
            string sql = @"update Song set Name=N'"+name+"',Lyric=N'"+lyric+"',Thumbnail='"+thumbnail+"',Source='"+source+"',Views="+views+",Singer_ID="+singer_id+",Category_ID="+category_id+" where ID="+id_song;
            data.ExcuteNonQuerry(sql);
        }

        public DataTable GetSongNotExistInAlbum(int album_id)
        {
            string sql = @"select * from Song inner join (select ID from Song except select Song_ID from Song_Album where Album_ID = " + album_id+") as ans on Song.ID = ans.ID" ;
            return data.GetTable(sql);
        }
    }
}