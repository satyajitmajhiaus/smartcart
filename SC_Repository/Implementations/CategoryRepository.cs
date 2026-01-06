using Dapper;
using SC_Repository.DbContext;
using SC_Repository.Interfaces;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace SC_Repository.Implementations
{
    public class CategoryRepository : ICategoryRepository
    {
        private readonly DapperContext _context;

        public CategoryRepository(DapperContext context)
        {
            _context = context;
        }

        public async Task<Category?> GetByIdAsync(int id)
        {
            var query = "SELECT * FROM Categories WHERE CategoryId = @Id";
            using var connection = _context.CreateConnection();
            return await connection.QuerySingleOrDefaultAsync<Category>(query, new { Id = id });
        }

        public async Task<IEnumerable<Category>> GetAllAsync()
        {
            var query = "SELECT * FROM Categories";
            using var connection = _context.CreateConnection();
            return await connection.QueryAsync<Category>(query);
        }

        public async Task<int> AddAsync(Category category)
        {
            var query = @"INSERT INTO Categories (Name, Description, ParentCategoryId, CreatedAt, ModifiedAt, IsActive)
                          VALUES (@Name, @Description, @ParentCategoryId, @CreatedAt, @ModifiedAt, @IsActive);
                          SELECT CAST(SCOPE_IDENTITY() as int);";

            using var connection = _context.CreateConnection();
            return await connection.ExecuteScalarAsync<int>(query, category);
        }

        public async Task<bool> UpdateAsync(Category category)
        {
            var query = @"UPDATE Categories SET Name = @Name, Description = @Description, ParentCategoryId = @ParentCategoryId,
                          ModifiedAt = @ModifiedAt, IsActive = @IsActive WHERE CategoryId = @CategoryId";

            using var connection = _context.CreateConnection();
            var rows = await connection.ExecuteAsync(query, category);
            return rows > 0;
        }

        public async Task<bool> DeleteAsync(int id)
        {
            var query = "DELETE FROM Categories WHERE CategoryId = @Id";
            using var connection = _context.CreateConnection();
            var rows = await connection.ExecuteAsync(query, new { Id = id });
            return rows > 0;
        }
    }
}
