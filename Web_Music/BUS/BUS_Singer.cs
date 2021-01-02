using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Web_Music.DAL;
using System.Data;

namespace Web_Music.BUS
{
    public class BUS_Singer
    {
        Data data = new Data();
        public void InsertSinger(string name, string ngaysinh, string gioitinh,string quoctich,string avatar,string gioithieu)
        {
            if (!CheckExistName(name))
            {
                string sql = @"insert into Singer values(N'" + name + "','" + ngaysinh + "',N'" + gioitinh + "',N'"+quoctich+"','"+avatar+"',N'"+gioithieu+"')";
                data.ExcuteNonQuerry(sql);
            }

        }
        public bool CheckExistName(string name)
        {
            string sql = @"select * from Singer where name ='" + name + "'";
            DataTable dt = new DataTable();
            dt = data.GetTable(sql);
            if (dt.Rows.Count == 0)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
        public DataTable GetAllSinger()
        {
            String sql = "select * from Singer";
            return data.GetTable(sql);
        }

        public DataTable GetSingerById(int id)
        {
            String sql = "select * from Singer where ID = "+id;
            return data.GetTable(sql);
        }
        public void DeleteSinger(int id)
        {
            string sql = "delete from Singer where id = '" + id + "'";
            data.ExcuteNonQuerry(sql);

        }
        public void UpdateSinger(string name, string ngaysinh, string gioitinh, string quoctich,string avatar, string gioithieu,int id)
        {
            string sql = "update Singer set Name = N'" + name + "', DateOfBirth = '" + ngaysinh + "', Sex =N'" + gioitinh + "', Nation = N'"+quoctich+"',Avatar = '"+avatar+"', Story = N'"+gioithieu+"' where ID = '" + id + "' ";
            data.ExcuteNonQuerry(sql);

        }

        public DataTable FindSingerByName(string name)
        {
            string sql = @"select * from Singer where Name like N'%"+name+"%'";
            return data.GetTable(sql);
        }

        public DataTable GetSongBySingerId(int singer_id)
        {
            string sql = @"select * from Song,Singer where Song.Singer_ID = Singer.ID and Song.Singer_ID = "+singer_id;
            return data.GetTable(sql);
        }

    } 
}