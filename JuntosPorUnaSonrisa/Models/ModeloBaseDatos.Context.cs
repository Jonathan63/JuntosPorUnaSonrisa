﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace JuntosPorUnaSonrisa.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class BaseDatosEntities : DbContext
    {
        public BaseDatosEntities()
            : base("name=BaseDatosEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<ANTECEDENTE_FAMILIAR> ANTECEDENTE_FAMILIAR { get; set; }
        public virtual DbSet<ANTECEDENTE_NEUROPSICOLOGICO> ANTECEDENTE_NEUROPSICOLOGICO { get; set; }
        public virtual DbSet<ANTECEDENTE_NUTRICIONAL> ANTECEDENTE_NUTRICIONAL { get; set; }
        public virtual DbSet<ANTECEDENTE_ODONTO_FAMILIAR> ANTECEDENTE_ODONTO_FAMILIAR { get; set; }
        public virtual DbSet<ANTECEDENTE_PERINATAL> ANTECEDENTE_PERINATAL { get; set; }
        public virtual DbSet<ANTECEDENTE_QUIRURGICO> ANTECEDENTE_QUIRURGICO { get; set; }
        public virtual DbSet<BRIGADA> BRIGADA { get; set; }
        public virtual DbSet<CONSENTIMIENTO_INFORMADO> CONSENTIMIENTO_INFORMADO { get; set; }
        public virtual DbSet<CONSULTA> CONSULTA { get; set; }
        public virtual DbSet<DESARROLLO_PSICOMOTOR> DESARROLLO_PSICOMOTOR { get; set; }
        public virtual DbSet<DIAGNOSTICO_BUCAL> DIAGNOSTICO_BUCAL { get; set; }
        public virtual DbSet<ESPECIALIDAD> ESPECIALIDAD { get; set; }
        public virtual DbSet<EXA_SYS_ESTOMATOGMATICO> EXA_SYS_ESTOMATOGMATICO { get; set; }
        public virtual DbSet<EXPLORACION_FISICA> EXPLORACION_FISICA { get; set; }
        public virtual DbSet<FICHA_MEDICA> FICHA_MEDICA { get; set; }
        public virtual DbSet<FICHA_ODONTOLOGICA> FICHA_ODONTOLOGICA { get; set; }
        public virtual DbSet<FRECUENCIA> FRECUENCIA { get; set; }
        public virtual DbSet<HISTORIAL_FICHA> HISTORIAL_FICHA { get; set; }
        public virtual DbSet<HISTORIALFICHAODO> HISTORIALFICHAODO { get; set; }
        public virtual DbSet<HISTORIALFICHASCEE> HISTORIALFICHASCEE { get; set; }
        public virtual DbSet<HISTORIALUSUARIOS> HISTORIALUSUARIOS { get; set; }
        public virtual DbSet<HORARIO> HORARIO { get; set; }
        public virtual DbSet<INDICADORES_SALUDB> INDICADORES_SALUDB { get; set; }
        public virtual DbSet<INT_APARATO_SISTEMA> INT_APARATO_SISTEMA { get; set; }
        public virtual DbSet<MEDICO> MEDICO { get; set; }
        public virtual DbSet<ODONTOGRAMA> ODONTOGRAMA { get; set; }
        public virtual DbSet<PERSONA> PERSONA { get; set; }
        public virtual DbSet<PLANES_DIAGNOSTICO> PLANES_DIAGNOSTICO { get; set; }
        public virtual DbSet<SIGNOS_VITALES> SIGNOS_VITALES { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<TIPO_CONSULTA_ESPECIALIDAD> TIPO_CONSULTA_ESPECIALIDAD { get; set; }
        public virtual DbSet<TRATAMIENTO> TRATAMIENTO { get; set; }
        public virtual DbSet<USUARIO_SIS> USUARIO_SIS { get; set; }
        public virtual DbSet<VACUNA> VACUNA { get; set; }
        public virtual DbSet<VALORACION_FUNCIONAL> VALORACION_FUNCIONAL { get; set; }
    }
}
