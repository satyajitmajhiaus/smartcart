using Dapper;
using SC_Repository.DbContext;
using SC_Repository.Entities;
using SC_Repository.Interfaces;
using System;
using System.Threading.Tasks;

namespace SC_Repository.Implementations
{
    public class LogRepository : ILogRepository
    {
        private readonly DapperContext _context;

        public LogRepository(DapperContext context)
        {
            _context = context;
        }

        public async Task<int> AddLog(ErrorLog log)
        {
            try
            {
                var query = @"INSERT INTO [dbo].[ErrorLogs]
                               ([LogDate]
                               ,[ErrorCode]
                               ,[ErrorMessage])
                         VALUES
                               (@LogDate
                               ,@ErrorCode
                               ,@ErrorMessage);
                          SELECT CAST(SCOPE_IDENTITY() as int);";
                using var connection = _context.CreateConnection();
                return await connection.ExecuteScalarAsync<int>(query, log);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return -1;
            }
            
        }
    }
}