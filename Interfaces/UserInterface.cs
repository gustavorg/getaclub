using System.Collections.Generic;
using AcmeApi.Models;
using AcmeApi.Entities;
using AcmeApi.Data;

namespace AcmeApi.Interfaces
{
    
public interface UserInterface
    {
        AuthenticateResponse Authenticate(AuthenticateRequest model);
        UserEntity GetById(int id);
        List<ClientModel> all();
        ClientModel get(int id);
        bool insert(ClientModel room);
        bool update(ClientModel room,int id);
        bool delete(int id);
        bool exist(int id);
    }
}