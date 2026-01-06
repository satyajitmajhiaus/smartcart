using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using SC_Repository.Interfaces;

namespace SC_API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CategoryController : ControllerBase
    {
        private readonly ICategoryRepository _categoryRepository;

        public CategoryController(ICategoryRepository categoryRepository)
        {
            _categoryRepository = categoryRepository;
        }

        [HttpGet]
        public Task<Category?> GetCategoryById(int cId)
        {
            Task<Category?> actionResult = _categoryRepository.GetByIdAsync(cId);
            return actionResult;
        }

        [HttpGet("all")]
        public Task<IEnumerable<Category>> GetAllCategories()
        {
            Task<IEnumerable<Category>> actionResult = _categoryRepository.GetAllAsync();
            return actionResult;
        }
    }
}
