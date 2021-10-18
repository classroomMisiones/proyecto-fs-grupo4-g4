using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace yaguarete.Models
{
    public class Provincia
    {
        private int idProvincia;

        private string provincia;

         public int IdProvincia
          {
              get { return idProvincia; }
              set { idProvincia = value; }
          }

          public string NomProvincia
          {
              get { return provincia; }
              set { provincia = value; }
          }
        

    }
}