using System.Collections.Generic;
using AcmeApi.Models;
using AcmeApi.Data;

namespace AcmeApi.Interfaces
{
    
public interface BookingInterface
    {
        List<BookingModel> all(BookingModel booking);
        List<BookingModel> alert();
        BookingModel get(int id);
        bool insert(BookingModel room);
        bool update(BookingModel room,int id);
        bool delete(int id);
        bool cateringInsert(int idBooking,BookingCateringModel bc);
        bool cateringUpdate(int id,BookingCateringModel bc);
        bool cateringDelete(int id);
        List<BookingCateringModel> cateringAll(int idBooking);
        BookingCateringModel cateringGet(int id);
    }
}