﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using Microsoft.AspNet.SignalR;
using Microsoft.Owin;
using Owin;
[assembly: OwinStartupAttribute("TestingConfiguration",typeof(saumya_project.Startup))]
namespace saumya_project
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            app.MapSignalR("/signalr", new HubConfiguration());
        }
    }
}
