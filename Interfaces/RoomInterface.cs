using System.Collections.Generic;
using AcmeApi.Models;
using AcmeApi.Data;

namespace AcmeApi.Interfaces
{
    
public interface RoomInterface
    {
        List<RoomModel> all();
        RoomModel get(int id);
        bool insert(RoomModel room);
        bool update(RoomModel room,int id);
        bool delete(int id);
    }
}