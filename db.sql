USE [Supervisores]
GO
/****** Object:  Table [dbo].[Cargo]    Script Date: 11/10/2015 14:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cargo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Cargo](
	[CargiId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Cargo] PRIMARY KEY CLUSTERED 
(
	[CargiId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Capacitacion]    Script Date: 11/10/2015 14:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Capacitacion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Capacitacion](
	[CapacitacionId] [int] IDENTITY(1,1) NOT NULL,
	[PersonaId] [int] NOT NULL,
	[Capacitacion] [varchar](250) NOT NULL,
	[FechaInicio] [char](10) NOT NULL,
	[FechaFin] [char](10) NOT NULL,
	[HorasLectivas] [int] NULL,
	[Institucion] [varchar](250) NOT NULL,
	[PaisId] [int] NOT NULL,
	[Documento] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Capacitacion] PRIMARY KEY CLUSTERED 
(
	[CapacitacionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Area]    Script Date: 11/10/2015 14:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Area]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Area](
	[AreaId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Area] PRIMARY KEY CLUSTERED 
(
	[AreaId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PersonaIdioma]    Script Date: 11/10/2015 14:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PersonaIdioma]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PersonaIdioma](
	[PersonaIdiomaId] [int] IDENTITY(1,1) NOT NULL,
	[PersonaId] [int] NOT NULL,
	[IdiomaId] [int] NOT NULL,
	[NivelEscrituraId] [int] NOT NULL,
	[NivelHabladoId] [int] NOT NULL,
	[NivelLecturaId] [int] NOT NULL,
	[Documento] [varchar](max) NOT NULL,
 CONSTRAINT [PK_PersonaIdioma] PRIMARY KEY CLUSTERED 
(
	[PersonaIdiomaId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Persona]    Script Date: 11/10/2015 14:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Persona]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Persona](
	[PersonaId] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](250) NOT NULL,
	[Apellidos] [varchar](250) NOT NULL,
	[Sexo] [char](1) NOT NULL,
	[FechaNacimiento] [char](10) NOT NULL,
	[Email] [varchar](250) NOT NULL,
	[Telefono] [varchar](50) NULL,
	[Celular] [varchar](50) NULL,
	[TipoDocumentoId] [int] NOT NULL,
	[NumeroDocumento] [varchar](50) NOT NULL,
	[PaisNacimientoId] [int] NOT NULL,
	[Direccion] [varchar](max) NOT NULL,
	[DistritoId] [int] NOT NULL,
	[RUC] [varchar](50) NOT NULL,
	[Computacion] [bit] NOT NULL,
	[NivelComputacionId] [int] NOT NULL,
	[TrabajoEnAPCI] [bit] NOT NULL,
	[FamiliaresEnAPCI] [bit] NOT NULL,
	[DirectivoONGD_ENIEX] [bit] NOT NULL,
	[FueDirectivoONGD_ENIEX] [bit] NOT NULL,
	[Banco] [varchar](50) NULL,
	[Cuenta] [varchar](50) NULL,
	[CCI] [varchar](50) NULL,
	[Foto] [varchar](max) NOT NULL,
	[Documento] [varchar](max) NOT NULL,
	[CV] [varchar](max) NULL,
	[Hash] [varchar](max) NULL,
	[Supervisor] [bit] NOT NULL,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[PersonaId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Nivel]    Script Date: 11/10/2015 14:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Nivel]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Nivel](
	[NivelId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Nivel] PRIMARY KEY CLUSTERED 
(
	[NivelId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Idioma]    Script Date: 11/10/2015 14:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Idioma]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Idioma](
	[IdiomaId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Idioma] PRIMARY KEY CLUSTERED 
(
	[IdiomaId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Grado]    Script Date: 11/10/2015 14:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Grado]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Grado](
	[GradoId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Grado] PRIMARY KEY CLUSTERED 
(
	[GradoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FormacionAcademica]    Script Date: 11/10/2015 14:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FormacionAcademica]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FormacionAcademica](
	[FormacionAcademicaId] [int] IDENTITY(1,1) NOT NULL,
	[PersonaId] [int] NOT NULL,
	[GradoAcademicoId] [int] NOT NULL,
	[Especialidad] [varchar](350) NOT NULL,
	[FechaExpedicion] [char](10) NOT NULL,
	[Institucion] [varchar](550) NOT NULL,
	[PaisId] [int] NOT NULL,
	[Documento] [varchar](max) NOT NULL,
 CONSTRAINT [PK_FormacionAcademica] PRIMARY KEY CLUSTERED 
(
	[FormacionAcademicaId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Experiencia]    Script Date: 11/10/2015 14:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Experiencia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Experiencia](
	[ExperienciaId] [int] IDENTITY(1,1) NOT NULL,
	[PersonaId] [int] NOT NULL,
	[Empresa] [varchar](250) NOT NULL,
	[Cargo] [varchar](250) NOT NULL,
	[FechaInicio] [char](10) NOT NULL,
	[FechaFin] [char](10) NOT NULL,
	[Descripcion] [text] NOT NULL,
	[AreaId] [int] NOT NULL,
	[Area] [varchar](150) NULL,
	[RubroId] [int] NOT NULL,
	[SectorId] [int] NOT NULL,
	[PaisId] [int] NOT NULL,
	[Documento] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Experiencia] PRIMARY KEY CLUSTERED 
(
	[ExperienciaId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sector]    Script Date: 11/10/2015 14:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sector]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sector](
	[SectorId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Sector] PRIMARY KEY CLUSTERED 
(
	[SectorId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rubro]    Script Date: 11/10/2015 14:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Rubro]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Rubro](
	[RubroId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Rubro] PRIMARY KEY CLUSTERED 
(
	[RubroId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Plan]    Script Date: 11/10/2015 14:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Plan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Plan](
	[PlanId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](max) NOT NULL,
	[Periodo] [char](10) NOT NULL,
 CONSTRAINT [PK_Plan] PRIMARY KEY CLUSTERED 
(
	[PlanId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoSupervision]    Script Date: 11/10/2015 14:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoSupervision]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TipoSupervision](
	[TipoSupervisionId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
 CONSTRAINT [PK_SupervisionTipo] PRIMARY KEY CLUSTERED 
(
	[TipoSupervisionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 11/10/2015 14:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoDocumento]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TipoDocumento](
	[TipoDocumentoId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TipoDocumento] PRIMARY KEY CLUSTERED 
(
	[TipoDocumentoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[VwProvincia]    Script Date: 11/10/2015 14:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[VwProvincia]'))
EXEC dbo.sp_executesql @statement = N'create view [dbo].[VwProvincia]
as
select * from Ubigeo.dbo.Provincia'
GO
/****** Object:  View [dbo].[VwPais]    Script Date: 11/10/2015 14:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[VwPais]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[VwPais] 
AS 
	SELECT * 
	FROM Ubigeo.dbo.pais
'
GO
/****** Object:  View [dbo].[VwDistrito]    Script Date: 11/10/2015 14:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[VwDistrito]'))
EXEC dbo.sp_executesql @statement = N'create view [dbo].[VwDistrito]
as
select * from Ubigeo.dbo.Distrito'
GO
/****** Object:  View [dbo].[VwDepartamento]    Script Date: 11/10/2015 14:30:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[VwDepartamento]'))
EXEC dbo.sp_executesql @statement = N'create view [dbo].[VwDepartamento]
as
select * from Ubigeo.dbo.Departamento

'
GO
/****** Object:  Table [dbo].[Etapa]    Script Date: 11/10/2015 14:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Etapa]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Etapa](
	[EtapaId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](150) NOT NULL,
	[FechaIncio] [datetime] NOT NULL,
	[FechaFin] [datetime] NOT NULL,
	[PlanId] [int] NOT NULL,
 CONSTRAINT [PK_Etapa] PRIMARY KEY CLUSTERED 
(
	[EtapaId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Paquete]    Script Date: 11/10/2015 14:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Paquete]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Paquete](
	[PaqueteId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](150) NOT NULL,
	[EtapaId] [int] NULL,
 CONSTRAINT [PK_Paquete] PRIMARY KEY CLUSTERED 
(
	[PaqueteId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Supervision]    Script Date: 11/10/2015 14:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Supervision]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Supervision](
	[PlanDetalleId] [int] IDENTITY(1,1) NOT NULL,
	[PlanId] [int] NOT NULL,
	[TipoSupervisionId] [int] NOT NULL,
	[SupervisionId] [int] NOT NULL,
	[PaqueteId] [int] NOT NULL,
 CONSTRAINT [PK_PlanDetalle] PRIMARY KEY CLUSTERED 
(
	[PlanDetalleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PersonaPaquete]    Script Date: 11/10/2015 14:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PersonaPaquete]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PersonaPaquete](
	[PersonaPaqueteId] [int] IDENTITY(1,1) NOT NULL,
	[PersonaId] [int] NOT NULL,
	[PaqueteId] [int] NOT NULL,
 CONSTRAINT [PK_PersonaPaquete] PRIMARY KEY CLUSTERED 
(
	[PersonaPaqueteId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Default [DF_Persona_Supervisor]    Script Date: 11/10/2015 14:30:00 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Persona_Supervisor]') AND parent_object_id = OBJECT_ID(N'[dbo].[Persona]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Persona_Supervisor]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Persona] ADD  CONSTRAINT [DF_Persona_Supervisor]  DEFAULT ((0)) FOR [Supervisor]
END


End
GO
/****** Object:  ForeignKey [FK_Etapa_Plan]    Script Date: 11/10/2015 14:30:00 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Etapa_Plan]') AND parent_object_id = OBJECT_ID(N'[dbo].[Etapa]'))
ALTER TABLE [dbo].[Etapa]  WITH CHECK ADD  CONSTRAINT [FK_Etapa_Plan] FOREIGN KEY([PlanId])
REFERENCES [dbo].[Plan] ([PlanId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Etapa_Plan]') AND parent_object_id = OBJECT_ID(N'[dbo].[Etapa]'))
ALTER TABLE [dbo].[Etapa] CHECK CONSTRAINT [FK_Etapa_Plan]
GO
/****** Object:  ForeignKey [FK_Paquete_Etapa]    Script Date: 11/10/2015 14:30:00 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Paquete_Etapa]') AND parent_object_id = OBJECT_ID(N'[dbo].[Paquete]'))
ALTER TABLE [dbo].[Paquete]  WITH CHECK ADD  CONSTRAINT [FK_Paquete_Etapa] FOREIGN KEY([EtapaId])
REFERENCES [dbo].[Etapa] ([EtapaId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Paquete_Etapa]') AND parent_object_id = OBJECT_ID(N'[dbo].[Paquete]'))
ALTER TABLE [dbo].[Paquete] CHECK CONSTRAINT [FK_Paquete_Etapa]
GO
/****** Object:  ForeignKey [FK_PersonaPaquete_Paquete]    Script Date: 11/10/2015 14:30:00 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PersonaPaquete_Paquete]') AND parent_object_id = OBJECT_ID(N'[dbo].[PersonaPaquete]'))
ALTER TABLE [dbo].[PersonaPaquete]  WITH CHECK ADD  CONSTRAINT [FK_PersonaPaquete_Paquete] FOREIGN KEY([PaqueteId])
REFERENCES [dbo].[Paquete] ([PaqueteId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PersonaPaquete_Paquete]') AND parent_object_id = OBJECT_ID(N'[dbo].[PersonaPaquete]'))
ALTER TABLE [dbo].[PersonaPaquete] CHECK CONSTRAINT [FK_PersonaPaquete_Paquete]
GO
/****** Object:  ForeignKey [FK_PersonaPaquete_Persona]    Script Date: 11/10/2015 14:30:00 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PersonaPaquete_Persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[PersonaPaquete]'))
ALTER TABLE [dbo].[PersonaPaquete]  WITH CHECK ADD  CONSTRAINT [FK_PersonaPaquete_Persona] FOREIGN KEY([PersonaId])
REFERENCES [dbo].[Persona] ([PersonaId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PersonaPaquete_Persona]') AND parent_object_id = OBJECT_ID(N'[dbo].[PersonaPaquete]'))
ALTER TABLE [dbo].[PersonaPaquete] CHECK CONSTRAINT [FK_PersonaPaquete_Persona]
GO
/****** Object:  ForeignKey [FK_PlanDetalle_Paquete]    Script Date: 11/10/2015 14:30:00 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PlanDetalle_Paquete]') AND parent_object_id = OBJECT_ID(N'[dbo].[Supervision]'))
ALTER TABLE [dbo].[Supervision]  WITH CHECK ADD  CONSTRAINT [FK_PlanDetalle_Paquete] FOREIGN KEY([PaqueteId])
REFERENCES [dbo].[Paquete] ([PaqueteId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PlanDetalle_Paquete]') AND parent_object_id = OBJECT_ID(N'[dbo].[Supervision]'))
ALTER TABLE [dbo].[Supervision] CHECK CONSTRAINT [FK_PlanDetalle_Paquete]
GO
/****** Object:  ForeignKey [FK_PlanDetalle_TipoSupervision]    Script Date: 11/10/2015 14:30:00 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PlanDetalle_TipoSupervision]') AND parent_object_id = OBJECT_ID(N'[dbo].[Supervision]'))
ALTER TABLE [dbo].[Supervision]  WITH CHECK ADD  CONSTRAINT [FK_PlanDetalle_TipoSupervision] FOREIGN KEY([TipoSupervisionId])
REFERENCES [dbo].[TipoSupervision] ([TipoSupervisionId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PlanDetalle_TipoSupervision]') AND parent_object_id = OBJECT_ID(N'[dbo].[Supervision]'))
ALTER TABLE [dbo].[Supervision] CHECK CONSTRAINT [FK_PlanDetalle_TipoSupervision]
GO
