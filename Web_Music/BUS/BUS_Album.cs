using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Web_Music.DAL;
using System.Data;

namespace Web_Music.BUS
{
    public class BUS_Album
    {
        Data data = new Data();
        public DataTable GetAllAlbum()
        {
            string sql = "select * from Album";
            return data.GetTable(sql);
        }
        public DataTable GetAlbumById(int id)
        {
            string sql = "select *from Album where id = '" + id + "'";
            return data.GetTable(sql);
        }

        public DataTable GetChiTietAlbumById(int id)
        {
            string sql = @"select * from Song_Album left join Song on Song_Album.Song_ID= Song.ID where Song_Album.Album_ID = "+id;
            return data.GetTable(sql);
        }
        public void DeleteAlbum(int id)
        {
            string sql = "delete from Album where id = '" + id + "'";
            data.ExcuteNonQuerry(sql);

        }
        public void UpdateAlbum(string name,string thumbnail, int id)
        {
            string sql = "update Album set Name = N'" + name + "' ,Thumbnail = '"+ thumbnail + "' where ID = '" + id + "' ";
            data.ExcuteNonQuerry(sql);
        }

        public DataTable FindAlbumByName(string name)
        {
            string sql = @"select * from Album where Name like '%"+name+"%'";
            return data.GetTable(sql);
        }

        public void InsertAlbum(string name,string thumbnail)
        {
            string sql = @"insert into album values(N'"+name+"','"+thumbnail+"')";
            data.ExcuteNonQuerry(sql);
        }
    }
}