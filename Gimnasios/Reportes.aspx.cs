﻿using System;
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
    public partial class Reportes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        public void LlenarGridDatosUsuario()
        {
            SqlConnection Conn = new SqlConnection();
            using (Conn = DboCon.obtenerConexion())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "consultarusuarioespe";
                cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = DropDownList1.SelectedValue.Trim();
                cmd.Connection = Conn;
                cmd.ExecuteNonQuery();
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
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

        public void LlenarGridDatosCliente()
        {
            SqlConnection Conn = new SqlConnection();
            using (Conn = DboCon.obtenerConexion())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "consultarClienteespe";
                cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = DropDownList1.SelectedValue.Trim();
                cmd.Connection = Conn;
                cmd.ExecuteNonQuery();
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
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

        public void LlenarGridDirecciones()
        {
            SqlConnection Conn = new SqlConnection();
            using (Conn = DboCon.obtenerConexion())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "consultarDireccionesespe";
                cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = DropDownList1.SelectedValue.Trim();
                cmd.Connection = Conn;
                cmd.ExecuteNonQuery();
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
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

        public void LlenarGridRutina()
        {
            SqlConnection Conn = new SqlConnection();
            using (Conn = DboCon.obtenerConexion())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "consultarRutinasClientes";
                cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = DropDownList1.SelectedValue.Trim();
                cmd.Connection = Conn;
                cmd.ExecuteNonQuery();
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
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



        protected void BUsuarios_Click(object sender, EventArgs e)
        {
            LlenarGridDatosUsuario();
        }

        protected void BCliente_Click(object sender, EventArgs e)
        {
            LlenarGridDatosCliente();
        }

        protected void Direcciones_Click(object sender, EventArgs e)
        {
            LlenarGridDirecciones();
        }

        protected void Rutinas_Click(object sender, EventArgs e)
        {
            LlenarGridRutina();
        }
    }
}