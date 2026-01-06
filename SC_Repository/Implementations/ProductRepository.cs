using Dapper;
using SC_Repository.DbContext;
using SC_Repository.Interfaces;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace SC_Repository.Implementations
{
    public class ProductRepository : IProductRepository
    {
        private readonly DapperContext _context;

        public ProductRepository(DapperContext context)
        {
            _context = context;
        }

        public async Task<IEnumerable<Product>> GetAllAsync()
        {
            var query = "SELECT * FROM Products";
            using var connection = _context.CreateConnection();
            return await connection.QueryAsync<Product>(query);
        }

        public async Task<IEnumerable<Product>> GetProductsByCategoryIDAsync(int categoryId)
        {
            var query = "select * from Products where  CategoryId = " + categoryId + "or CategoryId in (select CategoryId from  Categories where ParentCategoryId = " + categoryId + ")";
            using var connection = _context.CreateConnection();
            return await connection.QueryAsync<Product>(query);
        }


        public async Task<Product?> GetByIdAsync(int id)
        {
            var query = "SELECT * FROM Products WHERE ProductId = @Id";
            using var connection = _context.CreateConnection();
            return await connection.QuerySingleOrDefaultAsync<Product>(query, new { Id = id });
        }

        public async Task<IEnumerable<Product>> SearchAsync(string keyword, int categoryId, int page, int pageSize)
        {
            var query = @"SELECT * FROM Products
                          WHERE (@Keyword IS NULL OR Name LIKE '%' + @Keyword + '%' OR Description LIKE '%' + @Keyword + '%')
                          AND (@CategoryId = 0 OR CategoryId = @CategoryId)
                          ORDER BY PopularityScore DESC, Rating DESC
                          OFFSET @Offset ROWS FETCH NEXT @PageSize ROWS ONLY";

            using var connection = _context.CreateConnection();
            return await connection.QueryAsync<Product>(query, new
            {
                Keyword = keyword,
                CategoryId = categoryId,
                Offset = (page - 1) * pageSize,
                PageSize = pageSize
            });
        }

        public async Task<int> AddAsync(Product product)
        {
            var query = @"INSERT INTO Products (Name, Description, CategoryId, CurrencyCode, Price, Tags, ImageUrl,
                          Stock, CreatedAt, ModifiedAt, IsInStock, PopularityScore, Rating, ReviewCount, SearchVector)
                          VALUES (@Name, @Description, @CategoryId, @CurrencyCode, @Price, @Tags, @ImageUrl,
                          @Stock, @CreatedAt, @ModifiedAt, @IsInStock, @PopularityScore, @Rating, @ReviewCount, @SearchVector);
                          SELECT CAST(SCOPE_IDENTITY() as int);";

            using var connection = _context.CreateConnection();
            return await connection.ExecuteScalarAsync<int>(query, product);
        }

        public async Task<bool> UpdateAsync(Product product)
        {
            var query = @"UPDATE Products SET Name = @Name, Description = @Description, CategoryId = @CategoryId,
                          CurrencyCode = @CurrencyCode, Price = @Price, Tags = @Tags, ImageUrl = @ImageUrl,
                          Stock = @Stock, ModifiedAt = @ModifiedAt, IsInStock = @IsInStock, PopularityScore = @PopularityScore,
                          Rating = @Rating, ReviewCount = @ReviewCount, SearchVector = @SearchVector
                          WHERE ProductId = @ProductId";

            using var connection = _context.CreateConnection();
            var rows = await connection.ExecuteAsync(query, product);
            return rows > 0;
        }

        public async Task<bool> DeleteAsync(int id)
        {
            var query = "DELETE FROM Products WHERE ProductId = @Id";
            using var connection = _context.CreateConnection();
            var rows = await connection.ExecuteAsync(query, new { Id = id });
            return rows > 0;
        }
    }
}
