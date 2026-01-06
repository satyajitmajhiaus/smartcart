using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SC_Repository.DbContext
{
    public class DapperContext
    {
        private readonly string _connectionString;
        public DapperContext(IConfiguration config)
        {
            _connectionString = config.GetConnectionString("DefaultConnection");
        }
        public SqlConnection CreateConnection() => new SqlConnection(_connectionString);
    }
}
