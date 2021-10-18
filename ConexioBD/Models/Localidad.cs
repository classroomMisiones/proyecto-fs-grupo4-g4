using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace yaguarete.Models
{
    public class Localidad
    {
       public int idLocalidad { get; set; }
       public string localidad { get; set; }
       public Provincia unaProvincia { get; set; }

    }
}