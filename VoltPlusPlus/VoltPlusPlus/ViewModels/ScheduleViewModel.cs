using System;
using System.Collections.Generic;
using System.Text;
using Xamarin.Forms;

namespace VoltPlusPlus.ViewModels
{
    public class ScheduleViewModel : BaseViewModel
    {
        public Command SaveCmd { get; }
        public Command CancelCmd { get; }
        public ScheduleViewModel()
        {
            SaveCmd = new Command(OnSave);
            CancelCmd = new Command(OnCancel);
            Title = "Date And Time";
        }

        private async void OnSave()
        {
            await Shell.Current.GoToAsync("..");
        }

        private async void OnCancel()
        {
            await Shell.Current.GoToAsync("..");
        }
    }
}
