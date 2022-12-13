using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace Gimnasios
{
    public class Usuarios
    {
        public static string emailUsuario { get; set; }
        public static string claveUsuario { get; set; }
        public static string rolUsuario { get; set; }
        public static string nombreUsuario { get; set; }
        public static string apellidosUsuario { get; set; }

        public static int validarLogin(string emailUsuario, string claveUsuario)
        {
            int retorno = 0;
            int tipo = 0;
            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = DboCon.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("validarUsuario", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@email", emailUsuario));
                    cmd.Parameters.Add(new SqlParameter("@clave", claveUsuario));

                    // retorno = cmd.ExecuteNonQuery();
                    using (SqlDataReader rdr = cmd.ExecuteReader())
                    {
                        if (rdr.Read())
                        {
                            Usuarios.rolUsuario = rdr["rol"].ToString();
                            retorno = 1;
                        }

                    }


                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
                Conn.Dispose();
            }

            return retorno;
        }
    }

}