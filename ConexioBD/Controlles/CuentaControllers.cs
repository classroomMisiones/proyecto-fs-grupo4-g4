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
    public class CuentaController : ApiController
    {

        // GET: api/Cuenta
        [HttpGet]
        public IHttpActionResult Get()
        {

            DataTable prov = new DataTable();

            prov = Conexion.select("Cuentas");
            return Ok(prov);
        }



        // GET: api/cuenta/5
        [HttpGet]
        public IHttpActionResult Get(int id)
        {
            DataTable prov = new DataTable();
            prov = Conexion.select("Cuentas", "id_Estado = " + id);
            return Ok(prov);
        }

        [HttpPost]
        public IHttpActionResult Post(Models.Estado unEstado)
        {
            string msg = "Todo OK!!!!!!!!";
            try
            {
                string sql = "insert into Estados (estado) values ('" + unEstado.estado + "')";
                Conexion.insert(sql);
            }
            catch (SqlException ex)
            {
                msg = ex.Message;

            }
            return Ok(msg);

        }


        // PUT: api/Estado/5
        public IHttpActionResult Put(int id, [FromBody] Models.Estado unEstado)
        {
            string msg = "Todo OK!!!!!!!!";
            try
            {
                string sql = "update Estados set estado = '" + unEstado.estado + "' where id_sexo = " + unEstado.idEstado;
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