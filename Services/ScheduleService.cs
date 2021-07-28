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
using AcmeApi.Models;
using AcmeApi.Data;

namespace AcmeApi.Services
{
    public class ScheduleService : ScheduleInterface
    {
         public List<ScheduleModel> all()
        {
            ScheduleData schedule = new ScheduleData();
            return schedule.all();
        }

        public List<ScheduleModel> roomAll(int idRoom)
        {
            ScheduleData schedule = new ScheduleData();
            return schedule.roomAll(idRoom);
        }
        
        public ScheduleModel get(int id)
        {
            ScheduleData schedule = new ScheduleData();
            return schedule.get(id);
        }

        public bool insert(ScheduleModel room)
        {
            ScheduleData schedule = new ScheduleData();
            return schedule.insert(room);
        }

        public bool update(ScheduleModel room,int id)
        {
            ScheduleData schedule = new ScheduleData();
            return schedule.update(room,id);
        }
        public bool delete(int id)
        {
            ScheduleData schedule = new ScheduleData();
            return schedule.delete(id);
        }

    }
}