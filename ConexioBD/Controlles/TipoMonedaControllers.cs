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
    public class TipoMonedaController : ApiController
    {

        // GET: api/TipoMoneda
        [HttpGet]
        public IHttpActionResult Get()
        {

            DataTable prov = new DataTable();

            prov = Conexion.select("Tipos_Monedas");
            return Ok(prov);
        }



        // GET: api/TipoMoneda/5
        [HttpGet]
        public IHttpActionResult Get(int id)
        {
            DataTable prov = new DataTable();
            prov = Conexion.select("Tipos_Monedas", "Id_TipoMoneda = " + id);
            return Ok(prov);
        }

        [HttpPost]
        public IHttpActionResult Post(Models.TipoMoneda unTipoMoneda)
        {
            string msg = "Todo OK!!!!!!!!";
            try
            {
                string sql = "insert into Tipos_Monedas (Tipo_Moneda) values ('" + unTipoMoneda.tipoMoneda + "')";
                Conexion.insert(sql);
            }
            catch (SqlException ex)
            {
                msg = ex.Message;

            }
            return Ok(msg);

        }


        // PUT: api/TipoMoneda/5
        public IHttpActionResult Put(int id, [FromBody] Models.TipoMoneda unTipoMoneda)
        {
            string msg = "Todo OK!!!!!!!!";
            try
            {
                string sql = "update Tipos_Monedas set tipo_moneda = '" + unTipoMoneda.tipoMoneda + "' where id_tipoMoneda = " + unTipoMoneda.id_tipoMoneda;
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