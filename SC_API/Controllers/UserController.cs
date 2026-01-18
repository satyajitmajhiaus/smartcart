using Microsoft.AspNetCore.Mvc;
using SC_API.Utilities;
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
        private readonly JwtTokenHelper _tokenHelper;

        public UserController(IUserRepository userRepository, JwtTokenHelper tokenHelper)
        {
            _userRepository = userRepository;
            _tokenHelper = tokenHelper;
        }

        [HttpPost("login")]
        public async Task<IActionResult> Login(User user)
        {
            var isValid = await _userRepository.ValidateUserAsync(user);
            if (!isValid)
            {
                return Unauthorized("Invalid credentials or role.");
            }

            string token = _tokenHelper.GenerateToken(user.Username,user.Role);
            return Ok(token);
        }
    }
}