using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Web_Music.DAL;

namespace Web_Music.BUS
{
    public class BUS_Song_Album
    {
        Data data = new Data();
        public void DeleteSongInAlbumById(int id)
        {
            string sql = @"delete from Song_Album where ID = " + id;
            data.ExcuteNonQuerry(sql);
        }

        public void InsertSongToAlbum(int song_id, int album_id)
        {
            string sql = @"insert into Song_Album values("+song_id+","+album_id+")";
            data.ExcuteNonQuerry(sql);
        }

        public bool CheckSongExistInAlbum(int song_id, int album_id)
        {
            string sql = @"select * from Song_Album where Song_ID = "+song_id+" and Album_ID = "+album_id;
            DataTable dt = data.GetTable(sql);
            if(dt.Rows.Count == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}