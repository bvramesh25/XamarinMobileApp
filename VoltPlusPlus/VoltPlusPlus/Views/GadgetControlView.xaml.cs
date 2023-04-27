using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VoltPlusPlus.ViewModels;
using VoltPlusPlus.Models;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace VoltPlusPlus.Views
{
   [XamlCompilation(XamlCompilationOptions.Compile)]
   public partial class GadgetControlView : ContentView
   {
      public static readonly BindableProperty DeviceNameProperty = BindableProperty.Create(nameof(DeviceName), typeof(string), typeof(GadgetControlView));
      public static readonly BindableProperty DeviceImageProperty = BindableProperty.Create(nameof(DeviceImage), typeof(Image), typeof(GadgetControlView));
      public static readonly BindableProperty DeviceProperty = BindableProperty.Create(nameof(Device), typeof(Gadget), typeof(GadgetControlView));
      public string DeviceName { get; set; }
      public Image DeviceImage { get; set; }
      public Gadget Device { get; set; }
      public GadgetControlView()
      {
         InitializeComponent();
         BindingContext = new GadgetControlViewModel();
      }
   }
}