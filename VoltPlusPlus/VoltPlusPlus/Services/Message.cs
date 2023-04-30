using System;
using System.Collections.Generic;
using System.Text;

[assembly:Xamarin.Forms.Dependency(typeof(VoltPlusPlus.Services.Message))]
namespace VoltPlusPlus.Services
{
   public class Message : IMessage
   {
      void IMessage.LongAlert(string message)
      {
         //Toast.Make
      }

      void IMessage.ShortAlert(string message)
      {
         throw new NotImplementedException();
      }
   }
}
