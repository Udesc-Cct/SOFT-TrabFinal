using Code_Rpg_Learning.ViewModels;
using System.ComponentModel;
using Xamarin.Forms;

namespace Code_Rpg_Learning.Views
{
    public partial class ItemDetailPage : ContentPage
    {
        public ItemDetailPage()
        {
            InitializeComponent();
            BindingContext = new ItemDetailViewModel();
        }
    }
}