using FitTec.ViewModel;

namespace FitTec.View
{
    public partial class MainPage : ContentPage
    {
        private MainViewModel _viewModel;

        public MainPage(MainViewModel viewModel)
        {
            InitializeComponent();
            _viewModel = viewModel;
            BindingContext = _viewModel;
        }

        private void ContentPage_Appearing(object sender, EventArgs e)
        {
            _viewModel.CriaLista();
        }
    }
}
