using Code_Rpg_Learning.Classes;
using Paket;
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
    public partial class LoginView : ContentPage
    {
        public LoginView()
        {
            InitializeComponent();
            if (PlayerData.VerificarExistenciaArquivo())
            {
                Navigation.PushAsync(new BaseView());
            }
        }

        private async void Button_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new CreateUserView());
        }

        private void ENTRAR_Clicked(object sender, System.EventArgs e)
        {
            BaseView mainPage = new BaseView();
            Application.Current.MainPage = new NavigationPage(mainPage);

            /*
            string nome = NomeEntry.Text;
            string senha = SenhaEntry.Text;

            if (string.IsNullOrWhiteSpace(nome) || string.IsNullOrWhiteSpace(senha))
            {
                DisplayAlert("Erro", "Preencha todos os campos", "OK");
                return;
            }

            if (PlayerData.VerificarJogadorESenha(nome, senha))
            {
                BaseView mainPage = new BaseView();
                Application.Current.MainPage = new NavigationPage(mainPage);
            }
            else
            {
                DisplayAlert("Erro", "Credenciais inválidas", "OK");
            }
            */
        }

        private void CADASTRO_Clicked(object sender, System.EventArgs e)
        {
            CreateUserView createUserView = new CreateUserView();
            Application.Current.MainPage = new NavigationPage(createUserView);
        }
    }
}