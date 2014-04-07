using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Traceyourroute_web_application.Startup))]
namespace Traceyourroute_web_application
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
