using Syncfusion.SfChart.XForms;
using System;
using System.Collections.Generic;
using System.Text;
using VoltPlusPlus.Models;
using VoltPlusPlus.ViewModels;
using Xamarin.Forms;

namespace VoltPlusPlus.ViewModels
{
   public class SubstationViewModel : BaseViewModel
   {
      double _pointerVal = Global.SubstationLoad;
      public List<SubstationLoadData> SubStationLoad { get; set; }
      public double PointerValue
      {
         get => _pointerVal;
         set
         {
            Global.SubstationLoad = value;
            SetProperty(ref _pointerVal, value);
         }
      }
      public SubstationViewModel() 
      {
         Title = "Substation Load";
         _pointerVal = Global.SubstationLoad;
         SubStationLoad = new List<SubstationLoadData>
         {
            new SubstationLoadData { Hours = 1, Load = 80 },
            new SubstationLoadData { Hours = 2, Load = 70 },
            new SubstationLoadData { Hours = 3, Load = 60 },
            new SubstationLoadData { Hours = 4, Load = 55 }
         };
      }      
    }
}
