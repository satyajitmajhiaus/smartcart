public class Product
{
    public int ProductId { get; set; }
    public string Name { get; set; } = string.Empty;
    public string? Description { get; set; }
    public int CategoryId { get; set; }
    public string CurrencyCode { get; set; } = string.Empty;
    public decimal Price { get; set; }
    public string? Tags { get; set; }
    public string? ImageUrl { get; set; }
    public int Stock { get; set; }
    public DateTime CreatedAt { get; set; }
    public DateTime? ModifiedAt { get; set; }
    public bool IsInStock { get; set; }
    public int PopularityScore { get; set; }
    public double Rating { get; set; }
    public int ReviewCount { get; set; }
    public string? SearchVector { get; set; }
}
