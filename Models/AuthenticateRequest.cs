using System.ComponentModel.DataAnnotations;

namespace AcmeApi.Models
{
    public class AuthenticateRequest
    {
        [Required]
        public string email { get; set; }

        [Required]
        public string password { get; set; }
    }
}