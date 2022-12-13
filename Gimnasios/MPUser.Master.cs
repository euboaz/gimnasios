using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gimnasios
{
    public partial class MPUser : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void BPPrincipal_Click(object sender, EventArgs e)
        {
            Response.Redirect("PPUser.aspx");

        }

        protected void BRutinas_Click(object sender, EventArgs e)
        {
            Response.Redirect("RutinasClientes.aspx");
        }
    }
}