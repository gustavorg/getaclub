using System.Text.Json.Serialization;

namespace AcmeApi.Entities
{
    public class ClientEntity
    {
        public int id { get; set; }
        public string names { get; set; }
        public string lastName { get; set; }
        public string surName { get; set; }
        public string email { get; set; }

        [JsonIgnore]
        public string password { get; set; }
    }
}