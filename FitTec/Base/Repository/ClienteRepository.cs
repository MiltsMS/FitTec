using FitTec.Base.Models;
using SQLite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FitTec.Base.Context
{
    public static class Context
    {
        public const string DatabaseFilename = "FitTecSQLite.db3";

        public const SQLite.SQLiteOpenFlags Flags =
            // open the database in read/write mode
            SQLite.SQLiteOpenFlags.ReadWrite |
            // create the database if it doesn't exist
            SQLite.SQLiteOpenFlags.Create |
            // enable multi-threaded database access
            SQLite.SQLiteOpenFlags.SharedCache;

        public static string DatabasePath =>
            Path.Combine(FileSystem.AppDataDirectory, DatabaseFilename);
    }

    public class ClienteRepository
    {
        SQLiteAsyncConnection Database;

        async Task Init()
        {
            if (Database is not null)
                return;

            Database = new SQLiteAsyncConnection(Context.DatabasePath, Context.Flags);
            await Database.CreateTableAsync<Cliente>();
        }

        public async Task<List<Cliente>> GetItemsAsync()
        {
            await Init();
            return await Database.Table<Cliente>().ToListAsync();
        }

        public async Task<Cliente> GetItemAsync(Guid id)
        {
            await Init();
            return await Database.Table<Cliente>().Where(i => i.Id == id).FirstOrDefaultAsync();
        }

        public async Task<int> InsertItemAsync(Cliente item)
        {
            await Init();
            return await Database.InsertAsync(item);
        }

        public async Task<int> UpdateItemAsync(Cliente item)
        {
            await Init();
            return await Database.UpdateAsync(item);
        }

        public async Task<int> DeleteItemAsync(Cliente item)
        {
            await Init();
            return await Database.DeleteAsync(item);
        }
        
        public async Task<List<Cliente>> GetListByFilterAsync(string item)
        {
            await Init();
            return await Database.Table<Cliente>().Where(c => c.Name.ToLower().Contains(item) || c.LastName.ToLower().Contains(item)).ToListAsync();
        }
    }
}
