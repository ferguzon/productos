//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Entidad
{
    using System;
    using System.Collections.Generic;
    
    public partial class Productos
    {
        public int Id { get; set; }
        public string Descripcion { get; set; }
        public int Existencia { get; set; }
        public decimal PrecioUnitario { get; set; }
        public System.DateTime FechaProceso { get; set; }
        public int UsuarioProceso { get; set; }
    }
}