using Dapper;
using SC_Repository.DbContext;
using SC_Repository.Interfaces;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace SC_Repository.Implementations
{
    public class CurrencyRepository : ICurrencyRepository
    {
        private readonly DapperContext _context;

        public CurrencyRepository(DapperContext context)
        {
            _context = context;
        }

        public async Task<Currency?> GetByCodeAsync(string code)
        {
            var query = "SELECT * FROM Currencies WHERE CurrencyCode = @Code";
            using var connection = _context.CreateConnection();
            return await connection.QuerySingleOrDefaultAsync<Currency>(query, new { Code = code });
        }

        public async Task<IEnumerable<Currency>> GetAllAsync()
        {
            var query = "SELECT * FROM Currencies";
            using var connection = _context.CreateConnection();
            return await connection.QueryAsync<Currency>(query);
        }

        public async Task<int> AddAsync(Currency currency)
        {
            var query = @"INSERT INTO Currencies (CurrencyCode, Name, Symbol, IsActive, CreatedAt, ModifiedAt)
                          VALUES (@CurrencyCode, @Name, @Symbol, @IsActive, @CreatedAt, @ModifiedAt);
                          SELECT CAST(SCOPE_IDENTITY() as int);";

            using var connection = _context.CreateConnection();
            return await connection.ExecuteScalarAsync<int>(query, currency);
        }

        public async Task<bool> UpdateAsync(Currency currency)
        {
            var query = @"UPDATE Currencies SET Name = @Name, Symbol = @Symbol, IsActive = @IsActive,
                          ModifiedAt = @ModifiedAt WHERE CurrencyCode = @CurrencyCode";

            using var connection = _context.CreateConnection();
            var rows = await connection.ExecuteAsync(query, currency);
            return rows > 0;
        }

        public async Task<bool> DeleteAsync(string code)
        {
            var query = "DELETE FROM Currencies WHERE CurrencyCode = @Code";
            using var connection = _context.CreateConnection();
            var rows = await connection.ExecuteAsync(query, new { Code = code });
            return rows > 0;
        }
    }
}
