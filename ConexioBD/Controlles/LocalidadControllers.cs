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
    public class LocalidadController : ApiController
    {

        // GET: api/Localidad
        [HttpGet]
        public IHttpActionResult Get()
        {

            DataTable prov = new DataTable();

            prov = Conexion.select("Localidades");
            return Ok(prov);
        }



        // GET: api/Localidad/5
        [HttpGet]
        public IHttpActionResult Get(int id)
        {
            DataTable prov = new DataTable();
            prov = Conexion.select("Localidades", "Id_Localidad = " + id);
            return Ok(prov);
        }

        [HttpPost]
        public IHttpActionResult Post(Models.Localidad unaLocalidad)
        {
            string msg = "Todo OK!!!!!!!!";
            try
            {
                string sql = "insert into Tipos_Monedas (localidad,id_Provincia) values ('" + unaLocalidad.localidad + "', " + unaLocalidad.unaProvincia.IdProvincia +")";
                Conexion.insert(sql);
            }
            catch (SqlException ex)
            {
                msg = ex.Message;

            }
            return Ok(msg);

        }


        // PUT: api/Localidad/5
        public IHttpActionResult Put(int id, [FromBody] Models.Localidad unaLocalidad)
        {
            string msg = "Todo OK!!!!!!!!";
            try
            {
                string sql = "update Localidad set localidad = '" + unaLocalidad.localidad + "' id_Provincia = " + unaLocalidad.unaProvincia.IdProvincia + "where id_Localidad = " + unaLocalidad.idLocalidad;
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