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
    public partial class CreateUserView : ContentPage
    {
        public CreateUserView()
        {
            InitializeComponent();
        }

        private async void CANCELAR_Clicked(object sender, EventArgs e)
        {
            await Navigation.PopAsync();
        }

        private async void CADASTRAR_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new BaseView());
        }
    }
}