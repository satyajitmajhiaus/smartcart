using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SC_Repository.Interfaces
{
    public interface ICurrencyRepository
    {
        Task<Currency?> GetByCodeAsync(string code);
        Task<IEnumerable<Currency>> GetAllAsync();
        Task<int> AddAsync(Currency currency);
        Task<bool> UpdateAsync(Currency currency);
        Task<bool> DeleteAsync(string code);
    }

}
