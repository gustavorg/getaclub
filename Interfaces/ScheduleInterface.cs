using System.Collections.Generic;
using AcmeApi.Models;
using AcmeApi.Data;

namespace AcmeApi.Interfaces
{
    
public interface ScheduleInterface
    {
        List<ScheduleModel> all();
        List<ScheduleModel> roomAll(int idRoom);
        ScheduleModel get(int id);
        bool insert(ScheduleModel room);
        bool update(ScheduleModel room,int id);
        bool delete(int id);
    }
}