using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VoltPlusPlus.Models;
using Xamarin.Forms;

namespace VoltPlusPlus.Services
{
   public class GadgetDataStore : IGadgetDataStore<Gadget>
   {
      readonly List<Gadget> gadgets;

      public GadgetDataStore()
      {
         gadgets = new List<Gadget>()
         {
            new Gadget{GadgetId = Guid.NewGuid().ToString(), GadgetName = "Car", GadgetImage = new Image{ Source = "ElectricCar.png"} },
            new Gadget{GadgetId = Guid.NewGuid().ToString(), GadgetName = "WashingMachine", GadgetImage = new Image{ Source = "WashingMachine.png"} },
            new Gadget{GadgetId = Guid.NewGuid().ToString(), GadgetName = "AirConditioner", GadgetImage = new Image{ Source = "AirConditioner.png"} },
            new Gadget{GadgetId = Guid.NewGuid().ToString(), GadgetName = "WaterHeater", GadgetImage = new Image{ Source = "Heater.png"} }
         };
      }

      public async Task<bool> AddGadgetAsync(Gadget gadget)
      {
         gadgets.Add(gadget);

         return await Task.FromResult(true);
      }

      public async Task<bool> UpdateGadgetAsync(Gadget gadget)
      {
         var oldGadget = gadgets.Where((Gadget arg) => arg.GadgetId == gadget.GadgetId).FirstOrDefault();
         gadgets.Remove(oldGadget);
         gadgets.Add(gadget);

         return await Task.FromResult(true);
      }

      public async Task<bool> DeleteGadgetAsync(string gadgetId)
      {
         var oldGadget = gadgets.Where((Gadget arg) => arg.GadgetId == gadgetId).FirstOrDefault();
         gadgets.Remove(oldGadget);

         return await Task.FromResult(true);
      }

      public async Task<Gadget> GetGadgetAsync(string gadgetId)
      {
         return await Task.FromResult(gadgets.FirstOrDefault(s => s.GadgetId == gadgetId));
      }

      public async Task<IEnumerable<Gadget>> GetGadgetsAsync(bool forceRefresh = false)
      {
         return await Task.FromResult(gadgets);
      }
   }
}
