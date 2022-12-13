using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gimnasios
{
    public partial class MUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LlenarGrid();
        }

        protected void LlenarGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["DB_GimnasioConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("exec consultarUsuarios"))
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

        public static SqlConnection obtenerConexion()
        {
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["DB_GimnasioConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            return conexion;
        }

        public void agregarUsuarios()
        {
            SqlConnection Conn = new SqlConnection();
            using (Conn = DboCon.obtenerConexion())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "agregarUsuarios";
                cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = TEmail.Text.Trim();
                cmd.Parameters.Add("@clave", SqlDbType.VarChar).Value = TClave.Text.Trim();
                cmd.Parameters.Add("@rol", SqlDbType.VarChar).Value = DDLRol.SelectedValue.Trim();
                cmd.Connection = Conn;
                cmd.ExecuteNonQuery();
            }

        }

        public void modificarUsuarios()
        {
            SqlConnection Conn = new SqlConnection();
            using (Conn = DboCon.obtenerConexion())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "modificarUsuarios";
                cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = TEmail.Text.Trim();
                cmd.Parameters.Add("@clave", SqlDbType.VarChar).Value = TClave.Text.Trim();
                cmd.Parameters.Add("@rol", SqlDbType.VarChar).Value = DDLRol.SelectedValue.Trim();
                cmd.Connection = Conn;
                cmd.ExecuteNonQuery();
            }

        }


        public void eliminarUsuarios()
        {
            SqlConnection Conn = new SqlConnection();
            using (Conn = DboCon.obtenerConexion())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "eliminarUsuarios";
                cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = TEmail.Text.Trim();
                cmd.Connection = Conn;
                cmd.ExecuteNonQuery();
            }

        }
        protected void Button2_Click(object sender, EventArgs e) //Agregar
        {
            agregarUsuarios();
            LlenarGrid();
        }

        protected void Button4_Click(object sender, EventArgs e) //Eliminar
        {
            eliminarUsuarios();
            LlenarGrid();
        }

        protected void Button3_Click(object sender, EventArgs e) //Modificar
        {
            modificarUsuarios();
            LlenarGrid();
        }
    }
}