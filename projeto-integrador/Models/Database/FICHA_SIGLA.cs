//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Projeto_Integrador.Models.Database
{
    using System;
    using System.Collections.Generic;
    
    public partial class FICHA_SIGLA
    {
        public long CPF_ALUNO { get; set; }
        public short COD_FICHA { get; set; }
        public short COD_FICHA_SIGLA { get; set; }
        public byte QTD_REPET_SIGLA { get; set; }
        public string TIPO_SIGLA { get; set; }
        public string STATUS_SIGLA { get; set; }
    
        public virtual FICHA FICHA { get; set; }
    }
}
