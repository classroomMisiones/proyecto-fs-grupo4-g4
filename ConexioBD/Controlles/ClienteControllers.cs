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
    public class ClienteController : ApiController
    {

        // GET: api/Cliente
        [HttpGet]
        public IHttpActionResult Get()
        {

            DataTable prov = new DataTable();

            prov = Conexion.select("Clientes");
            return Ok(prov);
        }



        // GET: api/Localidad/5
        [HttpGet]
        public IHttpActionResult Get(int id)
        {
            DataTable prov = new DataTable();
            prov = Conexion.select("Clientes", "id_Cliente = " + id);
            return Ok(prov);
        }

        [HttpPost]
        public IHttpActionResult Post(Models.Cliente unCliente)
        {
            string msg = "Todo OK!!!!!!!!";
            try
            {
                string sql = "insert into Clientes " +
                    "(Nro_Doc,Apellido,Nombre,Fecha_Nac,id_Sexo,calle,Nro,Piso,Dpto,id_Localidad,enail,contrasenia) " +
                    "values (" + unCliente.NroDoc +
                     ", '" + unCliente.Apellido +
                     "', '" + unCliente.Nombre +
                     "', '" + unCliente.FechcaNac +
                     "', " + unCliente.unSexo.id_TipoSexo +
                     ", '" + unCliente.Calle +
                     "', '" + unCliente.Nro +
                     "', " + unCliente.Piso +
                     ", '" + unCliente.Dpto +
                     "', " + unCliente.unaLocalidad.idLocalidad +
                     ", '" + unCliente.mail +
                     "', '" + unCliente.contrasenia +
                     "')";
                Conexion.insert(sql);
            }
            catch (SqlException ex)
            {
                msg = ex.Message;

            }
            return Ok(msg);

        }


        // PUT: api/Cliente/5
        public IHttpActionResult Put(int id, [FromBody] Models.Cliente unCliente)
        {
            string msg = "Todo OK!!!!!!!!";
            try
            {
                string sql = "update Clientes set " +
                     "Nro_Doc =" + unCliente.NroDoc +
                     ", Apellido = '" + unCliente.Apellido +
                     "', Nombre = '" + unCliente.Nombre +
                     "', Fecha_Nac = '" + unCliente.FechcaNac +
                     "', id_Sexo = " + unCliente.unSexo.id_TipoSexo +
                     ", calle = '" + unCliente.Calle +
                     "', '" + unCliente.Nro +
                     "', " + unCliente.Piso +
                     ", '" + unCliente.Dpto +
                     "', " + unCliente.unaLocalidad.idLocalidad +
                     ", '" + unCliente.mail +
                     "', '" + unCliente.contrasenia +
                     "' where id_Cliente = " + unCliente.idCliente;
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