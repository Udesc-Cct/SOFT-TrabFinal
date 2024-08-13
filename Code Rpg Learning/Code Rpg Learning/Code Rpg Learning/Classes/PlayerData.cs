using System;
using System.IO;
using System.Text.Json;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.PlatformConfiguration;

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
            string filePath = GetFilePath();
            File.WriteAllText(filePath, jsonData);
        }

        public static PlayerData CarregarJsonData()
        {
            string filePath = GetFilePath();
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
            string filePath = GetFilePath();
            if (File.Exists(filePath))
            {
                File.Delete(filePath);
            }
        }

        public static bool VerificarJogadorESenha(string nome, string senha)
        {
            PlayerData playerData = CarregarJsonData();
            if (playerData != null && playerData.Nome == nome && playerData.PalavraPasse == senha)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public static bool VerificarExistenciaArquivo()
        {
            string filePath = GetFilePath();
            return File.Exists(filePath);
        }

        private static string GetFilePath()
        {
            try
            {
                string fileName = "playerdata.json";
                string folderPath = DependencyService.Get<IFileSystem>().GetAppDataFolderPath();
                return Path.Combine(folderPath, fileName);
            }
            catch (Exception)
            {
                return "";
            }
            
        }
    }
    public interface IFileSystem
    {
        string GetAppDataFolderPath();
    }
}