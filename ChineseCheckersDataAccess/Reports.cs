//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ChineseCheckersDataAccess
{
    using System;
    using System.Collections.Generic;
    
    public partial class Reports
    {
        public int Id { get; set; }
        public string Reason { get; set; }
        public Nullable<int> IdUser { get; set; }
        public Nullable<System.DateTime> DateCurrent { get; set; }
        public Nullable<System.DateTime> DateFinish { get; set; }
        public Nullable<int> Counter { get; set; }
    }
}
