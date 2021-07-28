using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Linq;
using AcmeApi.Models;
using AcmeApi.Services;
using AcmeApi.Interfaces;
using System;

namespace AcmeApi.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class RoomController:ControllerBase
    {
        private RoomInterface _roomService;

        public RoomController(RoomInterface roomService)
        {
            _roomService = roomService;
        }

        [HttpGet]
        [Route("")]
        public IActionResult  all()
        {
            var status = true; List<RoomModel>  result = null;
            try{
                result = _roomService.all();
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
            var status = true; RoomModel result = null;
            try{
                result = _roomService.get(id);
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
        public IActionResult  insert(RoomModel room)
        {
            var status = true; bool result = false;
            try{
                result = _roomService.insert(room);
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
        public IActionResult  update(int id,RoomModel room)
        {
            var status = true; bool result = false;
            try{
                result = _roomService.update(room,id);
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
                result = _roomService.delete(id);
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