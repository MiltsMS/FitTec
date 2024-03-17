using CommunityToolkit.Maui;
using CommunityToolkit.Maui.Core;
using FitTec.Base.Context;
using FitTec.View;
using FitTec.View.PopUp;
using FitTec.ViewModel;
using FitTec.ViewModel.PopUp;
using Microsoft.Extensions.Logging;

namespace FitTec
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()
                .UseMauiCommunityToolkit()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                    fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
                });

            //ViewModels
            builder.Services.AddSingleton<MainViewModel>();

            //Pages
            builder.Services.AddSingleton<MainPage>();

            builder.Services.AddSingleton<ClienteRepository>();

#if DEBUG
            builder.Logging.AddDebug();
#endif

            return builder.Build();
        }
    }
}
