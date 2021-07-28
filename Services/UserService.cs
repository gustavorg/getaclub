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
using AcmeApi.Models;
using AcmeApi.Interfaces;
using AcmeApi.Data;

namespace AcmeApi.Services
{
    public class UserService : UserInterface
    {
        // users hardcoded for simplicity, store in a db with hashed passwords in production applications
        private List<UserEntity> _users = new List<UserEntity>
        {
            new UserEntity { id = 1, email = "test", password = "123" }
        };

        private readonly AppSettings _appSettings;

        public UserService(IOptions<AppSettings> appSettings)
        {
            _appSettings = appSettings.Value;
        }

        public AuthenticateResponse Authenticate(AuthenticateRequest model)
        {
            var user = _users.SingleOrDefault(x => x.email == model.email && x.password == model.password);

            // return null if user not found
            if (user == null) return null;

            // authentication successful so generate jwt token
            var token = generateJwtToken(user);

            return new AuthenticateResponse(user, token);
        }

        public IEnumerable<UserEntity> GetAll()
        {
            return _users;
        }

        public UserEntity GetById(int id)
        {
            return _users.FirstOrDefault(x => x.id == id);
        }

        // helper methods

        private string generateJwtToken(UserEntity user)
        {
            // generate token that is valid for 7 days
            var tokenHandler = new JwtSecurityTokenHandler();
            var key = Encoding.ASCII.GetBytes(_appSettings.Secret);
            var tokenDescriptor = new SecurityTokenDescriptor
            {
                Subject = new ClaimsIdentity(new[] { new Claim("id", user.id.ToString()) }),
                Expires = DateTime.UtcNow.AddDays(7),
                SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha256Signature)
            };
            var token = tokenHandler.CreateToken(tokenDescriptor);
            return tokenHandler.WriteToken(token);
        }

        public List<ClientModel> all()
        {
            UserData client = new UserData();
            return client.all();
        }

        public ClientModel get(int id)
        {
            UserData client = new UserData();
            return client.get(id);
        }

        public bool insert(ClientModel client)
        {
            UserData dclient = new UserData();
            return dclient.insert(client);
        }

        public bool update(ClientModel client,int id)
        {
            UserData dclient = new UserData();
            return dclient.update(client,id);
        }
        public bool delete(int id)
        {
            UserData dclient = new UserData();
            return dclient.delete(id);
        }

        public bool exist(int id)
        {
            UserData dclient = new UserData();
            return dclient.exist(id);
        }
    }
}