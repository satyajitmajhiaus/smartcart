using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SC_Repository.Interfaces
{
    public interface IProductRepository
    {
        Task<IEnumerable<Product>> GetAllAsync();
        Task<IEnumerable<Product>> GetPopolarProductsAsync();
        Task<IEnumerable<Product>> SearchProductsAsync(string query);
        
        Task<IEnumerable<Product>> GetProductsByCategoryIDAsync(int categoryId);
        
        Task<Product?> GetByIdAsync(int id);
        Task<IEnumerable<Product>> SearchAsync(string keyword, int categoryId, int page, int pageSize);
        Task<int> AddAsync(Product product);
        Task<bool> UpdateAsync(Product product);
        Task<bool> DeleteAsync(int id);
    }

}
