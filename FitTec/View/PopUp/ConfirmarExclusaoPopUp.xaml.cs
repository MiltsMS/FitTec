using CommunityToolkit.Maui.Views;
using FitTec.Base.Models;
using FitTec.ViewModel;
using FitTec.ViewModel.PopUp;

namespace FitTec.View.PopUp;

public partial class ConfirmarExclusaoPopUp : Popup
{
	private ConfirmarExclusaoPopUpViewModel _viewModel;
    public ConfirmarExclusaoPopUp(MainViewModel viewModel, Cliente cliente)
	{
		InitializeComponent();
        _viewModel = new ConfirmarExclusaoPopUpViewModel(viewModel, cliente);
        BindingContext = _viewModel;
    }

    private void SimButton(object sender, EventArgs e)
    {
        _viewModel.Excluir();
        Close();
    }

    private void NaoButton(object sender, EventArgs e)
    {
        Close();
    }
}