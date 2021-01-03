using System.Data;
using Web_Music.DAL;

namespace Web_Music.BUS
{
    public class BUS_Favorite_Song
    {
        Data data = new Data();
        public void InsertFavoriteSong(int account_id, int song_id)
        {
            string sql = @"insert into Favorite_Song values(" + account_id + "," + song_id + ")";
            data.ExcuteNonQuerry(sql);
        }

        public bool CheckSongFavoriteInAccount(int account_id, int song_id)
        {
            string sql = @"select * from Favorite_Song where Account_ID = " + account_id + "and Song_ID = " + song_id;
            DataTable dt = data.GetTable(sql);
            if (dt.Rows.Count == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public DataTable GetFavoriteSongByAccountId(int account_id)
        {
            string sql = @"select * from Favorite_Song inner join Song on Song_ID = Song.ID where Account_ID = " + account_id;
            return data.GetTable(sql);
        }

        public void DeleteByAccountIdAndSongId(int account_id, int song_id)
        {
            string sql = @"delete from Favorite_Song where Account_ID = "+account_id+"and Song_ID = "+song_id;
            data.ExcuteNonQuerry(sql);
        }
    }
}