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
    public partial class Clientes : System.Web.UI.Page
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
                using (SqlCommand cmd = new SqlCommand("exec consultarClientes"))
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



        public void agregarDirecciones()
        {
            SqlConnection Conn = new SqlConnection();
            using (Conn = DboCon.obtenerConexion())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "agregarDirecciones";
                cmd.Parameters.Add("@Codigo_Cliente", SqlDbType.Int).Value = DropDownList7.SelectedValue.Trim();
                cmd.Parameters.Add("@Codigo_Provincia", SqlDbType.Int).Value = DropDownList6.SelectedValue.Trim();
                cmd.Parameters.Add("@Codigo_Canton", SqlDbType.Int).Value = DropDownList4.SelectedValue.Trim();
                cmd.Parameters.Add("@Codigo_Distrito", SqlDbType.Int).Value = DropDownList5.SelectedValue.Trim();
                cmd.Parameters.Add("@Comentarios", SqlDbType.VarChar).Value = TextBox4.Text.Trim();
                cmd.Connection = Conn;
                cmd.ExecuteNonQuery();
            }

        }

        public void eliminarDirecciones()
        {
            SqlConnection Conn = new SqlConnection();
            using (Conn = DboCon.obtenerConexion())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "eliminarDirecciones";
                cmd.Parameters.Add("@Codigo_Cliente", SqlDbType.Int).Value = DropDownList7.SelectedValue.Trim();
                cmd.Connection = Conn;
                cmd.ExecuteNonQuery();
            }
        }

        public void modificarDirecciones()
        {
            SqlConnection Conn = new SqlConnection();
            using (Conn = DboCon.obtenerConexion())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "modificarDirecciones";
                cmd.Parameters.Add("@Codigo_Cliente", SqlDbType.Int).Value = DropDownList7.SelectedValue.Trim();
                cmd.Parameters.Add("@Codigo_Provincia", SqlDbType.Int).Value = DropDownList6.SelectedValue.Trim();
                cmd.Parameters.Add("@Codigo_Canton", SqlDbType.Int).Value = DropDownList4.SelectedValue.Trim();
                cmd.Parameters.Add("@Codigo_Distrito", SqlDbType.Int).Value = DropDownList5.SelectedValue.Trim();
                cmd.Parameters.Add("@Comentarios", SqlDbType.VarChar).Value = TextBox4.Text.Trim();
                cmd.Connection = Conn;
                cmd.ExecuteNonQuery();
            }

        }



        public void agregarClientes()
        {
            SqlConnection Conn = new SqlConnection();
            using (Conn = DboCon.obtenerConexion())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "agregarClientes";
                cmd.Parameters.Add("@Codigo_Cliente", SqlDbType.VarChar).Value = DropDownList7.SelectedValue.Trim();
                cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = TextBox1.Text.Trim();
                cmd.Parameters.Add("@Apellido", SqlDbType.VarChar).Value = TextBox2.Text.Trim();
                cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = DropDownList1.SelectedValue.Trim();
                cmd.Parameters.Add("@Telefono", SqlDbType.VarChar).Value = TextBox3.Text.Trim();
                cmd.Parameters.Add("@id_Rutina", SqlDbType.VarChar).Value = DropDownList2.SelectedValue.Trim();
                cmd.Connection = Conn;
                cmd.ExecuteNonQuery();
            }
        }


        public void eliminarClientes()
        {
            SqlConnection Conn = new SqlConnection();
            using (Conn = DboCon.obtenerConexion())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "eliminarClientes";
                cmd.Parameters.Add("@Codigo_Cliente", SqlDbType.Int).Value = DropDownList7.SelectedValue.Trim();
                cmd.Connection = Conn;
                cmd.ExecuteNonQuery();
            }

        }

        public void modificarClientes()
        {
            SqlConnection Conn = new SqlConnection();
            using (Conn = DboCon.obtenerConexion())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "modificarClientes";
                cmd.Parameters.Add("@Codigo_Cliente", SqlDbType.VarChar).Value = DropDownList7.SelectedValue.Trim();
                cmd.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = TextBox1.Text.Trim();
                cmd.Parameters.Add("@Apellido", SqlDbType.VarChar).Value = TextBox2.Text.Trim();
                cmd.Parameters.Add("@Telefono", SqlDbType.VarChar).Value = TextBox3.Text.Trim();
                cmd.Parameters.Add("@id_Rutina", SqlDbType.VarChar).Value = DropDownList2.SelectedValue.Trim();
                cmd.Connection = Conn;
                cmd.ExecuteNonQuery();
            }
        }




        protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e) // BOTON AGREGAR
        {
            agregarClientes();
            agregarDirecciones();
            LlenarGrid();


        }

        protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e) // BOTON ELIMINAR
        {
            eliminarDirecciones();
            eliminarClientes();
            LlenarGrid();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            modificarDirecciones();
            modificarClientes();
            LlenarGrid();
        }
    }
}