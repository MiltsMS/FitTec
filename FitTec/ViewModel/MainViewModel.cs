using CommunityToolkit.Maui.Views;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using FitTec.Base.Context;
using FitTec.Base.Models;
using FitTec.View.PopUp;

namespace FitTec.ViewModel
{
    public partial class MainViewModel : ObservableObject
    {
        [ObservableProperty]
        private string _entryCliente;

        [ObservableProperty]
        public List<Cliente> _clientes = new List<Cliente>();

        private ClienteRepository _clienteRepository = new ClienteRepository();

        [RelayCommand]
        private void Push() => AppShell.Current.ShowPopup(new IncluirEditarClientePopUp(this));

        [RelayCommand]
        private void PushItem(Cliente cliente) => AppShell.Current.ShowPopup(new IncluirEditarClientePopUp(this, cliente));

        partial void OnEntryClienteChanged(string value) => Filtro(value?.ToLower());

        private async Task Filtro(string value)
        {
            Clientes = await _clienteRepository.GetListByFilterAsync(value);
        }

        public async void CriaLista()
        {
            var list = await _clienteRepository.GetItemsAsync();

            if (!list.Any())
            {
                await _clienteRepository.InsertItemAsync(new Cliente() { Name = "Pedro", LastName = "Silva", Age = 22, Address = "Rua do Jardim, 2-56" });
                await _clienteRepository.InsertItemAsync(new Cliente() { Name = "Maria", LastName = "Oliveira", Age = 27, Address = "Antiga rua 10, 20" });
                await _clienteRepository.InsertItemAsync(new Cliente() { Name = "Felipe", LastName = "Martins", Age = 26, Address = "Avenida Machado, 26-5" });
                await _clienteRepository.InsertItemAsync(new Cliente() { Name = "Isabela", LastName = "Souza", Age = 24, Address = "Rua comercial 7, 1232" });
            }

            Clientes = await _clienteRepository.GetItemsAsync();
            Clientes = Clientes.OrderBy(c => c.Name).ToList();
        }
    }
}
