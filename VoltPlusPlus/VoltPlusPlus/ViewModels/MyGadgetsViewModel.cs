using System;
using System.Collections.Generic;
using System.Text;
using VoltPlusPlus.Models;
using VoltPlusPlus.ViewModels;
using Xamarin.Forms;
using InTheHand.Net.Bluetooth;
using InTheHand.Net.Sockets;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Threading.Tasks;
using VoltPlusPlus.Views;
using System.Net.Http;
using VoltPlusPlus.Services;

namespace VoltPlusPlus.ViewModels
{
   public class MyGadgetsViewModel : BaseViewModel
   {
        
      //private Gadget _selectedGadget;
      private bool _gadgetSelected = false;
      private Color _bulbBackground = Color.White;
      private Color _carBackground = Color.White;
      private bool _addedBulb = Global.BulbAdded;
      public ObservableCollection<Gadget> Gadgets { get;}
      public Command LoadGadgetsCommand { get; }
      public Command AddGadgetCommand { get; }
      public Command StartCommand { get; }
      public Command StopCommand { get; }
      public Command SchedueleCommand { get; }
      public Command<Gadget> GadgetTapped { get; }

      public RestService restService;

      public bool AddedBulb 
      { 
         get => _addedBulb;
         set
         { 
            Global.BulbAdded = value;
            SetProperty(ref _addedBulb, value);
         }
      }

      public Color BulbSelected 
      {
         get => _bulbBackground;
         set
         {
            SetProperty(ref _bulbBackground, value);
         }
      }

      public Color CarSelected
        {
            get => _carBackground;
            set
            {
                SetProperty(ref _carBackground, value);
            }
        }

      public bool GadgetSelected 
      {
         get
         {
            _gadgetSelected = _gadgetSelected && _addedBulb;
            return _gadgetSelected;
         }
         set
         {
            SetProperty(ref _gadgetSelected, value);
         }
      } 
      
      public MyGadgetsViewModel() 
      {
         Title = "My Gadgets";
         AddedBulb = Global.BulbAdded;
         BulbSelected = Color.White;
         GadgetSelected = false;
         Gadgets = new ObservableCollection<Gadget>();
         LoadGadgetsCommand = new Command(async () => await ExecuteLoadGadgetsCommand());
         GadgetTapped = new Command<Gadget>(OnGadgetSelected);
         AddGadgetCommand = new Command(OnAddGadget);
         StartCommand = new Command(OnStartGadget);
         StopCommand = new Command(OnStopGadget);
         SchedueleCommand = new Command(OnScheduleGadget);
         SetProperty(ref _gadgetSelected, _gadgetSelected && _addedBulb);
         restService = new RestService();
      }

      async Task ExecuteLoadGadgetsCommand()
      {
         IsBusy = true;

         try
         {            
            Gadgets.Clear();
            var gadgets = await GadgetDataStore.GetGadgetsAsync(true);          
         }
         catch (Exception ex)
         {
            Debug.WriteLine(ex);
         }
         finally
         {
            IsBusy = false;
         }
      }

        public void OnAppearing()
        {
            IsBusy = true;
            _gadgetSelected = false;
            //SelectedGadget = null;
           // BulbSelected = Color.White;
        }

        //private void Tap_Tapped(object sender, EventArgs e)
        //{
        //    var rowindex = ((sender as Label).Parent.Parent as GridCell).DataColumn.RowIndex;
        //    var colindex = ((sender as Label).Parent.Parent as GridCell).DataColumn.ColumnIndex;
        //    Debug.WriteLine("RowIndex" + rowindex + "\t" + "ColumnIndex" + colindex + "");
        //}

        //public Gadget SelectedGadget
        //{
        //    get => _selectedGadget;

        //    set
        //    {
        //        SetProperty(ref _selectedGadget, value);
        //        OnGadgetSelected(value);
        //    }
        //}

      async void OnGadgetSelected(Gadget gadget)
      {
         GadgetSelected = !GadgetSelected;

         if (Global.bulbWorkFlowDone)
            {
                if (GadgetSelected)
                {
                    CarSelected = Color.Beige;
                }
                else
                {
                    CarSelected = Color.White;
                }
            }
            else
            {
                if (GadgetSelected)
                {
                    BulbSelected = Color.Beige;
                }
                else
                {
                    BulbSelected = Color.White;
                }
            }
         
         await Task.FromResult(true);
      }

      private async void OnAddGadget(object obj)
      {
         await Shell.Current.GoToAsync(nameof(NewItemPage));
         AddedBulb = true;
         //GadgetSelected = false;
         //BulbSelected = Color.White;
      }

      private async void OnStartGadget(object obj)
      {
         if (Global.bulbWorkFlowDone == false)
         {
            Global.BulbOn = true;
            int load = 85;
            try
            {
               await restService.SetLoadAsync(85);
               load = await restService.GetLoadAsync();
               await restService.ToggleBulb(true);
            }
            catch (HttpRequestException ex)
            {
               string s = ex.Message;
               load = 85;
            }
            Global.SubstationLoad = load;
         }
         else
         {
            
         }
         await Task.FromResult(true);
      }

      private async void OnStopGadget(object obj)
      {
         Global.BulbOn = false;
         int load;
         try
         {
            Global.bulbWorkFlowDone = true;
            BulbSelected = Color.White;
            GadgetSelected = false;
            await restService.SetLoadAsync(80);
            load = await restService.GetLoadAsync();
            await restService.ToggleBulb(false);             
         }
         catch
         {
             load = 80;
         }
         Global.SubstationLoad = load;
         Global.IncentivePoint = Global.IncentivePoint + 1.0;
         await Task.FromResult(true);
      }

     
      private async void OnScheduleGadget(object obj)
        {
            await Shell.Current.GoToAsync(nameof(SchedulePage));
        }


      private void LoadGadgets()
      {
         foreach (Gadget gadget in Gadgets)
         {
            
         }
      }
   }
}
