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
    public class ScheduleController:ControllerBase
    {
        private ScheduleInterface _scheduleService;

        public ScheduleController(ScheduleInterface scheduleService)
        {
            _scheduleService = scheduleService;
        }

        [HttpGet]
        [Route("")]
        public IActionResult  all()
        {
            var status = true; List<ScheduleModel>  result = null;
            try{
                result = _scheduleService.all();
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
        [Route("room/{idRoom}")]
        public IActionResult  roomAll(int idRoom)
        {
            var status = true; List<ScheduleModel>  result = null;
            try{
                result = _scheduleService.roomAll(idRoom);
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
            var status = true; ScheduleModel result = null;
            try{
                result = _scheduleService.get(id);
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
        public IActionResult  insert(ScheduleModel schedule)
        {
            var status = true; bool result = false;
            try{
                result = _scheduleService.insert(schedule);
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
        public IActionResult  update(int id,ScheduleModel schedule)
        {
            var status = true; bool result = false;
            try{
                result = _scheduleService.update(schedule,id);
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
                result = _scheduleService.delete(id);
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