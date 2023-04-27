using System;
using System.Collections.Generic;
using System.ComponentModel;
using VoltPlusPlus.Models;
using VoltPlusPlus.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace VoltPlusPlus.Views
{
   public partial class NewItemPage : ContentPage
   {
      public Item Item { get; set; }

      public NewItemPage()
      {
         InitializeComponent();
         BindingContext = new NewItemViewModel();
      }
   }
}