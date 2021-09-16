using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace yaguarete.Controllers
{
    public class Conexion
    {
        private static string conexion = ConfigurationManager.ConnectionStrings["yaguarete"].ConnectionString;
        private static SqlConnection conector = new SqlConnection(conexion);

        public static DataTable select(string tabla)
        {
            DataTable retorno = new DataTable();
            conector.Open();
            SqlDataAdapter adaptador = new SqlDataAdapter("Select * from "+tabla, conector);
            adaptador.Fill(retorno);
            conector.Close();
            return retorno;
        }

        public static DataTable select(string tabla,string condicion)
        {
            DataTable retorno = new DataTable();
            conector.Open();
            SqlDataAdapter adaptador = new SqlDataAdapter("Select * from " + tabla + " where " + condicion, conector );
            adaptador.Fill(retorno);
            conector.Close();
            return retorno;
            
        }

        public static void insert(string sql) 
        {

            
           
            conector.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sql;
            cmd.Connection = conector;
           
                cmd.ExecuteNonQuery();
          

          
            conector.Close();

        }
    }
}

