using CommunityToolkit.Maui.Views;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using FitTec.Base.Context;
using FitTec.Base.Models;
using FitTec.View.PopUp;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FitTec.ViewModel.PopUp
{
    public partial class IncluirEditarClientePopUpViewModel : ObservableObject
    {
        [ObservableProperty]
        private Cliente _cliente;

        [ObservableProperty]
        private string _titulo;

        [ObservableProperty]
        private string _textButtonConfirmar;

        [ObservableProperty]
        private string _textButtonCancelar;

        [ObservableProperty]
        private bool _labelAlert;

        private bool _edicao;

        private ClienteRepository _clienteRepository = new ClienteRepository();

        public MainViewModel _mainViewModel { get; set; }

        public IncluirEditarClientePopUpViewModel(MainViewModel mainViewModel, Cliente cliente = null)
        {
            _mainViewModel = mainViewModel;
            _labelAlert = false;

            if (cliente is null)
            {
                _edicao = false;
                _cliente = new Cliente();
                _titulo = "Adicionar Cliente";
                _textButtonConfirmar = "Adicionar";
                _textButtonCancelar = "Cancelar";
            }
            else
            {
                _edicao = true;
                _cliente = cliente;
                _titulo = "Editar Cliente";
                _textButtonConfirmar = "Salvar";
                _textButtonCancelar = "Excluir";
            }
        }

        public async void Salvar()
        {
            if(_edicao)
            {
                await _clienteRepository.UpdateItemAsync(Cliente);
            }
            else
                await _clienteRepository.InsertItemAsync(Cliente);

            _mainViewModel.CriaLista();
        }

        public void Excluir()
        {
            if (_edicao)
                AppShell.Current.ShowPopup(new ConfirmarExclusaoPopUp(_mainViewModel, Cliente));
        }

        public bool ValidaCampos()
        {
            LabelAlert = string.IsNullOrWhiteSpace(Cliente.Name) ||
                    string.IsNullOrWhiteSpace(Cliente.LastName) ||
                    string.IsNullOrWhiteSpace(Cliente.Address) ||
                    Cliente.Age == null;

            return !LabelAlert;
        }
    }
}
