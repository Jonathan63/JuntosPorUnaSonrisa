
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/29/2021 21:26:12
-- Generated from EDMX file: D:\Geovanny SVT\Escritorio\Camera\JuntosPorUnaSonrisa\JuntosPorUnaSonrisa\Models\ModeloBaseDatos.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Database];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[ANTECEDENTE_FAMILIAR]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ANTECEDENTE_FAMILIAR];
GO
IF OBJECT_ID(N'[dbo].[ANTECEDENTE_NEUROPSICOLOGICO]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ANTECEDENTE_NEUROPSICOLOGICO];
GO
IF OBJECT_ID(N'[dbo].[ANTECEDENTE_NUTRICIONAL]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ANTECEDENTE_NUTRICIONAL];
GO
IF OBJECT_ID(N'[dbo].[ANTECEDENTE_ODONTO_FAMILIAR]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ANTECEDENTE_ODONTO_FAMILIAR];
GO
IF OBJECT_ID(N'[dbo].[ANTECEDENTE_PERINATAL]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ANTECEDENTE_PERINATAL];
GO
IF OBJECT_ID(N'[dbo].[ANTECEDENTE_QUIRURGICO]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ANTECEDENTE_QUIRURGICO];
GO
IF OBJECT_ID(N'[dbo].[BRIGADA]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BRIGADA];
GO
IF OBJECT_ID(N'[dbo].[CONSENTIMIENTO_INFORMADO]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CONSENTIMIENTO_INFORMADO];
GO
IF OBJECT_ID(N'[dbo].[CONSULTA]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CONSULTA];
GO
IF OBJECT_ID(N'[dbo].[DESARROLLO_PSICOMOTOR]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DESARROLLO_PSICOMOTOR];
GO
IF OBJECT_ID(N'[dbo].[DIAGNOSTICO_BUCAL]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DIAGNOSTICO_BUCAL];
GO
IF OBJECT_ID(N'[dbo].[ESPECIALIDAD]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ESPECIALIDAD];
GO
IF OBJECT_ID(N'[dbo].[EXA_SYS_ESTOMATOGMATICO]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EXA_SYS_ESTOMATOGMATICO];
GO
IF OBJECT_ID(N'[dbo].[EXPLORACION_FISICA]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EXPLORACION_FISICA];
GO
IF OBJECT_ID(N'[dbo].[FICHA_MEDICA]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FICHA_MEDICA];
GO
IF OBJECT_ID(N'[dbo].[FICHA_ODONTOLOGICA]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FICHA_ODONTOLOGICA];
GO
IF OBJECT_ID(N'[dbo].[FRECUENCIA]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FRECUENCIA];
GO
IF OBJECT_ID(N'[dbo].[HISTORIAL_FICHA]', 'U') IS NOT NULL
    DROP TABLE [dbo].[HISTORIAL_FICHA];
GO
IF OBJECT_ID(N'[dbo].[HISTORIALFICHAODO]', 'U') IS NOT NULL
    DROP TABLE [dbo].[HISTORIALFICHAODO];
GO
IF OBJECT_ID(N'[dbo].[HISTORIALFICHASCEE]', 'U') IS NOT NULL
    DROP TABLE [dbo].[HISTORIALFICHASCEE];
GO
IF OBJECT_ID(N'[dbo].[HISTORIALUSUARIOS]', 'U') IS NOT NULL
    DROP TABLE [dbo].[HISTORIALUSUARIOS];
GO
IF OBJECT_ID(N'[dbo].[HORARIO]', 'U') IS NOT NULL
    DROP TABLE [dbo].[HORARIO];
GO
IF OBJECT_ID(N'[dbo].[INDICADORES_SALUDB]', 'U') IS NOT NULL
    DROP TABLE [dbo].[INDICADORES_SALUDB];
GO
IF OBJECT_ID(N'[dbo].[INT_APARATO_SISTEMA]', 'U') IS NOT NULL
    DROP TABLE [dbo].[INT_APARATO_SISTEMA];
GO
IF OBJECT_ID(N'[dbo].[MEDICO]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MEDICO];
GO
IF OBJECT_ID(N'[dbo].[ODONTOGRAMA]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ODONTOGRAMA];
GO
IF OBJECT_ID(N'[dbo].[PERSONA]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PERSONA];
GO
IF OBJECT_ID(N'[dbo].[PLANES_DIAGNOSTICO]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PLANES_DIAGNOSTICO];
GO
IF OBJECT_ID(N'[dbo].[SIGNOS_VITALES]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SIGNOS_VITALES];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[TIPO_CONSULTA_ESPECIALIDAD]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TIPO_CONSULTA_ESPECIALIDAD];
GO
IF OBJECT_ID(N'[dbo].[TRATAMIENTO]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TRATAMIENTO];
GO
IF OBJECT_ID(N'[dbo].[USUARIO_SIS]', 'U') IS NOT NULL
    DROP TABLE [dbo].[USUARIO_SIS];
GO
IF OBJECT_ID(N'[dbo].[VACUNA]', 'U') IS NOT NULL
    DROP TABLE [dbo].[VACUNA];
GO
IF OBJECT_ID(N'[dbo].[VALORACION_FUNCIONAL]', 'U') IS NOT NULL
    DROP TABLE [dbo].[VALORACION_FUNCIONAL];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'ANTECEDENTE_FAMILIAR'
CREATE TABLE [dbo].[ANTECEDENTE_FAMILIAR] (
    [ID_FICHA_MEDICA] int  NOT NULL,
    [ANT_FAMILIAR] char(1)  NOT NULL,
    [ANT_NOMBRE] varchar(50)  NOT NULL,
    [ANT_SANO] char(1)  NULL,
    [ANT_ENFERMEDAD] varchar(100)  NULL,
    [ANT_FALLECIDO] char(1)  NULL,
    [ANT_CAUSA] varchar(100)  NULL,
    [ANT_FUMA] char(1)  NULL,
    [ANT_TOMA] char(1)  NULL,
    [ANT_DROGA] char(1)  NULL
);
GO

-- Creating table 'ANTECEDENTE_NEUROPSICOLOGICO'
CREATE TABLE [dbo].[ANTECEDENTE_NEUROPSICOLOGICO] (
    [ID_FICHA_MEDICA] int  NOT NULL,
    [NEU_CONDUCTACASA] char(1)  NULL,
    [NEU_CCASAEDAD] varchar(20)  NULL,
    [NEU_CONDUCTAESCUELA] char(1)  NULL,
    [NEU_CESCUELAEDAD] varchar(20)  NULL,
    [NEU_APROVECHAMIENTO] char(1)  NULL,
    [NEU_AEDAD] varchar(20)  NULL,
    [NEU_PIERDEEQUILIBRIO] char(1)  NULL,
    [NEU_EQUILIBRIOEDAD] varchar(20)  NULL,
    [NEU_DHABLAR] char(1)  NULL,
    [NEU_DHEDAD] varchar(20)  NULL,
    [NEU_CSUENO] char(1)  NULL,
    [NEU_CSUENOEDAD] varchar(20)  NULL,
    [NEU_DNOCHE] char(1)  NULL,
    [NEU_DNOCHEEDAD] varchar(20)  NULL,
    [NEU_DESMAYO] char(1)  NULL,
    [NEU_DESMAYOEDAD] varchar(20)  NULL,
    [NEU_VE] char(1)  NULL,
    [NEU_VEEDAD] varchar(20)  NULL,
    [NEU_OYE] char(1)  NULL,
    [NEU_OYEEDAD] varchar(20)  NULL
);
GO

-- Creating table 'ANTECEDENTE_NUTRICIONAL'
CREATE TABLE [dbo].[ANTECEDENTE_NUTRICIONAL] (
    [ID_FICHA_MEDICA] int  NOT NULL,
    [ANT_NUT_PESO] varchar(10)  NULL,
    [ANT_NUT_ESTATURA] varchar(10)  NULL,
    [ANT_NUT_IMC] varchar(10)  NULL,
    [ANT_NUT_COMSOLIEDAD] varchar(20)  NULL,
    [ANT_NUT_TIPO_COMIDA] char(1)  NULL,
    [ANT_NUT_DIETA_ESPECIAL] char(1)  NULL,
    [ANT_NUT_TIPO_DIETA] varchar(50)  NULL,
    [ANT_NUT_COMIDA] varchar(50)  NULL
);
GO

-- Creating table 'ANTECEDENTE_ODONTO_FAMILIAR'
CREATE TABLE [dbo].[ANTECEDENTE_ODONTO_FAMILIAR] (
    [ID_ODONTO] int  NOT NULL,
    [ALERGIAANTIBIOTICO] varchar(50)  NULL,
    [ALERGIAANESTECIA] varchar(50)  NULL,
    [HEMORRAGIAS] varchar(50)  NULL,
    [VIH] varchar(50)  NULL,
    [TUBERCULOSIS] varchar(50)  NULL,
    [ASMA] varchar(50)  NULL,
    [DIABETES] varchar(50)  NULL,
    [HIPERTENCION] varchar(50)  NULL,
    [ENFCARDIACA] varchar(50)  NULL,
    [ESPECIFIQUE] varchar(50)  NULL
);
GO

-- Creating table 'ANTECEDENTE_PERINATAL'
CREATE TABLE [dbo].[ANTECEDENTE_PERINATAL] (
    [ID_FICHA_MEDICA] int  NOT NULL,
    [ANT_NUMERO_EMBARAZO] char(1)  NULL,
    [ANT_EMBARAZO_MULTIPLE] char(1)  NULL,
    [ANT_TOMA_MEDICAMENTOS] char(1)  NULL,
    [ANT_QUE_MEDICAMENTOS] varchar(50)  NULL,
    [ANT_TOMA_VITAMINAS] char(1)  NULL,
    [ANT_QUE_VITAMINAS] varchar(50)  NULL,
    [ANT_DURACION_EMBARAZO] varchar(50)  NULL,
    [ANT_FUMO_TOMO] varchar(50)  NULL,
    [ANT_PARTO_NORMAL] char(1)  NULL,
    [ANT_OBSERVACION_PARTO] varchar(50)  NULL,
    [ANT_PESO] varchar(50)  NULL,
    [ANT_TALLA] varchar(50)  NULL,
    [ANT_PERIMETRO_CEFALICO] varchar(50)  NULL,
    [ANT_TAMIZ_METABOLICO] char(1)  NULL,
    [ANT_TAMIZ_AUDITIVO] char(1)  NULL,
    [ANT_PARTO_COMPLICACION] char(1)  NULL,
    [ANT_OBSERVACION_COMP_PARTO] varchar(50)  NULL,
    [ANT_TOMO_SENO_MATERNO] char(1)  NULL,
    [ANT_TIEMPO_SENO] varchar(50)  NULL,
    [ANT_TOMO_FORMULA] char(1)  NULL,
    [ANT_QUE_FORMULA] varchar(50)  NULL
);
GO

-- Creating table 'ANTECEDENTE_QUIRURGICO'
CREATE TABLE [dbo].[ANTECEDENTE_QUIRURGICO] (
    [ID_FICHA_MEDICA] int  NOT NULL,
    [ANT_QUIREFLUJO] varchar(2)  NULL,
    [ANT_QUITIROIDEAS] varchar(2)  NULL,
    [ANT_QUIESTRENIMIENTO] varchar(2)  NULL,
    [ANT_QUIDIARREA] varchar(2)  NULL,
    [ANT_QUINEUMONIA] varchar(2)  NULL,
    [ANT_QUIBRONQUIOLITIS] varchar(2)  NULL,
    [ANT_QUICRUP] varchar(2)  NULL,
    [ANT_QUIINFEVISURINARIAS] varchar(2)  NULL,
    [ANT_QUIVARICELA] varchar(2)  NULL,
    [ANT_QUIESCARLATINA] varchar(2)  NULL,
    [ANT_QUIDOLORCABEZA] varchar(2)  NULL,
    [ANT_QUINERVIOCISMO] varchar(2)  NULL,
    [ANT_QUICONVULCIONES] varchar(2)  NULL,
    [ANT_QUITRANSFUCIONES] varchar(2)  NULL,
    [ANT_QUIALERGIAS] varchar(500)  NULL,
    [ANT_QUIFRACTURAS] varchar(500)  NULL,
    [ANT_QUIACCIDENTES] varchar(500)  NULL,
    [ANT_QUICANCER] varchar(500)  NULL,
    [ANT_HOSPITALIZACION] varchar(500)  NULL,
    [CIRUGIAS] varchar(500)  NULL
);
GO

-- Creating table 'BRIGADA'
CREATE TABLE [dbo].[BRIGADA] (
    [BRI_ID] int  NOT NULL,
    [BRI_NOMBRE] varchar(100)  NULL,
    [BRI_DIRECCION] varchar(100)  NULL,
    [BRI_TELEFONO] varchar(20)  NULL,
    [BRI_CORREO] varchar(50)  NULL
);
GO

-- Creating table 'CONSENTIMIENTO_INFORMADO'
CREATE TABLE [dbo].[CONSENTIMIENTO_INFORMADO] (
    [ID_CONS_INFORMADO] int  NOT NULL,
    [CONS_NOMBRE_INSTITUCION] varchar(50)  NULL,
    [CONS_NOMBRE_RESPONSABLE] varchar(50)  NULL,
    [CONS_TELEFONO_RESPONSABLE] varchar(20)  NULL,
    [CONS_EMAIL_RESPONSABLE] varchar(50)  NULL
);
GO

-- Creating table 'CONSULTA'
CREATE TABLE [dbo].[CONSULTA] (
    [CONS_ID] int  NOT NULL,
    [CONS_FECHA] datetime  NULL,
    [CONS_MOTIVO] varchar(1000)  NULL,
    [CONS_DIAGNOSTICO] varchar(1000)  NULL
);
GO

-- Creating table 'DESARROLLO_PSICOMOTOR'
CREATE TABLE [dbo].[DESARROLLO_PSICOMOTOR] (
    [ID_FICHA_MEDICA] int  NOT NULL,
    [PSI_SOSTUVO_CABEZA] varchar(20)  NULL,
    [PSI_SONRIO] varchar(20)  NULL,
    [PSI_BALBUCEO] varchar(20)  NULL,
    [PSI_SENTO] varchar(20)  NULL,
    [PSI_GATEO] varchar(20)  NULL,
    [PSI_CAMINO_AYUDA] varchar(20)  NULL,
    [PSI_CAMINO_SOLO] varchar(20)  NULL,
    [PSI_DESEMPENHO_ESCOLAR] char(1)  NULL
);
GO

-- Creating table 'DIAGNOSTICO_BUCAL'
CREATE TABLE [dbo].[DIAGNOSTICO_BUCAL] (
    [ID_ODONTO] int  NOT NULL,
    [ID_DIAGNOSTICO] int  NOT NULL,
    [DESCRIPCION] varchar(100)  NULL,
    [CIE] varchar(20)  NULL,
    [PRE] varchar(20)  NULL,
    [DEF] varchar(20)  NULL
);
GO

-- Creating table 'ESPECIALIDAD'
CREATE TABLE [dbo].[ESPECIALIDAD] (
    [TCON_ID] int  NOT NULL,
    [TCON_NOMBRE] varchar(100)  NULL
);
GO

-- Creating table 'EXA_SYS_ESTOMATOGMATICO'
CREATE TABLE [dbo].[EXA_SYS_ESTOMATOGMATICO] (
    [ID_ODONTO] int  NOT NULL,
    [LABIOS] varchar(50)  NULL,
    [MEJILLAS] varchar(50)  NULL,
    [MAXILAR_SUPERIOR] varchar(50)  NULL,
    [MAXILAR_INFERIOR] varchar(50)  NULL,
    [LENGUA] varchar(50)  NULL,
    [PALADAR] varchar(50)  NULL,
    [PISO] varchar(50)  NULL,
    [CARRILLOS] varchar(50)  NULL,
    [GLANDULAS_SALIVALES] varchar(50)  NULL,
    [ORO_FARINGE] varchar(50)  NULL,
    [ATM] varchar(50)  NULL,
    [GANGLIOS] varchar(50)  NULL
);
GO

-- Creating table 'EXPLORACION_FISICA'
CREATE TABLE [dbo].[EXPLORACION_FISICA] (
    [ID_FICHA_MEDICA] int  NOT NULL,
    [EXPFIS_TA] varchar(10)  NULL,
    [EXPFIS_TEMPERATURA] varchar(10)  NULL,
    [EXPFIS_FRECUENCARD] varchar(100)  NULL,
    [EXPFIS_PULSO] varchar(10)  NULL,
    [EXPFIS_RESPIRATORIA] varchar(100)  NULL,
    [EXPFIS_CABEZA] varchar(500)  NULL,
    [EXPFIS_CUELLO] varchar(500)  NULL,
    [EXPFIS_TORAX] varchar(500)  NULL,
    [EXPFIS_ABDOMEN] varchar(500)  NULL,
    [EXPFIS_GENITALES] varchar(500)  NULL,
    [EXPFIS_NEUROLOGICO] varchar(500)  NULL,
    [EXPFIS_EXAMENRECTAL] varchar(500)  NULL,
    [EXPFIS_PELVICO] varchar(500)  NULL,
    [EXPFIS_EXTREMIDADES] varchar(500)  NULL
);
GO

-- Creating table 'FICHA_MEDICA'
CREATE TABLE [dbo].[FICHA_MEDICA] (
    [ID_FICHA_MEDICA] int  NOT NULL,
    [ID_PERSONA] char(10)  NOT NULL
);
GO

-- Creating table 'FICHA_ODONTOLOGICA'
CREATE TABLE [dbo].[FICHA_ODONTOLOGICA] (
    [ID_ODONTO] int  NOT NULL,
    [ID_PERSONA] char(10)  NULL,
    [PERSONAINFOADICIONAL] char(1)  NULL,
    [MOTIVOCONSULTA] varchar(500)  NULL,
    [ENFERMEDADACTUAL] varchar(500)  NULL,
    [EMBARAZO] char(1)  NULL
);
GO

-- Creating table 'FRECUENCIA'
CREATE TABLE [dbo].[FRECUENCIA] (
    [ID_FICHA_MEDICA] int  NOT NULL,
    [FRUTAS] varchar(30)  NULL,
    [VERDURAS] varchar(30)  NULL,
    [LECHEENTERA] varchar(30)  NULL,
    [LECHEDESLACTOSADA] varchar(30)  NULL,
    [YOGURT] varchar(30)  NULL,
    [YOGURTFRUTAS] varchar(30)  NULL,
    [QUESO] varchar(30)  NULL,
    [QUESOA] varchar(30)  NULL,
    [EMBUTIDOS] varchar(30)  NULL,
    [HUEVO] varchar(30)  NULL,
    [POLLO] varchar(30)  NULL,
    [RES] varchar(30)  NULL,
    [CERDO] varchar(30)  NULL,
    [MARISCOS] varchar(30)  NULL,
    [VISCERAS] varchar(30)  NULL,
    [LEGUMINOSAS] varchar(30)  NULL,
    [AGUA] varchar(30)  NULL,
    [BEBIDASA] varchar(30)  NULL,
    [SNACKD] varchar(30)  NULL,
    [SNACKS] varchar(30)  NULL
);
GO

-- Creating table 'HISTORIAL_FICHA'
CREATE TABLE [dbo].[HISTORIAL_FICHA] (
    [ID_HISTORIAL] int  NOT NULL,
    [ID_FICHA_MEDICA] int  NOT NULL,
    [FIC_MED_FECHA] datetime  NULL,
    [FICHAEXAMENLAVOR] varchar(5000)  NULL,
    [FICHATERAPEUTA] varchar(5000)  NULL,
    [FICHADIAGNOSTICO] varchar(50)  NULL,
    [FICHACOMENTARIO] varchar(5000)  NULL,
    [FICHACOMENTMEDICO] varchar(5000)  NULL,
    [FICHAPADECIMIENTOACT] varchar(5000)  NULL
);
GO

-- Creating table 'HISTORIALFICHAODO'
CREATE TABLE [dbo].[HISTORIALFICHAODO] (
    [ID] int  NOT NULL,
    [USUARIO] varchar(80)  NULL,
    [FECHA] varchar(50)  NULL,
    [ACCION] varchar(10)  NULL,
    [NUMERO] varchar(20)  NULL
);
GO

-- Creating table 'HISTORIALFICHASCEE'
CREATE TABLE [dbo].[HISTORIALFICHASCEE] (
    [ID] int  NOT NULL,
    [USUARIO] varchar(80)  NULL,
    [FECHA] varchar(50)  NULL,
    [ACCION] varchar(10)  NULL,
    [NUMERO] varchar(20)  NULL
);
GO

-- Creating table 'HISTORIALUSUARIOS'
CREATE TABLE [dbo].[HISTORIALUSUARIOS] (
    [ID] int  NOT NULL,
    [USUARIO] varchar(80)  NULL,
    [FECHA] varchar(50)  NULL,
    [ACCION] varchar(10)  NULL,
    [NUMERO] varchar(20)  NULL
);
GO

-- Creating table 'HORARIO'
CREATE TABLE [dbo].[HORARIO] (
    [HORA_ID] int  NOT NULL,
    [HORA_DIAS] varchar(100)  NULL,
    [HORA_INGRESO] varchar(100)  NULL,
    [HORA_SALIDA] varchar(100)  NULL
);
GO

-- Creating table 'INDICADORES_SALUDB'
CREATE TABLE [dbo].[INDICADORES_SALUDB] (
    [ID_ODONTO] int  NOT NULL,
    [PD_16] varchar(5)  NULL,
    [PD_17] varchar(5)  NULL,
    [PD_55] varchar(5)  NULL,
    [PD_11] varchar(5)  NULL,
    [PD_21] varchar(5)  NULL,
    [PD_51] varchar(5)  NULL,
    [PD_26] varchar(5)  NULL,
    [PD_27] varchar(5)  NULL,
    [PD_65] varchar(5)  NULL,
    [PD_36] varchar(5)  NULL,
    [PD_37] varchar(5)  NULL,
    [PD_75] varchar(5)  NULL,
    [PD_31] varchar(5)  NULL,
    [PD_41] varchar(5)  NULL,
    [PD_71] varchar(5)  NULL,
    [PD_46] varchar(5)  NULL,
    [PD_47] varchar(5)  NULL,
    [PD_85] varchar(5)  NULL,
    [PLACA16_55] varchar(3)  NULL,
    [PLACA11_51] varchar(3)  NULL,
    [PLACA26_65] varchar(3)  NULL,
    [PLACA36_75] varchar(3)  NULL,
    [PLACA31_71] varchar(3)  NULL,
    [PLACA46_85] varchar(3)  NULL,
    [CALDULO16_55] varchar(3)  NULL,
    [CALCULO11_51] varchar(3)  NULL,
    [CALCULO26_65] varchar(3)  NULL,
    [CALCULO36_75] varchar(3)  NULL,
    [CALCULO31_71] varchar(3)  NULL,
    [CALCULO46_85] varchar(3)  NULL,
    [GINGIVITIS16_55] varchar(3)  NULL,
    [GINGIVITIS11_55] varchar(3)  NULL,
    [GINGIVITIS26_65] varchar(3)  NULL,
    [GINGIVITIS36_75] varchar(3)  NULL,
    [GINGIVITIS31_71] varchar(3)  NULL,
    [GINGIVITIS46_85] varchar(3)  NULL,
    [TOTALPLACA] varchar(3)  NULL,
    [TOTALCALCULO] varchar(3)  NULL,
    [TOTALGINGIVITIS] varchar(3)  NULL,
    [ENF_PERIDONTAL] char(1)  NULL,
    [MAL_OCLUSION] char(1)  NULL,
    [FLOUROSIS] char(1)  NULL,
    [DC] decimal(18,0)  NULL,
    [DP] decimal(18,0)  NULL,
    [DO] decimal(18,0)  NULL,
    [C] decimal(18,0)  NULL,
    [E] decimal(18,0)  NULL,
    [O] decimal(18,0)  NULL,
    [TOTALCPO] decimal(18,0)  NULL,
    [TOTALCEO] decimal(18,0)  NULL
);
GO

-- Creating table 'INT_APARATO_SISTEMA'
CREATE TABLE [dbo].[INT_APARATO_SISTEMA] (
    [ID_FICHA_MEDICA] int  NOT NULL,
    [APA_DIGESTIVO] char(1)  NULL,
    [APA_DIGESTIVOESPECF] varchar(500)  NULL,
    [APA_CARDIOVASCULAR] char(1)  NULL,
    [APA_CARDIOESPECIF] varchar(500)  NULL,
    [APA_PULMONAR] char(1)  NULL,
    [APA_PULMONARESPECIF] varchar(500)  NULL,
    [APA_ENDOCRINO] char(1)  NULL,
    [APA_ENDOCRINOESPECIF] varchar(500)  NULL,
    [APA_URINARIO] char(1)  NULL,
    [APA_URINARIOESPECIF] varchar(500)  NULL,
    [APA_GENITAL] char(1)  NULL,
    [APA_GENITALESPECIF] varchar(500)  NULL,
    [APA_GINECOLOMENARCA] varchar(50)  NULL,
    [APA_GINECOLOFUM] varchar(50)  NULL,
    [APA_GINECOLORITMO] char(1)  NULL,
    [APA_GINECOLOESPECIF] varchar(200)  NULL,
    [APA_MUSCOESQUELATICO] char(1)  NULL,
    [APA_MESQUELEESPECIF] varchar(500)  NULL,
    [APA_NERVIOSO] char(1)  NULL,
    [APA_NERVIOSOESPECIF] varchar(500)  NULL,
    [APA_PSIQUIATRICO] char(1)  NULL,
    [APA_PSIQUIATRICOESPECIF] varchar(500)  NULL
);
GO

-- Creating table 'MEDICO'
CREATE TABLE [dbo].[MEDICO] (
    [MED_ID] int  NOT NULL,
    [HORA_ID] int  NOT NULL,
    [TCON_ID] int  NOT NULL,
    [MED_NOMBRE] varchar(100)  NULL,
    [MED_APELLIDO] varchar(100)  NULL
);
GO

-- Creating table 'ODONTOGRAMA'
CREATE TABLE [dbo].[ODONTOGRAMA] (
    [ID_ODONTO] int  NOT NULL,
    [NDIENTE] char(2)  NOT NULL,
    [DESCRIPCION] varchar(500)  NULL,
    [ENFERMEDAD] varchar(100)  NULL,
    [IDDIENTE] int  NOT NULL
);
GO

-- Creating table 'PERSONA'
CREATE TABLE [dbo].[PERSONA] (
    [ID_PERSONA] char(10)  NOT NULL,
    [PER_APELLIDO_PATERNO] varchar(50)  NULL,
    [PER_APELLIDO_MATERNO] varchar(50)  NULL,
    [PER_NOMBRES] varchar(50)  NULL,
    [PER_EDAD] varchar(50)  NULL,
    [PER_SEXO] char(1)  NULL,
    [PER_RELIGION] varchar(50)  NULL,
    [PER_MEDICO_TRATANTE] varchar(50)  NULL,
    [PER_NOMBRE_MADRE] varchar(50)  NULL,
    [EDAD_MADRE] varchar(50)  NULL,
    [PER_NOMBRE_PADRE] varchar(50)  NULL,
    [PER_EDAD_PADRE] varchar(50)  NULL,
    [PER_CEDULA] char(10)  NULL
);
GO

-- Creating table 'PLANES_DIAGNOSTICO'
CREATE TABLE [dbo].[PLANES_DIAGNOSTICO] (
    [ID_ODONTO] int  NOT NULL,
    [BIOMETRIA] varchar(50)  NULL,
    [QUIMICA_SANGUINEA] varchar(50)  NULL,
    [RAYOS_X] varchar(50)  NULL,
    [ESPECIFIQUE] varchar(50)  NULL
);
GO

-- Creating table 'SIGNOS_VITALES'
CREATE TABLE [dbo].[SIGNOS_VITALES] (
    [ID_ODONTO] int  NOT NULL,
    [PRESION_ARTERIAL] varchar(10)  NULL,
    [FRECUENCIA_CARDIACA] varchar(10)  NULL,
    [TEMPERATURA] varchar(10)  NULL,
    [F_RESPIRATORIA] varchar(10)  NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'TIPO_CONSULTA_ESPECIALIDAD'
CREATE TABLE [dbo].[TIPO_CONSULTA_ESPECIALIDAD] (
    [TCON_ID] int  NOT NULL,
    [TCON_NOMBRE] char(1)  NULL
);
GO

-- Creating table 'TRATAMIENTO'
CREATE TABLE [dbo].[TRATAMIENTO] (
    [ID_ODONTO] int  NOT NULL,
    [ID_SECION] int  NOT NULL,
    [FECHA] datetime  NULL,
    [DIAGNOSTICO] varchar(100)  NULL,
    [PROCEDIMIENTOS] varchar(100)  NULL,
    [PRESCRIPCIONESA] varchar(100)  NULL,
    [CODIGO] varchar(20)  NULL,
    [FIRMA] varchar(20)  NULL,
    [ZONA] varchar(500)  NULL
);
GO

-- Creating table 'USUARIO_SIS'
CREATE TABLE [dbo].[USUARIO_SIS] (
    [USR_ID] varchar(30)  NOT NULL,
    [USR_SECONDNAME] varchar(25)  NULL,
    [USR_APELLIDOP] varchar(25)  NULL,
    [USR_APELLIDOM] varchar(25)  NULL,
    [USR_CEDULA] varchar(25)  NULL,
    [USR_FIRSTNAME] varchar(25)  NULL,
    [USR_ROLES] varchar(50)  NULL,
    [USR_CONTRASENA] varchar(100)  NULL,
    [USR_ESTADO] char(1)  NULL
);
GO

-- Creating table 'VACUNA'
CREATE TABLE [dbo].[VACUNA] (
    [ID_FICHA_MEDICA] int  NOT NULL,
    [VAC_TUBERCULOSIS] char(1)  NULL,
    [VAC_POLIO] char(1)  NULL,
    [VAC_POLIOCUANTAS] varchar(50)  NULL,
    [VAC_PENTAVALENTE] char(1)  NULL,
    [VAC_PENTAVALENTECUANTAS] varchar(50)  NULL,
    [VAC_TRIPLEVIRAL] char(1)  NULL,
    [VAC_TRIPLEVIRALCUANTAS] varchar(50)  NULL,
    [VAC_VARICELA] char(1)  NULL,
    [VAC_NEUMOCOCOS] char(1)  NULL,
    [VAC_HEPATITIS] char(1)  NULL,
    [VAC_INFLUENZA] char(1)  NULL,
    [VAC_ROTAVIRUS] char(1)  NULL,
    [VAC_OTRAS] char(1)  NULL,
    [VAC_OTRASESPECIFIQUE] varchar(50)  NULL
);
GO

-- Creating table 'VALORACION_FUNCIONAL'
CREATE TABLE [dbo].[VALORACION_FUNCIONAL] (
    [ID_FICHA_MEDICA] int  NOT NULL,
    [VAL_APOYO_ESPECIAL] char(1)  NULL,
    [VAL_AUDITIVO] char(1)  NULL,
    [VAL_MOTOR] char(1)  NULL,
    [VAL_VISUAL] char(1)  NULL,
    [VAL_IDIOMA] char(1)  NULL,
    [VAL_OTRO] char(1)  NULL,
    [VAL_ESPECIFICACION] varchar(50)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID_FICHA_MEDICA], [ANT_NOMBRE] in table 'ANTECEDENTE_FAMILIAR'
ALTER TABLE [dbo].[ANTECEDENTE_FAMILIAR]
ADD CONSTRAINT [PK_ANTECEDENTE_FAMILIAR]
    PRIMARY KEY CLUSTERED ([ID_FICHA_MEDICA], [ANT_NOMBRE] ASC);
GO

-- Creating primary key on [ID_FICHA_MEDICA] in table 'ANTECEDENTE_NEUROPSICOLOGICO'
ALTER TABLE [dbo].[ANTECEDENTE_NEUROPSICOLOGICO]
ADD CONSTRAINT [PK_ANTECEDENTE_NEUROPSICOLOGICO]
    PRIMARY KEY CLUSTERED ([ID_FICHA_MEDICA] ASC);
GO

-- Creating primary key on [ID_FICHA_MEDICA] in table 'ANTECEDENTE_NUTRICIONAL'
ALTER TABLE [dbo].[ANTECEDENTE_NUTRICIONAL]
ADD CONSTRAINT [PK_ANTECEDENTE_NUTRICIONAL]
    PRIMARY KEY CLUSTERED ([ID_FICHA_MEDICA] ASC);
GO

-- Creating primary key on [ID_ODONTO] in table 'ANTECEDENTE_ODONTO_FAMILIAR'
ALTER TABLE [dbo].[ANTECEDENTE_ODONTO_FAMILIAR]
ADD CONSTRAINT [PK_ANTECEDENTE_ODONTO_FAMILIAR]
    PRIMARY KEY CLUSTERED ([ID_ODONTO] ASC);
GO

-- Creating primary key on [ID_FICHA_MEDICA] in table 'ANTECEDENTE_PERINATAL'
ALTER TABLE [dbo].[ANTECEDENTE_PERINATAL]
ADD CONSTRAINT [PK_ANTECEDENTE_PERINATAL]
    PRIMARY KEY CLUSTERED ([ID_FICHA_MEDICA] ASC);
GO

-- Creating primary key on [ID_FICHA_MEDICA] in table 'ANTECEDENTE_QUIRURGICO'
ALTER TABLE [dbo].[ANTECEDENTE_QUIRURGICO]
ADD CONSTRAINT [PK_ANTECEDENTE_QUIRURGICO]
    PRIMARY KEY CLUSTERED ([ID_FICHA_MEDICA] ASC);
GO

-- Creating primary key on [BRI_ID] in table 'BRIGADA'
ALTER TABLE [dbo].[BRIGADA]
ADD CONSTRAINT [PK_BRIGADA]
    PRIMARY KEY CLUSTERED ([BRI_ID] ASC);
GO

-- Creating primary key on [ID_CONS_INFORMADO] in table 'CONSENTIMIENTO_INFORMADO'
ALTER TABLE [dbo].[CONSENTIMIENTO_INFORMADO]
ADD CONSTRAINT [PK_CONSENTIMIENTO_INFORMADO]
    PRIMARY KEY CLUSTERED ([ID_CONS_INFORMADO] ASC);
GO

-- Creating primary key on [CONS_ID] in table 'CONSULTA'
ALTER TABLE [dbo].[CONSULTA]
ADD CONSTRAINT [PK_CONSULTA]
    PRIMARY KEY CLUSTERED ([CONS_ID] ASC);
GO

-- Creating primary key on [ID_FICHA_MEDICA] in table 'DESARROLLO_PSICOMOTOR'
ALTER TABLE [dbo].[DESARROLLO_PSICOMOTOR]
ADD CONSTRAINT [PK_DESARROLLO_PSICOMOTOR]
    PRIMARY KEY CLUSTERED ([ID_FICHA_MEDICA] ASC);
GO

-- Creating primary key on [ID_ODONTO], [ID_DIAGNOSTICO] in table 'DIAGNOSTICO_BUCAL'
ALTER TABLE [dbo].[DIAGNOSTICO_BUCAL]
ADD CONSTRAINT [PK_DIAGNOSTICO_BUCAL]
    PRIMARY KEY CLUSTERED ([ID_ODONTO], [ID_DIAGNOSTICO] ASC);
GO

-- Creating primary key on [TCON_ID] in table 'ESPECIALIDAD'
ALTER TABLE [dbo].[ESPECIALIDAD]
ADD CONSTRAINT [PK_ESPECIALIDAD]
    PRIMARY KEY CLUSTERED ([TCON_ID] ASC);
GO

-- Creating primary key on [ID_ODONTO] in table 'EXA_SYS_ESTOMATOGMATICO'
ALTER TABLE [dbo].[EXA_SYS_ESTOMATOGMATICO]
ADD CONSTRAINT [PK_EXA_SYS_ESTOMATOGMATICO]
    PRIMARY KEY CLUSTERED ([ID_ODONTO] ASC);
GO

-- Creating primary key on [ID_FICHA_MEDICA] in table 'EXPLORACION_FISICA'
ALTER TABLE [dbo].[EXPLORACION_FISICA]
ADD CONSTRAINT [PK_EXPLORACION_FISICA]
    PRIMARY KEY CLUSTERED ([ID_FICHA_MEDICA] ASC);
GO

-- Creating primary key on [ID_FICHA_MEDICA] in table 'FICHA_MEDICA'
ALTER TABLE [dbo].[FICHA_MEDICA]
ADD CONSTRAINT [PK_FICHA_MEDICA]
    PRIMARY KEY CLUSTERED ([ID_FICHA_MEDICA] ASC);
GO

-- Creating primary key on [ID_ODONTO] in table 'FICHA_ODONTOLOGICA'
ALTER TABLE [dbo].[FICHA_ODONTOLOGICA]
ADD CONSTRAINT [PK_FICHA_ODONTOLOGICA]
    PRIMARY KEY CLUSTERED ([ID_ODONTO] ASC);
GO

-- Creating primary key on [ID_FICHA_MEDICA] in table 'FRECUENCIA'
ALTER TABLE [dbo].[FRECUENCIA]
ADD CONSTRAINT [PK_FRECUENCIA]
    PRIMARY KEY CLUSTERED ([ID_FICHA_MEDICA] ASC);
GO

-- Creating primary key on [ID_HISTORIAL], [ID_FICHA_MEDICA] in table 'HISTORIAL_FICHA'
ALTER TABLE [dbo].[HISTORIAL_FICHA]
ADD CONSTRAINT [PK_HISTORIAL_FICHA]
    PRIMARY KEY CLUSTERED ([ID_HISTORIAL], [ID_FICHA_MEDICA] ASC);
GO

-- Creating primary key on [ID] in table 'HISTORIALFICHAODO'
ALTER TABLE [dbo].[HISTORIALFICHAODO]
ADD CONSTRAINT [PK_HISTORIALFICHAODO]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'HISTORIALFICHASCEE'
ALTER TABLE [dbo].[HISTORIALFICHASCEE]
ADD CONSTRAINT [PK_HISTORIALFICHASCEE]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'HISTORIALUSUARIOS'
ALTER TABLE [dbo].[HISTORIALUSUARIOS]
ADD CONSTRAINT [PK_HISTORIALUSUARIOS]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [HORA_ID] in table 'HORARIO'
ALTER TABLE [dbo].[HORARIO]
ADD CONSTRAINT [PK_HORARIO]
    PRIMARY KEY CLUSTERED ([HORA_ID] ASC);
GO

-- Creating primary key on [ID_ODONTO] in table 'INDICADORES_SALUDB'
ALTER TABLE [dbo].[INDICADORES_SALUDB]
ADD CONSTRAINT [PK_INDICADORES_SALUDB]
    PRIMARY KEY CLUSTERED ([ID_ODONTO] ASC);
GO

-- Creating primary key on [ID_FICHA_MEDICA] in table 'INT_APARATO_SISTEMA'
ALTER TABLE [dbo].[INT_APARATO_SISTEMA]
ADD CONSTRAINT [PK_INT_APARATO_SISTEMA]
    PRIMARY KEY CLUSTERED ([ID_FICHA_MEDICA] ASC);
GO

-- Creating primary key on [MED_ID], [HORA_ID], [TCON_ID] in table 'MEDICO'
ALTER TABLE [dbo].[MEDICO]
ADD CONSTRAINT [PK_MEDICO]
    PRIMARY KEY CLUSTERED ([MED_ID], [HORA_ID], [TCON_ID] ASC);
GO

-- Creating primary key on [ID_ODONTO], [IDDIENTE] in table 'ODONTOGRAMA'
ALTER TABLE [dbo].[ODONTOGRAMA]
ADD CONSTRAINT [PK_ODONTOGRAMA]
    PRIMARY KEY CLUSTERED ([ID_ODONTO], [IDDIENTE] ASC);
GO

-- Creating primary key on [ID_PERSONA] in table 'PERSONA'
ALTER TABLE [dbo].[PERSONA]
ADD CONSTRAINT [PK_PERSONA]
    PRIMARY KEY CLUSTERED ([ID_PERSONA] ASC);
GO

-- Creating primary key on [ID_ODONTO] in table 'PLANES_DIAGNOSTICO'
ALTER TABLE [dbo].[PLANES_DIAGNOSTICO]
ADD CONSTRAINT [PK_PLANES_DIAGNOSTICO]
    PRIMARY KEY CLUSTERED ([ID_ODONTO] ASC);
GO

-- Creating primary key on [ID_ODONTO] in table 'SIGNOS_VITALES'
ALTER TABLE [dbo].[SIGNOS_VITALES]
ADD CONSTRAINT [PK_SIGNOS_VITALES]
    PRIMARY KEY CLUSTERED ([ID_ODONTO] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [TCON_ID] in table 'TIPO_CONSULTA_ESPECIALIDAD'
ALTER TABLE [dbo].[TIPO_CONSULTA_ESPECIALIDAD]
ADD CONSTRAINT [PK_TIPO_CONSULTA_ESPECIALIDAD]
    PRIMARY KEY CLUSTERED ([TCON_ID] ASC);
GO

-- Creating primary key on [ID_ODONTO], [ID_SECION] in table 'TRATAMIENTO'
ALTER TABLE [dbo].[TRATAMIENTO]
ADD CONSTRAINT [PK_TRATAMIENTO]
    PRIMARY KEY CLUSTERED ([ID_ODONTO], [ID_SECION] ASC);
GO

-- Creating primary key on [USR_ID] in table 'USUARIO_SIS'
ALTER TABLE [dbo].[USUARIO_SIS]
ADD CONSTRAINT [PK_USUARIO_SIS]
    PRIMARY KEY CLUSTERED ([USR_ID] ASC);
GO

-- Creating primary key on [ID_FICHA_MEDICA] in table 'VACUNA'
ALTER TABLE [dbo].[VACUNA]
ADD CONSTRAINT [PK_VACUNA]
    PRIMARY KEY CLUSTERED ([ID_FICHA_MEDICA] ASC);
GO

-- Creating primary key on [ID_FICHA_MEDICA] in table 'VALORACION_FUNCIONAL'
ALTER TABLE [dbo].[VALORACION_FUNCIONAL]
ADD CONSTRAINT [PK_VALORACION_FUNCIONAL]
    PRIMARY KEY CLUSTERED ([ID_FICHA_MEDICA] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------