using System;
using System.Collections.Generic;
using System.Text;

namespace VoltPlusPlus
{
   public static class Global
   {
      public static bool BulbAdded { get; set; } = false;
      public static double SubstationLoad { get; set; } = 80.0;
      public static double IncentivePoint { get; set; } = 0;
      public static bool BulbOn { get; set; } = false;
   }
}
