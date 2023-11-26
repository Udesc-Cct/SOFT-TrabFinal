using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Code_Rpg_Learning.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class RankingPage : ContentPage
    {
        public RankingPage()
        {
            InitializeComponent();
            BindingContext = new RankingsViewModel();
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

        public class Ranking
        {
            public int Numero { get; set; }
            public ClasseEnum Classe { get; set; }
            public string Nome { get; set; }
            public int Pontuacao { get; set; }
            public string Imagem { get; set; }
        }

        public class RankingsViewModel
        {
            public List<Ranking> Rankings { get; set; }

            public RankingsViewModel()
            {
                Rankings = new List<Ranking>()
                {
                    new Ranking { Numero = 1, Classe = ClasseEnum.Mago, Nome = "Crisgon44", Pontuacao = 100, Imagem = EnumConverter(ClasseEnum.Mago) },
                    new Ranking { Numero = 2, Classe = ClasseEnum.Guerreiro, Nome = "Dioohh2002", Pontuacao = 90, Imagem =  EnumConverter(ClasseEnum.Guerreiro) },
                    new Ranking { Numero = 3, Classe = ClasseEnum.Druida, Nome = "Paivex68", Pontuacao = 87, Imagem =  EnumConverter(ClasseEnum.Druida) },
                    new Ranking { Numero = 4, Classe = ClasseEnum.Druida, Nome = "LimaLioide94", Pontuacao = 79, Imagem =  EnumConverter(ClasseEnum.Druida) },
                    new Ranking { Numero = 5, Classe = ClasseEnum.Guerreiro, Nome = "ToupeiraMind", Pontuacao = 78, Imagem =  EnumConverter(ClasseEnum.Guerreiro) },
                    new Ranking { Numero = 6, Classe = ClasseEnum.Druida, Nome = "Floribelo14", Pontuacao = 71, Imagem =  EnumConverter(ClasseEnum.Druida) },
                    new Ranking { Numero = 7, Classe = ClasseEnum.Mago, Nome = "PanadoLendario", Pontuacao = 68, Imagem =  EnumConverter(ClasseEnum.Mago) },
                    new Ranking { Numero = 8, Classe = ClasseEnum.Guerreiro, Nome = "DiogoCospeFire", Pontuacao = 63, Imagem =  EnumConverter(ClasseEnum.Guerreiro) },
                    new Ranking { Numero = 9, Classe = ClasseEnum.Guerreiro, Nome = "GarridoKing", Pontuacao = 58, Imagem =  EnumConverter(ClasseEnum.Guerreiro) },
                    new Ranking { Numero = 10, Classe = ClasseEnum.Druida, Nome = "AreiaCity", Pontuacao = 53, Imagem =  EnumConverter(ClasseEnum.Druida) },
                    // Adicione mais entradas de ranking conforme necessário
                };
            }
            public string EnumConverter(ClasseEnum vTemp)
            {
                switch (vTemp)
                {
                    case ClasseEnum.Mago:
                        return "wizard.png";
                    case ClasseEnum.Guerreiro:
                        return "dwarf.png";
                    case ClasseEnum.Druida:
                    default:
                        return "druid.png";
                }
            }
        }

        public class ClasseToImageConverter : IValueConverter
        {
            private static readonly ClasseToImageConverter _instance = new ClasseToImageConverter();
            public static ClasseToImageConverter Instance => _instance;

            public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
            {
                if (value is ClasseEnum classe)
                {
                    switch (classe)
                    {
                        case ClasseEnum.Mago:
                            return "wizard-face.png"; 
                        case ClasseEnum.Guerreiro:
                            return "dwarf-face.png"; 
                        case ClasseEnum.Druida:
                            return "druid.png"; 
                    }
                }

                return null;
            }

            public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
            {
                throw new NotImplementedException();
            }
        }
    }
}