using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Http.HttpResults;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using SC_Repository.Entities;
using SC_Repository.Interfaces;
using StackExchange.Redis;
using System.Text.Json;

namespace SC_API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductController : ControllerBase
    {
        private readonly IProductRepository _productRepository;
        private readonly IDatabase _redisDb;


        public ProductController(IConnectionMultiplexer redis, IProductRepository productRepository)
        {
            _redisDb = redis.GetDatabase();            
            _productRepository = productRepository;
        }

        [HttpGet("SearchProducts")]
        public async Task<IEnumerable<Product>> SearchProducts(string query)
        {
            string cacheKey = $"search:{query.ToLower()}";

            //Check Redis cache
            var cachedResults = await _redisDb.StringGetAsync(cacheKey);
            if (cachedResults.HasValue)
            {
                return JsonSerializer.Deserialize<IEnumerable<Product>>(cachedResults);
            }

            //Query SQL if not availabe in Redis
            var results = await _productRepository.SearchProductsAsync(query);

            //Store results in Redis (with TTL)
            await _redisDb.StringSetAsync(cacheKey, JsonSerializer.Serialize(results), TimeSpan.FromMinutes(60));

            return results;
        }

        [HttpGet("GetRelatedProducts")]
        public async Task<IEnumerable<Product>> GetRelatedProducts(int productId)
        {
            string cacheKey = $"relatedproducts:{productId}";

            //Check Redis cache
            var cachedResults = await _redisDb.StringGetAsync(cacheKey);
            if (cachedResults.HasValue)
            {
                return JsonSerializer.Deserialize<IEnumerable<Product>>(cachedResults);
            }

            //Query SQL if not availabe in Redis
            var results = await _productRepository.GetRelatedProductsAsync(productId);

            //Store results in Redis (with TTL)
            await _redisDb.StringSetAsync(cacheKey, JsonSerializer.Serialize(results), TimeSpan.FromMinutes(60));

            return results;
        }

        [HttpGet("GetAutoSuggestedProducts")]
        public async Task<IEnumerable<AutoSuggestions>> GetAutoSuggestedProducts(string query)
        {
            string cacheKey = $"autosuggest:{query.ToLower()}";

            //Check Redis cache
            var cachedResults = await _redisDb.StringGetAsync(cacheKey);
            if (cachedResults.HasValue)
            {
                return JsonSerializer.Deserialize<IEnumerable<AutoSuggestions>>(cachedResults);
            }

            //Query SQL if not availabe in Redis
            var results = await _productRepository.GetAutoSuggestedProductsAsync(query);

            //Store results in Redis (with TTL)
            await _redisDb.StringSetAsync(cacheKey, JsonSerializer.Serialize(results), TimeSpan.FromMinutes(60));

            return results;
        }

        [HttpGet("GetProductsByCategoryID")]
        public async Task<IEnumerable<Product>> GetProductsByCategoryID(int categoryId)
        {
            string cacheKey = $"category:{categoryId}";

            //Check Redis cache
            var cachedResults = await _redisDb.StringGetAsync(cacheKey);
            if (cachedResults.HasValue)
            {
                return JsonSerializer.Deserialize<IEnumerable<Product>>(cachedResults);
            }

            IEnumerable<Product> actionResult = await _productRepository.GetProductsByCategoryIDAsync(categoryId);

            //Store results in Redis (with TTL)
            await _redisDb.StringSetAsync(cacheKey, JsonSerializer.Serialize(actionResult), TimeSpan.FromMinutes(60));

            return actionResult;
        }

        [HttpGet("GetPopolarProducts")]
        public async Task<IEnumerable<Product>> GetPopolarProducts()
        {
            string cacheKey = $"popularproducts";

            //Check Redis cache
            var cachedResults = await _redisDb.StringGetAsync(cacheKey);
            if (cachedResults.HasValue)
            {
                return JsonSerializer.Deserialize<IEnumerable<Product>>(cachedResults);
            }

            IEnumerable<Product> actionResult = await _productRepository.GetPopolarProductsAsync();

            //Store results in Redis (with TTL)
            await _redisDb.StringSetAsync(cacheKey, JsonSerializer.Serialize(actionResult), TimeSpan.FromMinutes(60));

            return actionResult;
        }


        [HttpGet("GetAllProducts")]
        public Task<IEnumerable<Product>> GetAllProducts()
        {
            Task<IEnumerable<Product>> actionResult = _productRepository.GetAllAsync();
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
