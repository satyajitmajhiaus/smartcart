using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;

namespace SC_API.Utilities
{
    public class JwtTokenHelper
    {
        private readonly Jwt _jwt;

        public JwtTokenHelper(IOptions<Jwt> jwt)
        {
            _jwt = jwt.Value;
        }


        //public string GenerateToken(string username, string role, string key, string issuer, int expiryMinutes)
        public string GenerateToken(string username, string role)
        {

            string key = _jwt.Key;
            string issuer = _jwt.Issuer;
            int expiryMinutes = _jwt.ExpiryMinutes;
            var securityKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(key));
            var credentials = new SigningCredentials(securityKey, SecurityAlgorithms.HmacSha256);

            var claims = new[]
            {
                new Claim(ClaimTypes.Name, username),
                new Claim(ClaimTypes.Role, role)
            };

            var token = new JwtSecurityToken(
                issuer,
                issuer,
                claims,
                expires: DateTime.Now.AddMinutes(expiryMinutes),
                signingCredentials: credentials);

            return new JwtSecurityTokenHandler().WriteToken(token);
        }
    }
}
