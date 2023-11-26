using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Code_Rpg_Learning.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ProfilePage : ContentPage
    {
        public ProfilePage()
        {
            InitializeComponent();
        }
        public INavigation Navigation => Application.Current.MainPage.Navigation;
        private async void Item1CommandExecute(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new BaseView(), false);
        }
        private async void Item2CommandExecute(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new ProfilePage(), false);
        }
        private async void Item3CommandExecute(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new FriendsPage(), false);
        }
        private async void Item4CommandExecute(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new RankingPage(), false);
        }
    }
}