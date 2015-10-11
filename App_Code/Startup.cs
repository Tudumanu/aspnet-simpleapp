using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ASPNET_C.Startup))]
namespace ASPNET_C
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
