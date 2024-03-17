using CommunityToolkit.Maui.Views;
using FitTec.Base.Models;
using FitTec.ViewModel;
using FitTec.ViewModel.PopUp;

namespace FitTec.View.PopUp;

public partial class IncluirEditarClientePopUp : Popup
{
    private IncluirEditarClientePopUpViewModel _viewModel;
    public IncluirEditarClientePopUp(MainViewModel mainViewModel, Cliente cliente = null)
    {
        InitializeComponent();
        _viewModel = new IncluirEditarClientePopUpViewModel(mainViewModel, cliente);
        BindingContext = _viewModel;

    }

    void CancelarExcluirButton(object? sender, EventArgs e)
    {
        Close();
        _viewModel.Excluir();
    }

    private void SalvarButton(object sender, EventArgs e)
    {
        if (_viewModel.ValidaCampos())
        {
            _viewModel.Salvar();
            Close();
        }
    }

    private void Entry_TextChanged(object sender, TextChangedEventArgs e)
    {
        if (!string.IsNullOrEmpty(e.NewTextValue))
        {
            if (!int.TryParse(e.NewTextValue, out _))
            {
                    EntryAge.Text = e.OldTextValue;
            }
        }
    }
}