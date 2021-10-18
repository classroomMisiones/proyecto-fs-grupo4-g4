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
    public class SexoController : ApiController
    {

        // GET: api/Sexo
        [HttpGet]
        public IHttpActionResult Get()
        {
            
            DataTable prov = new DataTable();
        
            prov = Conexion.select("Sexos");
            return Ok(prov);
        }

       

        // GET: api/Sexo/5
        [HttpGet]
        public IHttpActionResult Get(int id)
        {
            DataTable prov = new DataTable();
            prov = Conexion.select("Sexos", "Id_Sexo = " + id);
            return Ok(prov);
        }

        [HttpPost]
        public IHttpActionResult Post(Models.Sexo unSexo)
        {
            string msg = "Todo OK!!!!!!!!";
            try
            {
                string sql = "insert into Sexos (sexo) values ('" + unSexo.sexo + "')";
                Conexion.insert(sql);
            }
            catch (SqlException ex)
            {
                msg = ex.Message;

            }
            return Ok(msg);

        }

        
        // PUT: api/Sexo/5
        public IHttpActionResult Put(int id, [FromBody] Models.Sexo unSexo)
        {
            string msg = "Todo OK!!!!!!!!";
            try
            {
                string sql = "update Sexos set sexo = '" + unSexo.sexo + "' where id_sexo = " + unSexo.id_TipoSexo;
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
