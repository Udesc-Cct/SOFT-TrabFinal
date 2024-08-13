using System;
using System.Collections.Generic;
using System.Text;

namespace Code_Rpg_Learning.Classes
{
    public class Nivel
    {
        public string Nome { get; set; }
        public string Teoria { get; set; }
        public List<Perguntas> Perguntas { get; set; }
        public string Dungeon { get; set; }

        public Nivel()
        {
            Perguntas = new List<Perguntas>();
        }

        public void CriarNivel(string nome)
        {
            Nome = nome;
        }

        public void AdicionarTeoria(string teoria)
        {
            Teoria = teoria;
        }

        public void AdicionarExercicio(string exercicio)
        {
            //Perguntas.Add(exercicio);
        }

        public void AdicionarDungeon(string dungeon)
        {
            Dungeon = dungeon;
        }
    }
}
