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
            return  actionResult;
        }

        [HttpGet]
        public Task<Product?> GetProductById(int pId)
        {
            Task<Product?> actionResult = _productRepository.GetByIdAsync(pId);
            return actionResult;
        }
    }
}
