﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class Kategori
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Kategori()
    {
        this.Produktes = new HashSet<Produkte>();
    }

    public int ID { get; set; }
    public string EmriKategorise { get; set; }
    public string Pershkrimi { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Produkte> Produktes { get; set; }
}

public partial class Perdoruesit
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Perdoruesit()
    {
        this.Porosites = new HashSet<Porosite>();
    }

    public string ID { get; set; }
    public string Username { get; set; }
    public string Email { get; set; }
    public string Password { get; set; }
    public string Qyteti { get; set; }
    public int Roli { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Porosite> Porosites { get; set; }
}

public partial class Porosite
{
    public int ID_porosi { get; set; }
    public int ID_Prod { get; set; }
    public string ID_Perdorues { get; set; }
    public string Email_Perdoruesi { get; set; }

    public virtual Perdoruesit Perdoruesit { get; set; }
    public virtual Produkte Produkte { get; set; }
}

public partial class Produkte
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Produkte()
    {
        this.Porosites = new HashSet<Porosite>();
    }

    public int ID { get; set; }
    public string Emri { get; set; }
    public string Pershkrimi { get; set; }
    public string Imazh { get; set; }
    public string Cmimi { get; set; }
    public int KategoriID { get; set; }

    public virtual Kategori Kategori { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Porosite> Porosites { get; set; }
}