
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
    
public partial class CADASTRO_OBJETIVO
{

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public CADASTRO_OBJETIVO()
    {

        this.ALUNO_OBJETIVO = new HashSet<ALUNO_OBJETIVO>();

    }


    public short COD_OBJETIVO { get; set; }

    public string NOM_OBJETIVO { get; set; }



    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<ALUNO_OBJETIVO> ALUNO_OBJETIVO { get; set; }

}

}
