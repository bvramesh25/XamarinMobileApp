﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using VoltPlusPlus.ViewModels;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace VoltPlusPlus.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class SubstationLoadPage : ContentPage
	{
		public SubstationLoadPage ()
		{
			InitializeComponent ();
         BindingContext = new SubstationViewModel();
      }
	}
}