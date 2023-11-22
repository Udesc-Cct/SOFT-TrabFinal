using Code_Rpg_Learning.Services;
using Code_Rpg_Learning.Views;
using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Code_Rpg_Learning
{
    public partial class App : Application
    {

        public App()
        {
            InitializeComponent();

            DependencyService.Register<MockDataStore>();
            MainPage = new AppShell();
        }

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}
