using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace Gimnasios
{
    public partial class RutinasClientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LlenarGridAdmin();
            LlenarGridCliente();
        }

        protected void LlenarGridAdmin()
        {
            string constr = ConfigurationManager.ConnectionStrings["DB_GimnasioConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("exec consultarRutinasAdmin"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }



        public void LlenarGridCliente()
        {
            SqlConnection Conn = new SqlConnection();
            using (Conn = DboCon.obtenerConexion())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "consultarRutinasClientes";
                cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = TEmail.Text.Trim();
                cmd.Connection = Conn;
                cmd.ExecuteNonQuery();
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        GridView2.DataSource = dt;
                        GridView2.DataBind();
                    }
                }
            }

        }


        public void cambiarRutinasClientes()
        {
            SqlConnection Conn = new SqlConnection();
            using (Conn = DboCon.obtenerConexion())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "cambiarRutinasClientes";
                cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = TEmail.Text.Trim();
                cmd.Parameters.Add("@id_Rutina", SqlDbType.VarChar).Value = DDID_Rutina.SelectedValue.Trim();
                cmd.Connection = Conn;
                cmd.ExecuteNonQuery();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            LlenarGridCliente();
        }

        protected void Button3_Click(object sender, EventArgs e) //modificar rutina
        {
            cambiarRutinasClientes();
            LlenarGridCliente();
        }
    }
}