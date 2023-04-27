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
	public partial class MyGadgetsPage : ContentPage
	{
		MyGadgetsViewModel _gadgetsViewModel;
		public MyGadgetsPage ()
		{
			InitializeComponent ();
         BindingContext = _gadgetsViewModel = new MyGadgetsViewModel();
		}

		//GadgetControlView GetControlViewForGadget(Gadget gadget)
		//{
		//	GadgetControlView gadgetView = new GadgetControlView();
		//	((GadgetControlViewModel)gadgetView.BindingContext).DeviceName = gadget.GadgetName;
  //       ((GadgetControlViewModel)gadgetView.BindingContext).DeviceImage = gadget.GadgetImage;
		//	return gadgetView;
  //    }

      protected override void OnAppearing()
      {
         base.OnAppearing();
			_gadgetsViewModel.OnAppearing();
         //LoadGadgetsInView();
      }

		//private void LoadGadgetsInView()
		//{
  //       foreach (Gadget gadget in _gadgetsViewModel.Gadgets)
  //       {
  //          if (gadget != null)
  //          {
  //             GadgetControlView gadgetView = GetControlViewForGadget(gadget);
  //             GridLayout.Children.Add(gadgetView);
  //             Grid.SetColumn(gadgetView, 0);
  //             Grid.SetRow(gadgetView, 1);
               
  //          }
  //       }
  //    }
   }
}