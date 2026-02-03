using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SC_Repository.Entities
{
    public class ErrorLog
    {
        public DateTime LogDate { get; set; }
        public int ErrorCode { get; set; }
        public string ErrorMessage { get; set; } = string.Empty;
    }
}
