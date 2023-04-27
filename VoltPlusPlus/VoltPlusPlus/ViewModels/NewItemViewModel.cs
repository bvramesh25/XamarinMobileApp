using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using System.Windows.Input;
using VoltPlusPlus.Models;
using Xamarin.Forms;

namespace VoltPlusPlus.ViewModels
{
   public class NewItemViewModel : BaseViewModel
   {
      private string text;
      private string description;

        public IList<NewItemData> DeviceList { get; set; }

      public NewItemViewModel()
      {
         SaveCommand = new Command(OnSave, ValidateSave);
         CancelCommand = new Command(OnCancel);
         this.PropertyChanged +=
             (_, __) => SaveCommand.ChangeCanExecute();

            try
            {

            DeviceList = new ObservableCollection<NewItemData>
            {
               new NewItemData { DeviceId = 1, DeviceName = "Electric Car" },
               new NewItemData { DeviceId = 1, DeviceName = "Air Conditioner" },
               new NewItemData { DeviceId = 2, DeviceName = "Fridge" },
               new NewItemData { DeviceId = 3, DeviceName = "Water Heater" },
               new NewItemData { DeviceId = 4, DeviceName = "Bulb" }
            };
         }
            catch
            { }
      }

      private bool ValidateSave()
      {
         return !String.IsNullOrWhiteSpace(text)
             && !String.IsNullOrWhiteSpace(description);
      }

      public string Text
      {
         get => text;
         set => SetProperty(ref text, value);
      }

      public string Description
      {
         get => description;
         set => SetProperty(ref description, value);
      }

      public Command SaveCommand { get; }
      public Command CancelCommand { get; }

      private async void OnCancel()
      {
         // This will pop the current page off the navigation stack
         await Shell.Current.GoToAsync("..");
      }

      private async void OnSave()
      {
         Gadget newGadget = new Gadget()
         {
            GadgetId = Guid.NewGuid().ToString(),
            GadgetName = Text
         };

         await GadgetDataStore.AddGadgetAsync(newGadget);

         // This will pop the current page off the navigation stack
         await Shell.Current.GoToAsync("..");
      }
   }
}
