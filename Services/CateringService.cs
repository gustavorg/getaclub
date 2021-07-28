using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
using AcmeApi.Entities;
using AcmeApi.Interfaces;
using AcmeApi.Helpers;
using AcmeApi.Data;
using AcmeApi.Models;

namespace AcmeApi.Services
{

    public class CateringService : CateringInterface
    {
        // users hardcoded for simplicity, store in a db with hashed passwords in production applications
         public List<CateringModel> all()
        {
            CateringData dcatering = new CateringData();
            return dcatering.all();
        }

        public CateringModel get(int id)
        {
            CateringData dcatering = new CateringData();
            return dcatering.get(id);
        }

        public bool insert(CateringModel catering)
        {
            CateringData dcatering = new CateringData();
            return dcatering.insert(catering);
        }

        public bool update(CateringModel catering,int id)
        {
            CateringData dcatering = new CateringData();
            return dcatering.update(catering,id);
        }
        public bool delete(int id)
        {
            CateringData dcatering = new CateringData();
            return dcatering.delete(id);
        }
    }
}