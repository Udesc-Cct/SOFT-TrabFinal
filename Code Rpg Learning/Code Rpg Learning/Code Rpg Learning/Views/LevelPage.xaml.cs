using Code_Rpg_Learning.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using static Code_Rpg_Learning.Views.RankingPage;

namespace Code_Rpg_Learning.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class LevelPage : ContentPage
    {
        public Ilha Ilha { get; set; }
        public List<Nivel> ListaDeNiveis1 { get; set; }
        public LevelPage(Ilha ilha)
        {
            InitializeComponent();
            ListaDeNiveis1 = ilha.ListaDeNiveis;
            this.Ilha = ilha;
            BindingContext = this;
        }
        private void ListViewItemSelected(object sender, SelectedItemChangedEventArgs e)
        {
            Nivel nivelSelecionado = (Nivel)e.SelectedItem;

            Navigation.PushAsync(new QuizPage(nivelSelecionado.Perguntas));
        }
    }
}