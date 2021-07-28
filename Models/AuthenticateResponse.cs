using AcmeApi.Entities;

namespace AcmeApi.Models
{
    public class AuthenticateResponse
    {
        public int id { get; set; }
        public string names { get; set; }
        public string lastName { get; set; }
        public string surName { get; set; }
        public string email { get; set; }
        public string Token { get; set; }


        public AuthenticateResponse(UserEntity user, string token)
        {
            id = user.id;
            names = user.names;
            lastName = user.lastName;
            surName = user.surName;
            Token = token;
        }
    }
}