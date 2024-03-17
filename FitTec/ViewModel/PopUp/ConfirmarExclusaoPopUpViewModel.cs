using CommunityToolkit.Mvvm.ComponentModel;
using FitTec.Base.Context;
using FitTec.Base.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FitTec.ViewModel.PopUp
{
    public partial class ConfirmarExclusaoPopUpViewModel : ObservableObject
    {
        [ObservableProperty]
        private Cliente _cliente;

        private MainViewModel _mainViewModel { get; set; }

        private ClienteRepository _clienteRepository { get; set; } = new ClienteRepository();

        public ConfirmarExclusaoPopUpViewModel(MainViewModel viewModel, Cliente cliente)
        {
            _mainViewModel = viewModel;
            _cliente = cliente;
        }

        public async void Excluir()
        {
            await _clienteRepository.DeleteItemAsync(_cliente);
            _mainViewModel.CriaLista();
        }
    }
}
