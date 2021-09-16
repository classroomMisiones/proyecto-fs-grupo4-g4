using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace yaguarete.Controllers
{
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


        // GET: api/Provincia/5
        [HttpGet]
        public IHttpActionResult Get(int id)
        {
            DataTable prov = new DataTable();
            prov = Conexion.select("Provincias", "Id_Provincia = " + id);
            return Ok(prov);
        }

        /* // POST: api/Provincia
         public void Post([FromBody] string value)
         {
         }*/

        // POST: api/Provincia

        [HttpPost]
        public IHttpActionResult Post(Models.Provincia unaProvincia)
        {
            string msg = "Todo OK!!!!!!!!";
           // try
          //  {
                string sql = "insert into Provincias (provincia) values ('" + unaProvincia.NomProvincia + "')";
                Conexion.insert(sql);
           // }catch(SqlException ex)
          //  {
              //  msg = ex.Message;
               
           // }
            return Ok(msg);
    
        }

        // PUT: api/Provincia/5
        public void Put(int id, [FromBody] string value)
        {
           
        }

        // DELETE: api/Provincia/5
        public void Delete(int id)
        {
        }

     
    }
}
