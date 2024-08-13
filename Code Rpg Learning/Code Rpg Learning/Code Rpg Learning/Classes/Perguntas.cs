using System;
using System.Collections.Generic;
using System.Text;

namespace Code_Rpg_Learning.Classes
{
    public class Perguntas
    {
        public int NumeroDePergunta { get; set; }
        public int IndiceRespostaCerta { get; set; }
        public List<string> Respostas { get; set; }
        public string Pergunta { get; set; }


        public int ObterNumeroDePergunta()
        {
            return NumeroDePergunta;
        }
    }
}
