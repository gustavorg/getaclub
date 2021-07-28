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
using AcmeApi.Models;
using AcmeApi.Data;

namespace AcmeApi.Services
{

    public class BookingService : BookingInterface
    {

        public List<BookingModel> all(BookingModel booking)
        {
            BookingData droom = new BookingData();
            return droom.all(booking);
        }

        public List<BookingModel> alert()
        {
            BookingData droom = new BookingData();
            return droom.alert();
        }

        public BookingModel get(int id)
        {
            BookingData droom = new BookingData();
            return droom.get(id);
        }

        public bool insert(BookingModel room)
        {
            BookingData droom = new BookingData();
            return droom.insert(room);
        }

        public bool update(BookingModel room,int id)
        {
            BookingData droom = new BookingData();
            return droom.update(room,id);
        }
        public bool delete(int id)
        {
            BookingData droom = new BookingData();
            return droom.delete(id);
        }

        /* Catering */

        public bool cateringInsert(int idBooking,BookingCateringModel bc)
        {
            BookingData droom = new BookingData();
            return droom.cateringInsert(idBooking,bc);
        }
        public bool cateringUpdate(int id,BookingCateringModel bc)
        {
            BookingData droom = new BookingData();
            return droom.cateringUpdate(id,bc);
        }
        public bool cateringDelete(int id)
        {
            BookingData droom = new BookingData();
            return droom.cateringDelete(id);
        }

        public List<BookingCateringModel> cateringAll(int idBooking)
        {
            BookingData droom = new BookingData();
            return droom.cateringAll(idBooking);
        }

        public BookingCateringModel cateringGet(int id)
        {
            BookingData droom = new BookingData();
            return droom.cateringGet(id);
        }
    }
}