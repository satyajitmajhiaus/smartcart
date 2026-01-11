using Dapper;
using SC_Repository.DbContext;
using SC_Repository.Entities;
using SC_Repository.Interfaces;
using System;
using System.Threading.Tasks;

namespace SC_Repository.Implementations
{
    public class UserRepository : IUserRepository
    {
        private readonly DapperContext _context;

        public UserRepository(DapperContext context)
        {
            _context = context;
        }

        public async Task<bool> ValidateUserAsync(User user)
        {
            //var query = @"SELECT COUNT(1) FROM Users 
             //             WHERE username = @UserName AND PasswordHash = HASHBYTES('SHA2_256', @Password) AND Role = @Role AND IsActive = 1";
            var query = @"SELECT COUNT(1) FROM Users 
                          WHERE username = '"+user.Username+ "' AND PasswordHash = HASHBYTES('SHA2_256', '"+user.Password+"') AND Role = '"+user.Role+"' AND IsActive = 1";
            using var connection = _context.CreateConnection();
            var result = await connection.ExecuteScalarAsync<int>(query);
            return result > 0;
        }
    }
}