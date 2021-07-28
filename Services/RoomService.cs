using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
using AcmeApi.Entities;
using AcmeApi.Helpers;
using AcmeApi.Data;
using AcmeApi.Models;
using AcmeApi.Interfaces;

namespace AcmeApi.Services
{
    public class RoomService : RoomInterface
    {
        public List<RoomModel> all()
        {
            RoomData droom = new RoomData();
            return droom.all();
        }

        public RoomModel get(int id)
        {
            RoomData droom = new RoomData();
            return droom.get(id);
        }

        public bool insert(RoomModel room)
        {
            RoomData droom = new RoomData();
            return droom.insert(room);
        }

        public bool update(RoomModel room,int id)
        {
            RoomData droom = new RoomData();
            return droom.update(room,id);
        }
        public bool delete(int id)
        {
            RoomData droom = new RoomData();
            return droom.delete(id);
        }
    }
}