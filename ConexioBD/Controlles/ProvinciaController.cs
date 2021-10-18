using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;

namespace yaguarete.Controllers
{
  [EnableCors(origins: "http://localhost:4200/", headers: "*", methods: "*")]
    public class ProvinciaController : ApiController
    {

        // GET: api/Provincia
        [HttpGet]
        public IHttpActionResult Get()
        {
            //return new string[] { "value1", "value2" };
            DataTable prov = new DataTable();
            /* using (SqlConnection conector = new SqlConnection(conexion))
             {
                 conector.Open();
                 SqlDataAdapter adaptador = new SqlDataAdapter("Select * from provincias",conector);
                 adaptador.Fill(prov);
             }*/
            prov = Conexion.select("Provincias");
            return Ok(prov);
        }

        //Obtiene  una nueva PRovincia
        
        // GET: api/Provincia/5
        [HttpGet]
        public IHttpActionResult Get(int id)
        {
            DataTable prov = new DataTable();
            prov = Conexion.select("Provincias", "Id_Provincia = " + id);
            return Ok(prov);
        }

        // Inser una nueva provincia
        [HttpPost]
        public IHttpActionResult Post(Models.Provincia unaProvincia)
        {
           string msg = "Todo OK!!!!!!!!";
           try
           {
                string sql = "insert into Provincias (provincia) values ('" + unaProvincia.NomProvincia + "')";
                Conexion.insert(sql);
            }catch(SqlException ex)
           {
                msg = ex.Message;
               
           }
            return Ok(msg);
    
        }

        //Modifica el nombre de una Provincia
        // PUT: api/Provincia/5
        public IHttpActionResult Put(int id, [FromBody] Models.Provincia unaProvincia)
        {
            string msg = "Todo OK!!!!!!!!";
            try
            {
                string sql = "update Provincias set provincia = '" +unaProvincia.NomProvincia + "' where id_provincia = " + unaProvincia.IdProvincia;
                Conexion.insert(sql);
            }
            catch (SqlException ex)
            {
                msg = ex.Message;
                
            }
            return Ok(msg);
        }

        // DELETE: api/Provincia/5
        //Elimina una provincia
        public void Delete(int id)
        {
        }

     
    }
}
