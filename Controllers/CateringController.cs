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
    public class CateringController:ControllerBase
    {
        private CateringInterface _cateringService;

        public CateringController(CateringInterface cateringService)
        {
            _cateringService = cateringService;
        }
        [HttpGet]
        [Route("")]
        public IActionResult  all()
        {
            var status = true; List<CateringModel>  result = null;
            try{
                result = _cateringService.all();
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
            var status = true; CateringModel result = null;
            try{
                result = _cateringService.get(id);
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
        public IActionResult  insert(CateringModel room)
        {
            var status = true; bool result = false;
            try{
                result = _cateringService.insert(room);
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
        public IActionResult  update(int id,CateringModel room)
        {
            var status = true; bool result = false;
            try{
                result = _cateringService.update(room,id);
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
                result = _cateringService.delete(id);
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