USE [master]
GO
/****** Object:  Database [clinica]    Script Date: 20/03/2014 09:42:56 p.m. ******/
CREATE DATABASE [clinica]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'clinica', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MARLON\MSSQL\DATA\clinica.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'clinica_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MARLON\MSSQL\DATA\clinica_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [clinica] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [clinica].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [clinica] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [clinica] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [clinica] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [clinica] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [clinica] SET ARITHABORT OFF 
GO
ALTER DATABASE [clinica] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [clinica] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [clinica] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [clinica] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [clinica] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [clinica] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [clinica] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [clinica] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [clinica] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [clinica] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [clinica] SET  DISABLE_BROKER 
GO
ALTER DATABASE [clinica] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [clinica] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [clinica] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [clinica] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [clinica] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [clinica] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [clinica] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [clinica] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [clinica] SET  MULTI_USER 
GO
ALTER DATABASE [clinica] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [clinica] SET DB_CHAINING OFF 
GO
ALTER DATABASE [clinica] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [clinica] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [clinica]
GO
/****** Object:  Table [dbo].[cargo]    Script Date: 20/03/2014 09:42:56 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cargo](
	[id_cargo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](90) NULL,
 CONSTRAINT [PK_cargo] PRIMARY KEY CLUSTERED 
(
	[id_cargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dieta]    Script Date: 20/03/2014 09:42:56 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dieta](
	[id_dieta] [int] IDENTITY(1,1) NOT NULL,
	[fecha_inic] [datetime] NOT NULL,
	[fecha_final] [datetime] NOT NULL,
	[contenido] [varchar](150) NULL,
	[descripcion] [varchar](150) NULL,
	[id_hist] [int] NOT NULL,
 CONSTRAINT [PK_dieta] PRIMARY KEY CLUSTERED 
(
	[id_dieta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 20/03/2014 09:42:56 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[empleado](
	[id_emplea] [int] IDENTITY(1,1) NOT NULL,
	[primer_nombre] [varchar](50) NULL,
	[segundo_nombre] [varchar](50) NOT NULL,
	[primer_apellido] [varchar](50) NULL,
	[segundo_apellido] [varchar](50) NOT NULL,
	[direccion] [varchar](150) NULL,
	[fecha_nacimient] [datetime] NULL,
	[id_tipoemple] [int] NULL,
	[id_cargo] [int] NOT NULL,
	[id_login] [int] NOT NULL,
 CONSTRAINT [PK_empleado] PRIMARY KEY CLUSTERED 
(
	[id_emplea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[examen]    Script Date: 20/03/2014 09:42:56 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[examen](
	[id_exa] [int] IDENTITY(1,1) NOT NULL,
	[fecha_solicitud] [datetime] NULL,
	[fecha_aplicacion] [datetime] NULL,
	[observaciones] [varchar](50) NULL,
	[id_tipo_exa] [int] NOT NULL,
	[id_resul] [int] NOT NULL,
	[id_hist] [int] NOT NULL,
 CONSTRAINT [PK_examen] PRIMARY KEY CLUSTERED 
(
	[id_exa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[factura]    Script Date: 20/03/2014 09:42:56 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factura](
	[id_factura] [int] IDENTITY(1,1) NOT NULL,
	[fecha_creacion] [datetime] NULL,
	[id_pacien] [int] NOT NULL,
	[id_empleado] [int] NOT NULL,
 CONSTRAINT [PK_factura] PRIMARY KEY CLUSTERED 
(
	[id_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[historial]    Script Date: 20/03/2014 09:42:56 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[historial](
	[id_hist] [int] IDENTITY(1,1) NOT NULL,
	[fecha_ini] [datetime] NULL,
	[horario] [varchar](50) NULL,
	[contenido] [varchar](150) NULL,
	[descripcion] [varchar](150) NULL,
	[fecha_final] [datetime] NULL,
	[id_trata] [int] NOT NULL,
 CONSTRAINT [PK_historial] PRIMARY KEY CLUSTERED 
(
	[id_hist] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[login]    Script Date: 20/03/2014 09:42:56 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[login](
	[id_login] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[id_rol] [int] NOT NULL,
 CONSTRAINT [PK_login] PRIMARY KEY CLUSTERED 
(
	[id_login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[paciente]    Script Date: 20/03/2014 09:42:56 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[paciente](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[primer_nombre] [varchar](50) NULL,
	[segundo_nombre] [varchar](50) NOT NULL,
	[primer_apellido] [varchar](50) NULL,
	[segundo_apellido] [varchar](50) NOT NULL,
	[direccion] [varchar](50) NULL,
	[fecha_nacimient] [datetime] NULL,
	[id_hist] [int] NULL,
 CONSTRAINT [PK_paciente] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pago]    Script Date: 20/03/2014 09:42:56 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pago](
	[id_pago] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [datetime] NULL,
	[valor_pagado] [numeric](18, 0) NULL,
	[id_factura] [int] NULL,
	[id_tipopago] [int] NULL,
 CONSTRAINT [PK_pago] PRIMARY KEY CLUSTERED 
(
	[id_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[resultado]    Script Date: 20/03/2014 09:42:56 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[resultado](
	[id_resul] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_resultado] PRIMARY KEY CLUSTERED 
(
	[id_resul] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rol]    Script Date: 20/03/2014 09:42:56 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rol](
	[id_rol] [int] IDENTITY(1,1) NOT NULL,
	[nombre_rol] [varchar](50) NULL,
	[descripcion_rol] [varchar](50) NULL,
 CONSTRAINT [PK_rol] PRIMARY KEY CLUSTERED 
(
	[id_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tipo_empleado]    Script Date: 20/03/2014 09:42:56 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tipo_empleado](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](80) NULL,
 CONSTRAINT [PK_tipo_empleado] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tipo_examen]    Script Date: 20/03/2014 09:42:56 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tipo_examen](
	[id_tipo_exa] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](90) NULL,
 CONSTRAINT [PK_tipo_examen] PRIMARY KEY CLUSTERED 
(
	[id_tipo_exa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tipo_pago]    Script Date: 20/03/2014 09:42:56 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tipo_pago](
	[id_tipopago] [int] IDENTITY(1,1) NOT NULL,
	[descrpcion] [varchar](50) NULL,
 CONSTRAINT [PK_tipo_pago] PRIMARY KEY CLUSTERED 
(
	[id_tipopago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tipo_tratamiento]    Script Date: 20/03/2014 09:42:56 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tipo_tratamiento](
	[id_tipo_trata] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_tipo_tratamiento] PRIMARY KEY CLUSTERED 
(
	[id_tipo_trata] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tratamiento]    Script Date: 20/03/2014 09:42:56 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tratamiento](
	[id_trata] [int] IDENTITY(1,1) NOT NULL,
	[fecha_ini] [datetime] NULL,
	[fecha_soli] [datetime] NULL,
	[observaciones] [varchar](150) NULL,
	[fecha_final] [datetime] NULL,
	[id_tipo_trata] [int] NULL,
 CONSTRAINT [PK_tratamiento] PRIMARY KEY CLUSTERED 
(
	[id_trata] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[dieta]  WITH CHECK ADD  CONSTRAINT [FK_dieta_historial] FOREIGN KEY([id_hist])
REFERENCES [dbo].[historial] ([id_hist])
GO
ALTER TABLE [dbo].[dieta] CHECK CONSTRAINT [FK_dieta_historial]
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD  CONSTRAINT [FK_empleado_cargo1] FOREIGN KEY([id_cargo])
REFERENCES [dbo].[cargo] ([id_cargo])
GO
ALTER TABLE [dbo].[empleado] CHECK CONSTRAINT [FK_empleado_cargo1]
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD  CONSTRAINT [FK_empleado_login1] FOREIGN KEY([id_login])
REFERENCES [dbo].[login] ([id_login])
GO
ALTER TABLE [dbo].[empleado] CHECK CONSTRAINT [FK_empleado_login1]
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD  CONSTRAINT [FK_empleado_tipo_empleado1] FOREIGN KEY([id_tipoemple])
REFERENCES [dbo].[tipo_empleado] ([id])
GO
ALTER TABLE [dbo].[empleado] CHECK CONSTRAINT [FK_empleado_tipo_empleado1]
GO
ALTER TABLE [dbo].[examen]  WITH CHECK ADD  CONSTRAINT [FK_examen_historial1] FOREIGN KEY([id_hist])
REFERENCES [dbo].[historial] ([id_hist])
GO
ALTER TABLE [dbo].[examen] CHECK CONSTRAINT [FK_examen_historial1]
GO
ALTER TABLE [dbo].[examen]  WITH CHECK ADD  CONSTRAINT [FK_examen_resultado] FOREIGN KEY([id_resul])
REFERENCES [dbo].[resultado] ([id_resul])
GO
ALTER TABLE [dbo].[examen] CHECK CONSTRAINT [FK_examen_resultado]
GO
ALTER TABLE [dbo].[examen]  WITH CHECK ADD  CONSTRAINT [FK_examen_tipo_examen1] FOREIGN KEY([id_tipo_exa])
REFERENCES [dbo].[tipo_examen] ([id_tipo_exa])
GO
ALTER TABLE [dbo].[examen] CHECK CONSTRAINT [FK_examen_tipo_examen1]
GO
ALTER TABLE [dbo].[factura]  WITH CHECK ADD  CONSTRAINT [FK_factura_empleado] FOREIGN KEY([id_empleado])
REFERENCES [dbo].[empleado] ([id_emplea])
GO
ALTER TABLE [dbo].[factura] CHECK CONSTRAINT [FK_factura_empleado]
GO
ALTER TABLE [dbo].[factura]  WITH CHECK ADD  CONSTRAINT [FK_factura_paciente] FOREIGN KEY([id_pacien])
REFERENCES [dbo].[paciente] ([id])
GO
ALTER TABLE [dbo].[factura] CHECK CONSTRAINT [FK_factura_paciente]
GO
ALTER TABLE [dbo].[historial]  WITH CHECK ADD  CONSTRAINT [FK_historial_tratamiento] FOREIGN KEY([id_trata])
REFERENCES [dbo].[tratamiento] ([id_trata])
GO
ALTER TABLE [dbo].[historial] CHECK CONSTRAINT [FK_historial_tratamiento]
GO
ALTER TABLE [dbo].[login]  WITH CHECK ADD  CONSTRAINT [FK_login_rol] FOREIGN KEY([id_rol])
REFERENCES [dbo].[rol] ([id_rol])
GO
ALTER TABLE [dbo].[login] CHECK CONSTRAINT [FK_login_rol]
GO
ALTER TABLE [dbo].[paciente]  WITH CHECK ADD  CONSTRAINT [FK_paciente_historial1] FOREIGN KEY([id_hist])
REFERENCES [dbo].[historial] ([id_hist])
GO
ALTER TABLE [dbo].[paciente] CHECK CONSTRAINT [FK_paciente_historial1]
GO
ALTER TABLE [dbo].[pago]  WITH CHECK ADD  CONSTRAINT [FK_pago_factura] FOREIGN KEY([id_factura])
REFERENCES [dbo].[factura] ([id_factura])
GO
ALTER TABLE [dbo].[pago] CHECK CONSTRAINT [FK_pago_factura]
GO
ALTER TABLE [dbo].[pago]  WITH CHECK ADD  CONSTRAINT [FK_pago_tipo_pago] FOREIGN KEY([id_tipopago])
REFERENCES [dbo].[tipo_pago] ([id_tipopago])
GO
ALTER TABLE [dbo].[pago] CHECK CONSTRAINT [FK_pago_tipo_pago]
GO
ALTER TABLE [dbo].[tratamiento]  WITH CHECK ADD  CONSTRAINT [FK_tratamiento_tipo_tratamiento] FOREIGN KEY([id_tipo_trata])
REFERENCES [dbo].[tipo_tratamiento] ([id_tipo_trata])
GO
ALTER TABLE [dbo].[tratamiento] CHECK CONSTRAINT [FK_tratamiento_tipo_tratamiento]
GO
ALTER TABLE [dbo].[cargo]  WITH CHECK ADD  CONSTRAINT [CK_cargo_soloLetras] CHECK  ((NOT [nombre] like '%[^A-Z]%'))
GO
ALTER TABLE [dbo].[cargo] CHECK CONSTRAINT [CK_cargo_soloLetras]
GO
ALTER TABLE [dbo].[dieta]  WITH CHECK ADD  CONSTRAINT [CK_dieta_contenido_soloLetras] CHECK  ((NOT [contenido] like '%[^A-Z]%'))
GO
ALTER TABLE [dbo].[dieta] CHECK CONSTRAINT [CK_dieta_contenido_soloLetras]
GO
ALTER TABLE [dbo].[dieta]  WITH CHECK ADD  CONSTRAINT [CK_dieta_fechafin] CHECK  (([fecha_final]>=getdate()))
GO
ALTER TABLE [dbo].[dieta] CHECK CONSTRAINT [CK_dieta_fechafin]
GO
ALTER TABLE [dbo].[dieta]  WITH CHECK ADD  CONSTRAINT [CK_dieta_fechaini] CHECK  (([fecha_inic]>=getdate()))
GO
ALTER TABLE [dbo].[dieta] CHECK CONSTRAINT [CK_dieta_fechaini]
GO
ALTER TABLE [dbo].[dieta]  WITH CHECK ADD  CONSTRAINT [CK_dieta_fechascoherentes] CHECK  (([fecha_final]>[fecha_inic]))
GO
ALTER TABLE [dbo].[dieta] CHECK CONSTRAINT [CK_dieta_fechascoherentes]
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD  CONSTRAINT [CK_empleado_FechaNac] CHECK  (([fecha_nacimient]<getdate()))
GO
ALTER TABLE [dbo].[empleado] CHECK CONSTRAINT [CK_empleado_FechaNac]
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD  CONSTRAINT [CK_empleado_PA] CHECK  ((NOT [primer_apellido] like '%[^A-Z]%'))
GO
ALTER TABLE [dbo].[empleado] CHECK CONSTRAINT [CK_empleado_PA]
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD  CONSTRAINT [CK_empleado_PN] CHECK  ((NOT [primer_nombre] like '%[^A-Z]%'))
GO
ALTER TABLE [dbo].[empleado] CHECK CONSTRAINT [CK_empleado_PN]
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD  CONSTRAINT [CK_empleado_SA] CHECK  ((NOT [segundo_apellido] like '%[^A-Z]%'))
GO
ALTER TABLE [dbo].[empleado] CHECK CONSTRAINT [CK_empleado_SA]
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD  CONSTRAINT [CK_empleado_SN] CHECK  ((NOT [segundo_nombre] like '%[^A-Z]%'))
GO
ALTER TABLE [dbo].[empleado] CHECK CONSTRAINT [CK_empleado_SN]
GO
ALTER TABLE [dbo].[examen]  WITH CHECK ADD  CONSTRAINT [CK_examen] CHECK  (([fecha_aplicacion]>getdate()))
GO
ALTER TABLE [dbo].[examen] CHECK CONSTRAINT [CK_examen]
GO
ALTER TABLE [dbo].[examen]  WITH CHECK ADD  CONSTRAINT [CK_examen_fechaSol] CHECK  (([fecha_solicitud]>=getdate()))
GO
ALTER TABLE [dbo].[examen] CHECK CONSTRAINT [CK_examen_fechaSol]
GO
ALTER TABLE [dbo].[factura]  WITH CHECK ADD  CONSTRAINT [CK_factura_fechacre] CHECK  (([fecha_creacion]=getdate()))
GO
ALTER TABLE [dbo].[factura] CHECK CONSTRAINT [CK_factura_fechacre]
GO
ALTER TABLE [dbo].[login]  WITH CHECK ADD  CONSTRAINT [CK_login_pass] CHECK  ((ltrim(rtrim([password]))<>''))
GO
ALTER TABLE [dbo].[login] CHECK CONSTRAINT [CK_login_pass]
GO
ALTER TABLE [dbo].[login]  WITH CHECK ADD  CONSTRAINT [CK_login_usuario] CHECK  ((ltrim(rtrim([usuario]))<>''))
GO
ALTER TABLE [dbo].[login] CHECK CONSTRAINT [CK_login_usuario]
GO
ALTER TABLE [dbo].[paciente]  WITH CHECK ADD  CONSTRAINT [CK_paciente_fechanac] CHECK  (([fecha_nacimient]<getdate()))
GO
ALTER TABLE [dbo].[paciente] CHECK CONSTRAINT [CK_paciente_fechanac]
GO
ALTER TABLE [dbo].[paciente]  WITH CHECK ADD  CONSTRAINT [CK_paciente_PA] CHECK  ((NOT [primer_apellido] like '%[^A-Z]%'))
GO
ALTER TABLE [dbo].[paciente] CHECK CONSTRAINT [CK_paciente_PA]
GO
ALTER TABLE [dbo].[paciente]  WITH CHECK ADD  CONSTRAINT [CK_paciente_PN] CHECK  ((NOT [primer_nombre] like '%[^A-Z]%'))
GO
ALTER TABLE [dbo].[paciente] CHECK CONSTRAINT [CK_paciente_PN]
GO
ALTER TABLE [dbo].[paciente]  WITH CHECK ADD  CONSTRAINT [CK_paciente_SA] CHECK  ((NOT [segundo_apellido] like '%[^A-Z]%'))
GO
ALTER TABLE [dbo].[paciente] CHECK CONSTRAINT [CK_paciente_SA]
GO
ALTER TABLE [dbo].[paciente]  WITH CHECK ADD  CONSTRAINT [CK_paciente_SN] CHECK  ((NOT [segundo_nombre] like '%[^A-Z]%'))
GO
ALTER TABLE [dbo].[paciente] CHECK CONSTRAINT [CK_paciente_SN]
GO
ALTER TABLE [dbo].[rol]  WITH CHECK ADD  CONSTRAINT [CK_rol_nombre] CHECK  ((NOT [nombre_rol] like '%[^A-Z]%'))
GO
ALTER TABLE [dbo].[rol] CHECK CONSTRAINT [CK_rol_nombre]
GO
ALTER TABLE [dbo].[tipo_empleado]  WITH CHECK ADD  CONSTRAINT [CK_tipo_empleado] CHECK  ((NOT [nombre] like '%[^A-Z]%'))
GO
ALTER TABLE [dbo].[tipo_empleado] CHECK CONSTRAINT [CK_tipo_empleado]
GO
ALTER TABLE [dbo].[tipo_examen]  WITH CHECK ADD  CONSTRAINT [CK_tipo_examen_nombre] CHECK  ((NOT [nombre] like '%[^A-Z]%'))
GO
ALTER TABLE [dbo].[tipo_examen] CHECK CONSTRAINT [CK_tipo_examen_nombre]
GO
ALTER TABLE [dbo].[tratamiento]  WITH CHECK ADD  CONSTRAINT [CK_tratamiento] CHECK  (([fecha_final]>[fecha_ini]))
GO
ALTER TABLE [dbo].[tratamiento] CHECK CONSTRAINT [CK_tratamiento]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Evalua que solo esten escritas letras' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dieta', @level2type=N'CONSTRAINT',@level2name=N'CK_dieta_contenido_soloLetras'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'evalua que la fecha ingresada sea de fechas posteriores al dia actual' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dieta', @level2type=N'CONSTRAINT',@level2name=N'CK_dieta_fechafin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'evalua que la fecha sea posterior a fecha actual' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dieta', @level2type=N'CONSTRAINT',@level2name=N'CK_dieta_fechaini'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'evalua que las fecha final sea posterior a la inicial' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dieta', @level2type=N'CONSTRAINT',@level2name=N'CK_dieta_fechascoherentes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'evalua que la fecha de nacimiento no sea de dias posteriores' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'empleado', @level2type=N'CONSTRAINT',@level2name=N'CK_empleado_FechaNac'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'evalua que solo se escriban letras en el primer apellido' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'empleado', @level2type=N'CONSTRAINT',@level2name=N'CK_empleado_PA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'evalua que solo se escriban letras' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'empleado', @level2type=N'CONSTRAINT',@level2name=N'CK_empleado_PN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Evalua que solo se escriban letras en segundo apellido' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'empleado', @level2type=N'CONSTRAINT',@level2name=N'CK_empleado_SA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'evalua que solo se escriban letras en segundo nombre' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'empleado', @level2type=N'CONSTRAINT',@level2name=N'CK_empleado_SN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'evalua la fecha sea posterior al dia actual' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'examen', @level2type=N'CONSTRAINT',@level2name=N'CK_examen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Evalua que la fecha de solicitud sea posterior o igual al dia actual' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'examen', @level2type=N'CONSTRAINT',@level2name=N'CK_examen_fechaSol'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'evalua que la fecha posterior sea igual al dia actual' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'factura', @level2type=N'CONSTRAINT',@level2name=N'CK_factura_fechacre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'no permite espacios en password' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'login', @level2type=N'CONSTRAINT',@level2name=N'CK_login_pass'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'evalua que no hallan escritos espacios' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'login', @level2type=N'CONSTRAINT',@level2name=N'CK_login_usuario'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'evalua que solo se escriban letras en primer nombre' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'paciente', @level2type=N'CONSTRAINT',@level2name=N'CK_paciente_PN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Evalua que solo se escriban letras en segundo apellido' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'paciente', @level2type=N'CONSTRAINT',@level2name=N'CK_paciente_SA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'evalua que solo se escriban letras en segundo nombre' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'paciente', @level2type=N'CONSTRAINT',@level2name=N'CK_paciente_SN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Evalua que solo se escriban letras en el nombre del rol' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'rol', @level2type=N'CONSTRAINT',@level2name=N'CK_rol_nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Evalua que solo se escriban letras en nombre' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tipo_empleado', @level2type=N'CONSTRAINT',@level2name=N'CK_tipo_empleado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'evalua que solo se escriban letras en nombre de examen' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tipo_examen', @level2type=N'CONSTRAINT',@level2name=N'CK_tipo_examen_nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'evalua que la fecha final sea posterior a la inicial' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tratamiento', @level2type=N'CONSTRAINT',@level2name=N'CK_tratamiento'
GO
USE [master]
GO
ALTER DATABASE [clinica] SET  READ_WRITE 
GO
