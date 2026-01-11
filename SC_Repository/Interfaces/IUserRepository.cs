using SC_Repository.Entities;
using System;
using System.Threading.Tasks;

namespace SC_Repository.Interfaces
{
    public interface IUserRepository
    {
        Task<bool> ValidateUserAsync(User user);
    }
}