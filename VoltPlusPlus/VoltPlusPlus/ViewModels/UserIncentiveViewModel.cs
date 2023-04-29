using System;
using System.Collections.Generic;
using System.Text;

namespace VoltPlusPlus.ViewModels
{
    public class UserIncentiveViewModel : BaseViewModel
    {
        public string Incentives { get; set; }
        public UserIncentiveViewModel()
        {
            Title = "User Incentive";
            Incentives = Global.IncentivePoint.ToString() + "pts";
        }
    }
}
