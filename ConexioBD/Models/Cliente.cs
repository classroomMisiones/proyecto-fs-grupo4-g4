using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace yaguarete.Models
{
    public class Cliente
    {
       public int idCliente { get; set; }
        public int NroDoc { get; set; }
        public string Apellido { get; set; }
        public string Nombre { get; set; }
        public DateTime FechcaNac { get; set; }
        public Sexo unSexo { get; set; }
        public string Calle { get; set; }
        public string Nro { get; set; }
        public int Piso { get; set; }
        public string  Dpto { get; set; }
        public Localidad unaLocalidad { get; set; }
        public string cvu { get; set; }
        public string alias { get; set; }
        public string mail { get; set; }
        public string contrasenia { get; set; }



}
}