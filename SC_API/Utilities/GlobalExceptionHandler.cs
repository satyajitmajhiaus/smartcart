using Microsoft.AspNetCore.Diagnostics;
using SC_API.Models;
using SC_Repository.Entities;
using SC_Repository.Interfaces;

namespace SC_API.Utilities
{
    public class GlobalExceptionHandler : IExceptionHandler
    {
        private readonly ILogRepository _logger;
        public GlobalExceptionHandler(ILogRepository logger)
        {
            _logger = logger;
        }
        public async ValueTask<bool> TryHandleAsync(HttpContext httpContext, Exception exception, CancellationToken cancellationToken)
        {
            var response = new ErrorResponse
            {
                StatusCode = httpContext.Response.StatusCode,
                Title = "Internal Server Error",
                ErrorMessage = "An unexpected error occurred. Please try again later. Please contact administrator for any help!"
            };

            await _logger.AddLog(new ErrorLog
            {
                LogDate = DateTime.Now,
                ErrorCode = httpContext.Response.StatusCode,
                ErrorMessage = exception.Message
            });

            await httpContext.Response.WriteAsJsonAsync(response);

            return true;
        }
    }
}
