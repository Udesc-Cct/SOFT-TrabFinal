using Code_Rpg_Learning.Classes;
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
            string nome = NomeEntry.Text;
            string senha = SenhaEntry.Text;
            string confirmarSenha = ConfirmarSenhaEntry.Text;

            if (string.IsNullOrWhiteSpace(nome) || string.IsNullOrWhiteSpace(senha) || string.IsNullOrWhiteSpace(confirmarSenha))
            {
                DisplayAlert("Erro", "Preencha todos os campos", "OK");
                return;
            }

            if (senha != confirmarSenha)
            {
                DisplayAlert("Erro", "As senhas não coincidem", "OK");
                return;
            }

            PlayerData player = new PlayerData();
            player.Nome = nome;
            player.Classe = "Class";
            player.PalavraPasse = senha;

            player.SalvarJsonData();

            await Navigation.PushAsync(new BaseView());
        }
    }
}