using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Web_Music.DAL;
using System.Data;

namespace Web_Music.BUS
{
    public class BUS_Category
    {
        Data data = new Data();
        public DataTable GetAllCategory()
        {
            string sql = @"select * from Category";
            return data.GetTable(sql);
        }
        public DataTable GetCategoryByID(int id)
        {
            string sql = "select *from Category where id = '" + id + "'";
            return data.GetTable(sql);
        }

        public void InsertCategory(string name)
        {
            string sql = @"insert into Category values(N'"+name+"')";
            data.ExcuteNonQuerry(sql);
        }
        public void DeleteCategory(int id)
        {
            string sql = "delete from Category where id = '" + id + "'";
            data.ExcuteNonQuerry(sql);

        }
        public void UpdateCategory(string name, int id)
        {
            string sql = "update Category set Name = N'" +name+ "' where ID = '" + id + "' ";
            data.ExcuteNonQuerry(sql);
        }

        public DataTable FindCategoryByName(string name)
        {
            string sql = @"select * from Category where Name like '%"+name+"%'";
            return data.GetTable(sql);
        }
    }
}