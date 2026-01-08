using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SC_Repository.Implementations;
using SC_Repository.Interfaces;
using StackExchange.Redis;
using System.Text.Json;

namespace SC_API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CategoryController : ControllerBase
    {
        private readonly ICategoryRepository _categoryRepository;
        private readonly IDatabase _redisDb;

        public CategoryController(IConnectionMultiplexer redis, ICategoryRepository categoryRepository)
        {
            _redisDb = redis.GetDatabase();
            _categoryRepository = categoryRepository;
        }

        [HttpGet("all")]
        public async Task<IEnumerable<Category>> GetAllCategories()
        {
            string cacheKey = $"categories:all";
            var cachedResults = await _redisDb.StringGetAsync(cacheKey);
            if (cachedResults.HasValue)
            {
                return JsonSerializer.Deserialize<IEnumerable<Category>>(cachedResults);
            }

            //Query SQL if not availabe in Redis
            IEnumerable<Category> results = await _categoryRepository.GetAllAsync();

            //Store results in Redis (with TTL)
            await _redisDb.StringSetAsync(cacheKey, JsonSerializer.Serialize(results), TimeSpan.FromMinutes(60));

            return results;
        }
    }
}
