using Code_Rpg_Learning.ViewModels;
using Code_Rpg_Learning.Views;
using System;
using System.Collections.Generic;
using Xamarin.Forms;

namespace Code_Rpg_Learning
{
    public partial class AppShell : Xamarin.Forms.Shell
    {
        public AppShell()
        {
            InitializeComponent();
            Routing.RegisterRoute(nameof(ItemDetailPage), typeof(ItemDetailPage));
            Routing.RegisterRoute(nameof(NewItemPage), typeof(NewItemPage));
        }

    }
}
