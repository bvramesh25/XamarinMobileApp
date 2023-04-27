using System.ComponentModel;
using VoltPlusPlus.ViewModels;
using Xamarin.Forms;

namespace VoltPlusPlus.Views
{
   public partial class ItemDetailPage : ContentPage
   {
      public ItemDetailPage()
      {
         InitializeComponent();
         BindingContext = new ItemDetailViewModel();
      }
   }
}