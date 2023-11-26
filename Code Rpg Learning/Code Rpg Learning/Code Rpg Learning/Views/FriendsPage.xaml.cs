using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Code_Rpg_Learning.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class FriendsPage : ContentPage
    {
        private ObservableCollection<User> _users;

        public FriendsPage()
        {
            InitializeComponent();

            _users = new ObservableCollection<User>
            {
                new User { Name = "Paivex68" , Imagem = "wizard.png"},
                new User { Name = "GarridoRei" , Imagem = "wizard.png" },
                new User { Name = "Louco2111" , Imagem = "dwarf.png" }
            };
            UsersListView.ItemsSource = _users;
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
        private void AddFriendButton_Clicked(object sender, System.EventArgs e)
        {
            Button button = (Button)sender;
            var user = (User)button.CommandParameter;
            button.IsVisible = false;

            // Lógica para adicionar o usuário como amigo
        }
        public class User
        {
            public string Name { get; set; }
            public string Imagem { get; set; }

        }
    }
}