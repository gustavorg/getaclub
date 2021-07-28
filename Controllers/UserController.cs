using Microsoft.AspNetCore.Mvc;
using AcmeApi.Models;
using AcmeApi.Services;
using AcmeApi.Interfaces;
using System.Collections.Generic;

namespace AcmeApi.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class UserController : ControllerBase
    {
        private UserInterface _userService;

        public UserController(UserInterface userService)
        {
            _userService = userService;
        }

        [HttpGet("test")]
		public object test() //[FromBody]LoginModel login
		{
            var rtn = new {
                test = "prueba SECURITY"
            };

            return Ok(rtn);
		}

        [HttpPost]
        [Route("authenticate")]
        public IActionResult Authenticate(AuthenticateRequest model)
        {
            var response = _userService.Authenticate(model);

            if (response == null)
                return BadRequest(new { message = "Username or password is incorrect" });

            return Ok(response);
        }


        [HttpGet]
        [Route("")]
        public IActionResult  all()
        {
            var status = true; List<ClientModel>  result = null;
            try{
                result = _userService.all();
            }catch (System.Exception)
            {
                status = false;
            }

            var rtn = new {
                status = status,
                result = result
            };

            return Ok(rtn);
        }
        
        [HttpGet]
        [Route("{id}")]
        public IActionResult  get(int id)
        {
            var status = true; ClientModel result = null;
            try{
                result = _userService.get(id);
            }catch (System.Exception)
            {
                status = false;
            }

            var rtn = new {
                status = status,
                result = result
            };

            return Ok(rtn);
        }

        [HttpPost]
        [Route("")]
        public IActionResult  insert(ClientModel client)
        {
            var status = true; bool result = false;
            try{
                result = _userService.insert(client);
            }catch (System.Exception)
            {
                status = false;
            }

            var rtn = new {
                status = status,
                result = result
            };

            return Ok(rtn);
        }

        [HttpPut]
        [Route("{id}")]
        public IActionResult  update(int id,ClientModel client)
        {
            var status = true; bool result = false;
            try{
                result = _userService.update(client,id);
            }catch (System.Exception)
            {
                status = false;
            }

            var rtn = new {
                status = status,
                result = result
            };

            return Ok(rtn);
        }

        [HttpDelete]
        [Route("{id}")]
        public IActionResult  delete(int id)
        {
            var status = true; bool result = false;
            try{
                result = _userService.delete(id);
            }catch (System.Exception)
            {
                status = false;
            }

            var rtn = new {
                status = status,
                result = result
            };

            return Ok(rtn);
        }
    }
}
