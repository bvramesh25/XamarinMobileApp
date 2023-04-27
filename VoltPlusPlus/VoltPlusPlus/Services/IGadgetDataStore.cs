using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace VoltPlusPlus.Services
{
   public interface IGadgetDataStore<T>
   {
      Task<bool> AddGadgetAsync(T gadget);
      Task<bool> UpdateGadgetAsync(T gadget);
      Task<bool> DeleteGadgetAsync(string id);
      Task<T> GetGadgetAsync(string id);
      Task<IEnumerable<T>> GetGadgetsAsync(bool forceRefresh = false);
   }
}
