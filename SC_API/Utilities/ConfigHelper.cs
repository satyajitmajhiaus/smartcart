namespace SC_API.Utilities
{
    public class ConfigHelper
    {
        public Jwt Jwt;
    }
    public class Jwt
    {
        public  string Key { get; set; }
        public  string Issuer { get; set; }
        public int ExpiryMinutes {  get; set; }
    }
    }
