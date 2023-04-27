using System;
using System.Collections.Generic;
using VoltPlusPlus.ViewModels;
using VoltPlusPlus.Views;
using Xamarin.Forms;

namespace VoltPlusPlus
{
   public partial class AppShell : Xamarin.Forms.Shell
   {
      public AppShell()
      {
         InitializeComponent();
         Routing.RegisterRoute(nameof(SubstationLoadPage), typeof(SubstationLoadPage));
         Routing.RegisterRoute(nameof(MyGadgetsPage), typeof(MyGadgetsPage));
         Routing.RegisterRoute(nameof(ItemDetailPage), typeof(ItemDetailPage));
         Routing.RegisterRoute(nameof(NewItemPage), typeof(NewItemPage));
      }

   }
}
