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
    public partial class BaseView : ContentPage
    {
        private List<string> _images;
        private int _currentIndex;
        public BaseView()
        {
            InitializeComponent();
            BindingContext = this;

            _images = new List<string>
            {
                "Ilha001.jpg",
                "Ilha002.jpg",
                "Ilha003.jpg"
            };

            _currentIndex = 0;
            UpdateImageSource();
        }
        #region Sistema de Seleção de Ilhas

        private void PreviousButton_Clicked(object sender, EventArgs e)
        {
            _currentIndex--;
            if (_currentIndex < 0)
                _currentIndex = _images.Count - 1;

            UpdateImageSource();
        }

        private void NextButton_Clicked(object sender, EventArgs e)
        {
            _currentIndex++;
            if (_currentIndex >= _images.Count)
                _currentIndex = 0;

            UpdateImageSource();
        }

        private void UpdateImageSource()
        {
            MainImage.Source = ImageSource.FromFile(_images[_currentIndex]);
        }

        #endregion
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