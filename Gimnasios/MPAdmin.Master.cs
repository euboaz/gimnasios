using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gimnasios
{
    public partial class menuprincipal : System.Web.UI.MasterPage
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
            Response.Redirect("PPAdmin.aspx");

        }

        protected void BMantUsuarios_Click(object sender, EventArgs e)
        {
            Response.Redirect("MUsuarios.aspx");
        }

        protected void BClientes_Click(object sender, EventArgs e)
        {
            Response.Redirect("Clientes.aspx");
        }

        protected void BRutinas_Click(object sender, EventArgs e)
        {
            Response.Redirect("RutinasAdmin.aspx");
        }

        protected void BFacturacion_Click(object sender, EventArgs e)
        {
            Response.Redirect("Facturacion.aspx");
        }

        protected void BReportes_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reportes.aspx");
        }
    }
}