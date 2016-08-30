using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(OMIS675_Lab0.Startup))]
namespace OMIS675_Lab0
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
