using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gimnasios
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BIngresar_Click(object sender, EventArgs e)
        {
            Usuarios.emailUsuario = TEmail.Text;
            Usuarios.claveUsuario = TPassword.Text;

            if (Usuarios.validarLogin(Usuarios.emailUsuario,Usuarios.claveUsuario)>0)
            {
                if (Usuarios.rolUsuario.Equals("admin"))
                {
                    Response.Redirect("PPAdmin.aspx");
                }
                else 
                {
                    Response.Redirect("PPUser.aspx");   
                }
                
            }
            else 
            {
                
            }
        }
    }
}