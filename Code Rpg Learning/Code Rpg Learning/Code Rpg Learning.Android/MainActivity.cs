using System;

using Android.App;
using Android.Content.PM;
using Android.Runtime;
using Android.OS;
using Code_Rpg_Learning.Classes;
using System.IO;

namespace Code_Rpg_Learning.Droid
{
    [Activity(Label = "Code Rpg Learning", Icon = "@drawable/icon", Theme = "@style/MainTheme", MainLauncher = true, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize )]
    public class MainActivity : global::Xamarin.Forms.Platform.Android.FormsAppCompatActivity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            global::Xamarin.Forms.Forms.Init(this, savedInstanceState);

            if (Build.VERSION.SdkInt >= BuildVersionCodes.Lollipop)
            {
                // Define a cor da barra de notificações como vermelha
                Window.SetStatusBarColor(Android.Graphics.Color.Black);
            }

            RequestedOrientation = ScreenOrientation.Portrait;

            LoadApplication(new App());
        }
        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }
        public override void OnBackPressed()
        {
            // Comentamos totalmente o código para desativar o botão "Back"
            // base.OnBackPressed();
        }
        public class FileSystem_Android : IFileSystem
        {
            public string GetAppDataFolderPath()
            {
                return Path.Combine(Android.App.Application.Context.GetExternalFilesDir(null).AbsolutePath);
            }
        }
    }
}