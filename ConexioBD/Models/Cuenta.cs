using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace yaguarete.Models
{
    public class Cuenta
    {
        public TipoMoneda unTipoMoneda { get; set; }
        public Cliente unCliente { get; set; }
        public double Monto_Disponible { get; set; }
        public Estado unEstado { get; set; }
    }
}