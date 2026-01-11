using Microsoft.AspNetCore.Mvc;
using SC_Repository.Entities;
using SC_Repository.Interfaces;
using System;
using System.Threading.Tasks;

namespace SC_API.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class UserController : ControllerBase
    {
        private readonly IUserRepository _userRepository;

        public UserController(IUserRepository userRepository)
        {
            _userRepository = userRepository;
        }

        [HttpPost("login")]
        public async Task<IActionResult> Login(User user)
        {
            var isValid = await _userRepository.ValidateUserAsync(user);
            if (!isValid)
            {
                return Unauthorized("Invalid credentials or role.");
            }

            return Ok("Login successful.");
        }
    }
}