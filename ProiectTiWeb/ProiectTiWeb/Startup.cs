using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ProiectTiWeb.Startup))]
namespace ProiectTiWeb
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
