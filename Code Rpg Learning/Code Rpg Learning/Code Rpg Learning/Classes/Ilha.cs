using System;
using System.Collections.Generic;
using System.Text;

namespace Code_Rpg_Learning.Classes
{
    public class Ilha
    {
        public string Nome { get; set; }
        public List<Nivel> ListaDeNiveis { get; set; }

        public Ilha()
        {
            ListaDeNiveis = new List<Nivel>();
        }

        public void CriarIlha(string nome)
        {
            Nome = nome;
        }

        public void AdicionarNivel(Nivel nivel)
        {
            ListaDeNiveis.Add(nivel);
        }
    }
}
