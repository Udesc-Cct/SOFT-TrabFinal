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

        private void Button_Clicked(object sender, EventArgs e)
        {
            Ilha ilha = new Ilha
            {
                Nome = "Ilha dos Fundamentos",
                ListaDeNiveis = new List<Nivel>
                {
                    new Nivel
                    {
                        Nome = "Nível 1",
                        Teoria = "Teoria do Nível 1",
                        Dungeon = "Dungeon do Nível 1",
                        Perguntas = new List<Perguntas>
                        {
                            new Perguntas
                            {
                                NumeroDePergunta = 1,
                                Pergunta = "Qual é a sintaxe correta para declarar uma variável inteira em C#?",
                                IndiceRespostaCerta = 0,
                                Respostas = new List<string>
                                {
                                    "int minhaVariavel;",
                                    "int minhaVariavel();",
                                    "var minhaVariavel = int;",
                                    "string minhaVariavel;"
                                }
                            },
                            new Perguntas
                            {
                                NumeroDePergunta = 2,
                                Pergunta = "O que é um comentário de linha em C# e qual é a sua finalidade?",
                                IndiceRespostaCerta = 0,
                                Respostas = new List<string>
                                {
                                    "Um comentário de linha é um trecho de código que é ignorado pelo compilador e serve para adicionar informações ou explicar o código.",
                                    "Um comentário de linha é um código executável em C# que serve para adicionar informações ou explicar o código.",
                                    "Um comentário de linha é uma variável que armazena um trecho de texto em C#.",
                                    "Um comentário de linha é um tipo de dado em C# que armazena um valor numérico."
                                }
                            },
                            new Perguntas
                            {
                                NumeroDePergunta = 3,
                                Pergunta = "Quais são os operadores aritméticos básicos em C#?",
                                IndiceRespostaCerta = 0,
                                Respostas = new List<string>
                                {
                                    "+, -, *, /",
                                    "+, -, *, %",
                                    "+, -, /, ^",
                                    "+, -, *, &"
                                }
                            },
                            new Perguntas
                            {
                                NumeroDePergunta = 4,
                                Pergunta = "Como podemos converter um valor inteiro em uma string em C#?",
                                IndiceRespostaCerta = 0,
                                Respostas = new List<string>
                                {
                                    "Utilizando o método .ToString()",
                                    "Utilizando o método Convert.ToInt32()",
                                    "Utilizando o método ToInt32()",
                                    "Utilizando o método Parse()"
                                }
                            }
                        }
                    },
                    // Outros níveis...
                }
            };

            Navigation.PushAsync(new LevelPage(ilha));
        }
    }
}