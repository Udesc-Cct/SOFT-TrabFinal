using System;
using System.Collections.Generic;
using System.Text;

namespace Code_Rpg_Learning.Classes
{
    public class Nivel
    {
        public string Nome { get; set; }
        public string Teoria { get; set; }
        public List<string> ExerciciosExtras { get; set; }
        public string Dungeon { get; set; }

        public Nivel()
        {
            ExerciciosExtras = new List<string>();
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
            ExerciciosExtras.Add(exercicio);
        }

        public void AdicionarDungeon(string dungeon)
        {
            Dungeon = dungeon;
        }
    }
}
