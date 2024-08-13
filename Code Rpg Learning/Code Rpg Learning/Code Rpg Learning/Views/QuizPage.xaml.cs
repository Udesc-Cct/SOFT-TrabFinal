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
    public partial class QuizPage : ContentPage
    {
        private List<Perguntas> perguntas;
        private int indicePerguntaAtual;
        private int respostasCorretas;

        public QuizPage(List<Perguntas> perguntas)
        {
            InitializeComponent();

            this.perguntas = perguntas;
            indicePerguntaAtual = 0;
            respostasCorretas = 0;

            CarregarPerguntaAtual();
        }

        private void CarregarPerguntaAtual()
        {
            respostasStackLayout.Children.Clear();

            if (indicePerguntaAtual < perguntas.Count)
            {
                Perguntas perguntaAtual = perguntas[indicePerguntaAtual];

                perguntaLabel.Text = perguntaAtual.Pergunta;

                foreach (string resposta in perguntaAtual.Respostas)
                {
                    Button respostaButton = new Button
                    {
                        Text = resposta,
                        Command = new Command<string>(ResponderPergunta),
                        CommandParameter = resposta
                    };
                    respostasStackLayout.Children.Add(respostaButton);
                }

                respostasStackLayout.IsEnabled = true;
                resultadoLabel.IsVisible = false;
                perguntaLabel.IsVisible = true;
                respostasStackLayout.IsVisible = true;
            }
            else
            {
                ExibirResultado();
            }
        }

        private void ResponderPergunta(string respostaSelecionada)
        {
            Perguntas perguntaAtual = perguntas[indicePerguntaAtual];

            respostasStackLayout.IsEnabled = false;

            foreach (Button respostaButton in respostasStackLayout.Children)
            {
                respostaButton.IsEnabled = false;

                if (respostaButton.Text == perguntaAtual.Respostas[perguntaAtual.IndiceRespostaCerta])
                {
                    if (respostaButton.Text == respostaSelecionada)
                    {
                        respostaButton.BackgroundColor = Color.Green; // Resposta correta
                        respostasCorretas++;
                    }
                    else
                    {
                        respostaButton.BackgroundColor = Color.Red; // Resposta correta, mas não selecionada
                    }
                }
                else
                {
                    if (respostaButton.Text == respostaSelecionada)
                    {
                        respostaButton.BackgroundColor = Color.Red; // Resposta incorreta, selecionada erroneamente
                    }
                }
            }

            indicePerguntaAtual++;

            if (indicePerguntaAtual == perguntas.Count)
            {
                ExibirResultado();
            }
            else
            {
                Button proximaPerguntaButton = new Button
                {
                    Text = "Próxima pergunta",
                    HorizontalOptions = LayoutOptions.Center
                };
                proximaPerguntaButton.Clicked += ProximaPerguntaButtonClicked;
                respostasStackLayout.Children.Add(proximaPerguntaButton);
            }
        }

        private void ProximaPerguntaButtonClicked(object sender, EventArgs e)
        {
            respostasStackLayout.Children.Remove((Button)sender);
            respostasStackLayout.IsEnabled = true;
            CarregarPerguntaAtual();
        }

        private void ExibirResultado()
        {
            perguntaLabel.IsVisible = false;
            respostasStackLayout.IsVisible = false;
            resultadoLabel.Text = $"Você acertou {respostasCorretas} de {perguntas.Count} perguntas.";
            resultadoLabel.IsVisible = true;
        }

        private void ConfirmarButtonClicked(object sender, EventArgs e)
        {

        }
    }
}