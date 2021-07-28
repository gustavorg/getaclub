using System.Collections.Generic;
using AcmeApi.Models;
using AcmeApi.Data;

namespace AcmeApi.Interfaces
{
    
public interface CateringInterface
    {
        List<CateringModel> all();
        CateringModel get(int id);
        bool insert(CateringModel room);
        bool update(CateringModel room,int id);
        bool delete(int id);
    }
}