using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SC_Repository.Interfaces;

namespace SC_API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductController : ControllerBase
    {
        private readonly IProductRepository _productRepository;
        public ProductController(IProductRepository productRepository)
        {
            _productRepository = productRepository;
        }

        [HttpGet("GetAllProducts")]
        public Task<IEnumerable<Product>> GetAllProducts()
        {
            Task<IEnumerable<Product>> actionResult = _productRepository.GetAllAsync();
            return actionResult;
        }

        [HttpGet("GetPopolarProducts")]
        public Task<IEnumerable<Product>> GetPopolarProducts()
        {
            Task<IEnumerable<Product>> actionResult = _productRepository.GetPopolarProductsAsync();
            return actionResult;
        }

        [HttpGet("GetProductsByCategoryID")]
        public Task<IEnumerable<Product>> GetProductsByCategoryID(int categoryId)
        {
            Task<IEnumerable<Product>> actionResult = _productRepository.GetProductsByCategoryIDAsync(categoryId);
            return actionResult;
        }

        [HttpGet("GetProductById")]
        public Task<Product?> GetProductById(int pId)
        {
            Task<Product?> actionResult = _productRepository.GetByIdAsync(pId);
            return actionResult;
        }

        [HttpPost("AddProduct")]
        public Task<int> AddProduct(Product product)
        {
            Task<int> actionResult = _productRepository.AddAsync(product);
            return actionResult;
        }

        [HttpPost("UpdateProduct")]
        public Task<bool> UpdateProduct(Product product)
        {
            Task<bool> actionResult = _productRepository.UpdateAsync(product);
            return actionResult;
        }

        [HttpDelete]
        public Task<bool> DeleteProduct(int id)
        {
            Task<bool> actionResult = _productRepository.DeleteAsync(id);
            return actionResult;
        }
    }
}
