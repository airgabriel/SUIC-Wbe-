using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SUIC_Wbe_
{
    [Serializable]
    public class RepuveModel
    {
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Curp { get; set; }
        public string Fecha_Nacimiento { get; set; }
        public string Placa_Vehicular { get; set; }

    }
}