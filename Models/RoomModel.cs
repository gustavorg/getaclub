using System;
namespace AcmeApi.Models
{
    public class RoomModel
    {
        public int id { get; set; }
        public string name { get; set; }
        public string description { get; set; }
        public string cleaningTime { get; set; }
        public decimal hourPrice { get; set; }   
        public int numberAttendees { get; set; }
        public DateTime createdAt { get; set; }
        public int createdBy { get; set; }
        public DateTime updatedAt { get; set; }
        public int updatedBy { get; set; }
    }
}