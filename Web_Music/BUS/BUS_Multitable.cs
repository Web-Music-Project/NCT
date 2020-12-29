using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Web_Music.DAL;

namespace Web_Music.BUS
{
    public class BUS_Multitable
    {
        Data data = new Data();
        public DataTable GetDataByAlbumName(string album)
        {
            string sql = @"select * from Song, Song_Album, Album
                            where Song.ID = Song_Album.Song_ID and Song_Album.Album_ID = Album.ID and Album.Name = '" + album + "'";
            return data.GetTable(sql);
        }

        public DataTable GetDataByAlbumId(int album_id)
        {
            string sql = @"select * from Song, Song_Album, Album,Singer
                            where Song.ID = Song_Album.Song_ID and Song_Album.Album_ID = Album.ID and Song.Singer_ID = Singer.ID and Album.ID = "+album_id;
            return data.GetTable(sql);
        }
    }
}