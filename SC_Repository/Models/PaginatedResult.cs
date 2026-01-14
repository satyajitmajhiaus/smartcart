using System.Collections.Generic;

namespace SC_Repository.Models
{
    public class PaginatedResult<T>
    {
        public IEnumerable<T> Items { get; set; } = new List<T>();
        public PaginationDetails Pagination { get; set; } = new PaginationDetails();
    }

    public class PaginationDetails
    {
        public int CurrentPage { get; set; }
        public int TotalPages { get; set; }
        public int PageSize { get; set; }
        public int TotalItems { get; set; }
    }

    public class SearchFilters
    {
        public IEnumerable<string> Categories { get; set; } = new List<string>();
        public IEnumerable<string> Tags { get; set; } = new List<string>();
    }

    public class SearchResultWithFilters<T>
    {
        public PaginatedResult<T> Results { get; set; } = new PaginatedResult<T>();
        public SearchFilters Filters { get; set; } = new SearchFilters();
    }
}