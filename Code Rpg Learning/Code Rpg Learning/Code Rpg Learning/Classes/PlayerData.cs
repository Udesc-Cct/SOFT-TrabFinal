using System;
using System.Collections.Generic;
using System.Text;
using System.IO;
using System.Text.Json;

namespace Code_Rpg_Learning.Classes
{
    public class PlayerData
    {
        public string Nome { get; set; }
        public string Classe { get; set; }
        public string PalavraPasse { get; set; }

        public void SalvarJsonData()
        {
            string jsonData = JsonSerializer.Serialize(this);
            string filePath = Path.Combine(Environment.CurrentDirectory, "playerdata.json");
            File.WriteAllText(filePath, jsonData);
        }

        public static PlayerData CarregarJsonData()
        {
            string filePath = Path.Combine(Environment.CurrentDirectory, "playerdata.json");
            if (File.Exists(filePath))
            {
                string jsonData = File.ReadAllText(filePath);
                return JsonSerializer.Deserialize<PlayerData>(jsonData);
            }
            else
            {
                return null;
            }
        }

        public static void ExcluirJsonData()
        {
            string filePath = Path.Combine(Environment.CurrentDirectory, "playerdata.json");
            if (File.Exists(filePath))
            {
                File.Delete(filePath);
            }
        }
    }
}
