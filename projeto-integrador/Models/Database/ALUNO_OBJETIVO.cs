
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
    
public partial class ALUNO_OBJETIVO
{

    public int COD_ALUOBJ { get; set; }

    public short COD_OBJETIVO { get; set; }

    public long CPF_ALUNO { get; set; }

    public Nullable<System.DateTime> DIN_ALUOBJ { get; set; }

    public Nullable<System.DateTime> DFI_ALUOBJ { get; set; }

    public Nullable<bool> STA_ALUOBJ { get; set; }



    public virtual ALUNO ALUNO { get; set; }

    public virtual CADASTRO_OBJETIVO CADASTRO_OBJETIVO { get; set; }

}

}
