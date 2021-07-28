using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Linq;
using AcmeApi.Models;
using AcmeApi.Services;
using AcmeApi.Interfaces;
using System;
using MailKit.Net.Smtp;
using MimeKit;

namespace AcmeApi.Controllers
{

    [ApiController]
    [Route("[controller]")]
    public class BookingController:ControllerBase
    {
        private BookingInterface _bookingService;
        private UserInterface _userService;
        
        public BookingController(BookingInterface bookingService,UserInterface userService)
        {
            _bookingService = bookingService;
            _userService = userService;
        }

        [HttpGet]
        [Route("")]
        public IActionResult  all(BookingModel booking)
        {
            var status = true; List<BookingModel>  result = null;
            try{
                result = _bookingService.all(booking);
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
            var status = true; BookingModel result = null;
            try{
                result = _bookingService.get(id);
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
        public IActionResult  insert(BookingModel room)
        {
            var status = true; bool result = false;
           /* 
            if(_userService.exist(room.idClient)){
                try{
                    result = _bookingService.insert(room);
                }catch (System.Exception)
                {
                    status = false;
                }
            }
    */
            var rtn = new {
                status = status,
                result = result
            };

            return Ok(rtn);
        }

        [HttpPut]
        [Route("{id}")]
        public IActionResult  update(int id,BookingModel room)
        {
            var status = true; bool result = false;
            try{
                result = _bookingService.update(room,id);
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
                result = _bookingService.delete(id);
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


        /* Caterings */

        [HttpPost]
        [Route("catering/{idBooking}")]
        public IActionResult  cateringInsert(int idBooking,BookingCateringModel bc)
        {
            var status = true; bool result = false;
            
                try{
                    result = _bookingService.cateringInsert(idBooking,bc);
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
        [Route("catering/{id}")]
        public IActionResult  cateringUpdate(int id,BookingCateringModel bc)
        {
            var status = true; bool result = false;
            
                try{
                    result = _bookingService.cateringUpdate(id,bc);
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
        [Route("catering/{id}")]
        public IActionResult  cateringDelete(int id)
        {
            var status = true; bool result = false;
            try{
                result = _bookingService.cateringDelete(id);
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
        [Route("catering/all/{idBooking}")]
        public IActionResult  cateringAll(int idBooking)
        {
            var status = true; List<BookingCateringModel>  result = null;
            try{
                result = _bookingService.cateringAll(idBooking);
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
        [Route("catering/get/{id}")]
        public IActionResult  cateringGet(int id)
        {
            var status = true; BookingCateringModel result = null;
            try{
                result = _bookingService.cateringGet(id);
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
        [Route("alert")]
        public IActionResult alert()
        {
            var correoEmisor="";
            var passEmisor="";

            List<BookingModel>  alerts = null;
            bool status = false; string result = "";
        
                alerts=_bookingService.alert();
                if (alerts != null && alerts.Count > 0)
                {
                    Console.WriteLine(alerts);
                    foreach (var alert in alerts)
                    {
                        var message = new MimeMessage();
                        message.From.Add(new MailboxAddress("Getaclub ",correoEmisor));
                        message.To.Add(new MailboxAddress("Sr(a): ",alert.client.email));
                        message.Subject = "Alerta de término de reserva";
                        message.Body = new TextPart("plain"){
                            Text = "Estimado cliente su reserva se encuentra pronto a finalizar. Recuerde que su reserva finaliza "+alert.date+" "+ alert.endHour};
                        using(var client = new SmtpClient())
                        {
                            // gmail
                            client.Connect ("smtp.gmail.com", 465, true);
                            // hotmail
                           // smtp.Connect("smtp.live.com", 587, SecureSocketOptions.StartTls);

                            // office 365
                            //smtp.Connect("smtp.office365.com", 587, SecureSocketOptions.StartTls);
                            client.Authenticate(correoEmisor,passEmisor);
                            client.Send(message);
                            client.Disconnect(true);
                        }
                    }
                    status = true;
                    result= "Se envío la alerta correctamente";
                }

                var rtn = new {
                    status = status,
                    result = result
                };

                return Ok(rtn);
        }
    }
}