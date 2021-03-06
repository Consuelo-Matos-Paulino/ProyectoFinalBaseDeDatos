
/* Nombre: Consuelo Matricula: 17-SIIN-1-184 Seccion: 0541*/

USE [master]
GO
/****** Object:  Database [AdministradorDeProyectosDB]    Script Date: 14/04/2019 18:09:21 ******/
CREATE DATABASE [AdministradorDeProyectosDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AdministradorDeProyectosDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\AdministradorDeProyectosDB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AdministradorDeProyectosDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\AdministradorDeProyectosDB_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AdministradorDeProyectosDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AdministradorDeProyectosDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AdministradorDeProyectosDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AdministradorDeProyectosDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AdministradorDeProyectosDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AdministradorDeProyectosDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AdministradorDeProyectosDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [AdministradorDeProyectosDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AdministradorDeProyectosDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AdministradorDeProyectosDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AdministradorDeProyectosDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AdministradorDeProyectosDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AdministradorDeProyectosDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AdministradorDeProyectosDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AdministradorDeProyectosDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AdministradorDeProyectosDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AdministradorDeProyectosDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AdministradorDeProyectosDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AdministradorDeProyectosDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AdministradorDeProyectosDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AdministradorDeProyectosDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AdministradorDeProyectosDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AdministradorDeProyectosDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AdministradorDeProyectosDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AdministradorDeProyectosDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AdministradorDeProyectosDB] SET  MULTI_USER 
GO
ALTER DATABASE [AdministradorDeProyectosDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AdministradorDeProyectosDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AdministradorDeProyectosDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AdministradorDeProyectosDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [AdministradorDeProyectosDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [AdministradorDeProyectosDB]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 14/04/2019 18:09:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[ClienteID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Telefono] [varchar](20) NOT NULL,
	[Direccion] [varchar](100) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[RNC] [varchar](20) NOT NULL,
	[ContactoID] [int] NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[ClienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Colores]    Script Date: 14/04/2019 18:09:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Colores](
	[ColorID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Colores] PRIMARY KEY CLUSTERED 
(
	[ColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contactos]    Script Date: 14/04/2019 18:09:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contactos](
	[ContactoID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellidos] [varchar](60) NOT NULL,
	[Genero] [char](1) NOT NULL,
	[Telefono] [varchar](20) NOT NULL,
	[Email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Contactos] PRIMARY KEY CLUSTERED 
(
	[ContactoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Gamas]    Script Date: 14/04/2019 18:09:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Gamas](
	[GamaID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Gamas] PRIMARY KEY CLUSTERED 
(
	[GamaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Presupuestos]    Script Date: 14/04/2019 18:09:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Presupuestos](
	[PresupuestoID] [int] IDENTITY(1,1) NOT NULL,
	[GamaID] [int] NOT NULL,
	[SerieID] [int] NOT NULL,
	[ColorID] [int] NOT NULL,
	[VidrioID] [int] NOT NULL,
	[TipoPresupuestoID] [int] NOT NULL,
 CONSTRAINT [PK_Presupuestos] PRIMARY KEY CLUSTERED 
(
	[PresupuestoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Proyectos]    Script Date: 14/04/2019 18:09:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proyectos](
	[ProyectoID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[ClienteID] [int] NOT NULL,
	[PresupuestoID] [int] NOT NULL,
	[SupervisorID] [int] NOT NULL,
	[FechaInicio] [datetime] NOT NULL,
 CONSTRAINT [PK_Proyectos] PRIMARY KEY CLUSTERED 
(
	[ProyectoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Series]    Script Date: 14/04/2019 18:09:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Series](
	[SerieID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_Series] PRIMARY KEY CLUSTERED 
(
	[SerieID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Supervisores]    Script Date: 14/04/2019 18:09:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Supervisores](
	[SupervisorID] [int] IDENTITY(1,1) NOT NULL,
	[NombreApellido] [varchar](50) NOT NULL,
	[Genero] [char](1) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[Direccion] [varchar](100) NOT NULL,
	[Email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Supervisor] PRIMARY KEY CLUSTERED 
(
	[SupervisorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoPresupuestos]    Script Date: 14/04/2019 18:09:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoPresupuestos](
	[TipoPresupuestoID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](75) NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_TipoPresupuestos] PRIMARY KEY CLUSTERED 
(
	[TipoPresupuestoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vidrios]    Script Date: 14/04/2019 18:09:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vidrios](
	[VidrioID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Espesor] [varchar](50) NOT NULL,
	[ColorID] [int] NOT NULL,
 CONSTRAINT [PK_Vidrios] PRIMARY KEY CLUSTERED 
(
	[VidrioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Telefono], [Direccion], [Email], [RNC], [ContactoID]) VALUES (1, N'Constructora Civiltec', N'8095481578', N'Los Jardines DEL NORTE, Santo Domingo', N'civiltecdominicana@gmail.com', N'101010643', 1)
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Telefono], [Direccion], [Email], [RNC], [ContactoID]) VALUES (2, N'Rodriguez & Sandoval', N'8094731146', N'Calle 4 No 29 Los Alcarrizos', N'r&rasc@gmail.com', N'104343345', 3)
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Telefono], [Direccion], [Email], [RNC], [ContactoID]) VALUES (3, N'Ray Construction', N'8095674567', N'Avenida Maximo Gomez No 5 ', N'rconstruction@gmail.com', N'109878678', 2)
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Telefono], [Direccion], [Email], [RNC], [ContactoID]) VALUES (4, N'Constructora Bisono', N'8095679384', N'Avenida Ana Caona No 76 Santo Domingo', N'cbisono@hotmail.com', N'108976567', 4)
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Telefono], [Direccion], [Email], [RNC], [ContactoID]) VALUES (5, N'Constructora Bichini', N'8093773839', N'Calle el palmar No 5 Ensanche El Paraiso', N'cbichini@gmail.com', N'187292837', 5)
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Telefono], [Direccion], [Email], [RNC], [ContactoID]) VALUES (6, N'CBS Developments', N'8097678283', N'Ensanche el Millon No 7 Santo Domingo', N'cbs.developments@gmail.com', N'109283748', 6)
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Telefono], [Direccion], [Email], [RNC], [ContactoID]) VALUES (7, N'EON SRL', N'8098783738', N'Suite 413 4to nivel Blvd 1 Noviembre Punta Cana', N'eon.srl@gmail.com', N'102838373', 7)
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Telefono], [Direccion], [Email], [RNC], [ContactoID]) VALUES (8, N'Codelpa', N'8097363829', N'Avenida Estados Unidos No 10 Punta Cana', N'codelpa@hotmail.com', N'102838310', 8)
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Telefono], [Direccion], [Email], [RNC], [ContactoID]) VALUES (9, N'Lombard Construction Design', N'8097383929', N'Calle San Juan No 15 Punta Cana', N'lombard.constructions@gmail.com', N'102837374', 9)
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Telefono], [Direccion], [Email], [RNC], [ContactoID]) VALUES (10, N'Therrestra ', N'8096372834', N'Avenida Pedro Urena 138 Santo Domingo', N'therrestra.cons@gmail.com', N'102938474', 10)
SET IDENTITY_INSERT [dbo].[Clientes] OFF
SET IDENTITY_INSERT [dbo].[Colores] ON 

INSERT [dbo].[Colores] ([ColorID], [Nombre], [Descripcion]) VALUES (1, N'Plateado', N'Lacado')
INSERT [dbo].[Colores] ([ColorID], [Nombre], [Descripcion]) VALUES (2, N'Blanco', N'Mate')
INSERT [dbo].[Colores] ([ColorID], [Nombre], [Descripcion]) VALUES (3, N'Negro', N'Lacado Medio Mate')
INSERT [dbo].[Colores] ([ColorID], [Nombre], [Descripcion]) VALUES (4, N'Rojo', N'Brillante')
INSERT [dbo].[Colores] ([ColorID], [Nombre], [Descripcion]) VALUES (5, N'Azul', N'Neutro')
INSERT [dbo].[Colores] ([ColorID], [Nombre], [Descripcion]) VALUES (6, N'Amarillo', N'Lacado')
INSERT [dbo].[Colores] ([ColorID], [Nombre], [Descripcion]) VALUES (7, N'Transparente', N'NA')
INSERT [dbo].[Colores] ([ColorID], [Nombre], [Descripcion]) VALUES (8, N'Ral7015', N'Color Especial')
INSERT [dbo].[Colores] ([ColorID], [Nombre], [Descripcion]) VALUES (9, N'Ral7022', N'Color Especial')
INSERT [dbo].[Colores] ([ColorID], [Nombre], [Descripcion]) VALUES (10, N'Ral7012', N'Color Especial')
SET IDENTITY_INSERT [dbo].[Colores] OFF
SET IDENTITY_INSERT [dbo].[Contactos] ON 

INSERT [dbo].[Contactos] ([ContactoID], [Nombre], [Apellidos], [Genero], [Telefono], [Email]) VALUES (1, N'Juan', N'Lopez Perez', N'M', N'8095483119', N'jlopez@gmail.com')
INSERT [dbo].[Contactos] ([ContactoID], [Nombre], [Apellidos], [Genero], [Telefono], [Email]) VALUES (2, N'Nancy', N'Rodriguez Rodriguez', N'F', N'8294312567', N'n.rodriguez@gmail.com')
INSERT [dbo].[Contactos] ([ContactoID], [Nombre], [Apellidos], [Genero], [Telefono], [Email]) VALUES (3, N'Ariel', N'Gonzalez Garcia', N'M', N'8093168738', N'arielagg@gmai.com')
INSERT [dbo].[Contactos] ([ContactoID], [Nombre], [Apellidos], [Genero], [Telefono], [Email]) VALUES (4, N'Anabel', N'Morillo Peralta', N'F', N'8092157039', N'amorillo@gmail.com')
INSERT [dbo].[Contactos] ([ContactoID], [Nombre], [Apellidos], [Genero], [Telefono], [Email]) VALUES (5, N'Consuelo', N'Matos Paulino', N'F', N'8095647800', N'cmatos.90@hotmail.com')
INSERT [dbo].[Contactos] ([ContactoID], [Nombre], [Apellidos], [Genero], [Telefono], [Email]) VALUES (6, N'Juan', N'Prensa Guillermo', N'M', N'8293238041', N'jprensa.guillermo@hotmail.com')
INSERT [dbo].[Contactos] ([ContactoID], [Nombre], [Apellidos], [Genero], [Telefono], [Email]) VALUES (7, N'Samary', N'Mota Ruiz', N'F', N'8094548970', N'samary.ruiz.89@gmai.com')
INSERT [dbo].[Contactos] ([ContactoID], [Nombre], [Apellidos], [Genero], [Telefono], [Email]) VALUES (8, N'Leon', N'Mendez Suero', N'M', N'8493589078', N'lsuero.mendez@gmail.com')
INSERT [dbo].[Contactos] ([ContactoID], [Nombre], [Apellidos], [Genero], [Telefono], [Email]) VALUES (9, N'Kendall', N'Rosario Castillo', N'M', N'8096567809', N'krosario@hotmai.com')
INSERT [dbo].[Contactos] ([ContactoID], [Nombre], [Apellidos], [Genero], [Telefono], [Email]) VALUES (10, N'Nieves', N'Polanco Eusebio', N'F', N'8298907867', N'n.polanco.eusebio@gmai.com')
SET IDENTITY_INSERT [dbo].[Contactos] OFF
SET IDENTITY_INSERT [dbo].[Gamas] ON 

INSERT [dbo].[Gamas] ([GamaID], [Nombre], [Descripcion]) VALUES (1, N'Reynaers', N'Europeo')
INSERT [dbo].[Gamas] ([GamaID], [Nombre], [Descripcion]) VALUES (2, N'Aluval', N'Clasico')
INSERT [dbo].[Gamas] ([GamaID], [Nombre], [Descripcion]) VALUES (3, N'Extrual', N'Criollo')
INSERT [dbo].[Gamas] ([GamaID], [Nombre], [Descripcion]) VALUES (4, N'HA', N'NA')
INSERT [dbo].[Gamas] ([GamaID], [Nombre], [Descripcion]) VALUES (5, N'Jaraba', N'Customizado')
INSERT [dbo].[Gamas] ([GamaID], [Nombre], [Descripcion]) VALUES (6, N'Galisur', N'Catalogo')
INSERT [dbo].[Gamas] ([GamaID], [Nombre], [Descripcion]) VALUES (7, N'ARC', N'Independiente')
INSERT [dbo].[Gamas] ([GamaID], [Nombre], [Descripcion]) VALUES (8, N'ELDON', N'Interiores')
INSERT [dbo].[Gamas] ([GamaID], [Nombre], [Descripcion]) VALUES (9, N'Aluart', N'Exteriores')
INSERT [dbo].[Gamas] ([GamaID], [Nombre], [Descripcion]) VALUES (10, N'Riojalex', N'Instalacion')
SET IDENTITY_INSERT [dbo].[Gamas] OFF
SET IDENTITY_INSERT [dbo].[Presupuestos] ON 

INSERT [dbo].[Presupuestos] ([PresupuestoID], [GamaID], [SerieID], [ColorID], [VidrioID], [TipoPresupuestoID]) VALUES (1, 1, 2, 1, 2, 1)
INSERT [dbo].[Presupuestos] ([PresupuestoID], [GamaID], [SerieID], [ColorID], [VidrioID], [TipoPresupuestoID]) VALUES (2, 2, 3, 4, 3, 5)
INSERT [dbo].[Presupuestos] ([PresupuestoID], [GamaID], [SerieID], [ColorID], [VidrioID], [TipoPresupuestoID]) VALUES (3, 3, 5, 6, 1, 4)
INSERT [dbo].[Presupuestos] ([PresupuestoID], [GamaID], [SerieID], [ColorID], [VidrioID], [TipoPresupuestoID]) VALUES (4, 4, 1, 2, 5, 6)
INSERT [dbo].[Presupuestos] ([PresupuestoID], [GamaID], [SerieID], [ColorID], [VidrioID], [TipoPresupuestoID]) VALUES (5, 5, 4, 3, 4, 2)
INSERT [dbo].[Presupuestos] ([PresupuestoID], [GamaID], [SerieID], [ColorID], [VidrioID], [TipoPresupuestoID]) VALUES (6, 6, 7, 8, 9, 3)
INSERT [dbo].[Presupuestos] ([PresupuestoID], [GamaID], [SerieID], [ColorID], [VidrioID], [TipoPresupuestoID]) VALUES (7, 7, 6, 5, 6, 9)
INSERT [dbo].[Presupuestos] ([PresupuestoID], [GamaID], [SerieID], [ColorID], [VidrioID], [TipoPresupuestoID]) VALUES (8, 8, 10, 9, 8, 10)
INSERT [dbo].[Presupuestos] ([PresupuestoID], [GamaID], [SerieID], [ColorID], [VidrioID], [TipoPresupuestoID]) VALUES (9, 10, 8, 10, 7, 8)
INSERT [dbo].[Presupuestos] ([PresupuestoID], [GamaID], [SerieID], [ColorID], [VidrioID], [TipoPresupuestoID]) VALUES (10, 9, 9, 7, 10, 7)
SET IDENTITY_INSERT [dbo].[Presupuestos] OFF
SET IDENTITY_INSERT [dbo].[Proyectos] ON 

INSERT [dbo].[Proyectos] ([ProyectoID], [Nombre], [ClienteID], [PresupuestoID], [SupervisorID], [FechaInicio]) VALUES (1, N'Anacaona 27', 1, 6, 3, CAST(N'2018-03-21 00:00:00.000' AS DateTime))
INSERT [dbo].[Proyectos] ([ProyectoID], [Nombre], [ClienteID], [PresupuestoID], [SupervisorID], [FechaInicio]) VALUES (2, N'Park Tower', 2, 1, 4, CAST(N'2018-08-19 00:00:00.000' AS DateTime))
INSERT [dbo].[Proyectos] ([ProyectoID], [Nombre], [ClienteID], [PresupuestoID], [SupervisorID], [FechaInicio]) VALUES (3, N'DM28', 3, 8, 1, CAST(N'2017-03-09 00:00:00.000' AS DateTime))
INSERT [dbo].[Proyectos] ([ProyectoID], [Nombre], [ClienteID], [PresupuestoID], [SupervisorID], [FechaInicio]) VALUES (4, N'Torre PHE Peniel', 4, 2, 10, CAST(N'2019-01-07 00:00:00.000' AS DateTime))
INSERT [dbo].[Proyectos] ([ProyectoID], [Nombre], [ClienteID], [PresupuestoID], [SupervisorID], [FechaInicio]) VALUES (5, N'Ani Villas', 5, 3, 2, CAST(N'2015-06-30 00:00:00.000' AS DateTime))
INSERT [dbo].[Proyectos] ([ProyectoID], [Nombre], [ClienteID], [PresupuestoID], [SupervisorID], [FechaInicio]) VALUES (6, N'Royalton', 6, 5, 8, CAST(N'2018-01-07 00:00:00.000' AS DateTime))
INSERT [dbo].[Proyectos] ([ProyectoID], [Nombre], [ClienteID], [PresupuestoID], [SupervisorID], [FechaInicio]) VALUES (7, N'Palapa 1', 7, 10, 5, CAST(N'2019-02-08 00:00:00.000' AS DateTime))
INSERT [dbo].[Proyectos] ([ProyectoID], [Nombre], [ClienteID], [PresupuestoID], [SupervisorID], [FechaInicio]) VALUES (8, N'Perla del Sur', 8, 4, 9, CAST(N'2018-05-28 00:00:00.000' AS DateTime))
INSERT [dbo].[Proyectos] ([ProyectoID], [Nombre], [ClienteID], [PresupuestoID], [SupervisorID], [FechaInicio]) VALUES (9, N'Marmotech', 9, 7, 6, CAST(N'2016-09-23 00:00:00.000' AS DateTime))
INSERT [dbo].[Proyectos] ([ProyectoID], [Nombre], [ClienteID], [PresupuestoID], [SupervisorID], [FechaInicio]) VALUES (10, N'Villa Palmera 16', 10, 9, 7, CAST(N'2019-02-14 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Proyectos] OFF
SET IDENTITY_INSERT [dbo].[Series] ON 

INSERT [dbo].[Series] ([SerieID], [Nombre], [Descripcion]) VALUES (1, N'AL18', N'Corredera')
INSERT [dbo].[Series] ([SerieID], [Nombre], [Descripcion]) VALUES (2, N'AV40', N'Fijos')
INSERT [dbo].[Series] ([SerieID], [Nombre], [Descripcion]) VALUES (3, N'AL22', N'Proyectadas')
INSERT [dbo].[Series] ([SerieID], [Nombre], [Descripcion]) VALUES (4, N'AL15', N'Correderas Dobles')
INSERT [dbo].[Series] ([SerieID], [Nombre], [Descripcion]) VALUES (5, N'AL40', N'Elevable')
INSERT [dbo].[Series] ([SerieID], [Nombre], [Descripcion]) VALUES (6, N'Esfera60', N'Elevables Dobles')
INSERT [dbo].[Series] ([SerieID], [Nombre], [Descripcion]) VALUES (7, N'EX18', N'Practicables')
INSERT [dbo].[Series] ([SerieID], [Nombre], [Descripcion]) VALUES (8, N'AV47', N'Salomonicas')
INSERT [dbo].[Series] ([SerieID], [Nombre], [Descripcion]) VALUES (9, N'HA4', N'Celosias')
INSERT [dbo].[Series] ([SerieID], [Nombre], [Descripcion]) VALUES (10, N'CW50', N'Muro Cortina')
SET IDENTITY_INSERT [dbo].[Series] OFF
SET IDENTITY_INSERT [dbo].[Supervisores] ON 

INSERT [dbo].[Supervisores] ([SupervisorID], [NombreApellido], [Genero], [Telefono], [Direccion], [Email]) VALUES (1, N'Jose Mendez', N'M', N'8097383889', N'Calle Primera No 78 Santo Domingo', N'j.manuel@grupoha.com')
INSERT [dbo].[Supervisores] ([SupervisorID], [NombreApellido], [Genero], [Telefono], [Direccion], [Email]) VALUES (2, N'Maria Montilla', N'F', N'8097383890', N'Ensanche Parairo No 5 ', N'm.montilla@grupoha.com')
INSERT [dbo].[Supervisores] ([SupervisorID], [NombreApellido], [Genero], [Telefono], [Direccion], [Email]) VALUES (3, N'Yulissa Reyes', N'F', N'8097383891', N'Calle Primera No 28 ', N'y.reyes@grupoha.com')
INSERT [dbo].[Supervisores] ([SupervisorID], [NombreApellido], [Genero], [Telefono], [Direccion], [Email]) VALUES (4, N'Maicol Sanchez', N'M', N'8097383892', N'Ensanche Isabelita No 43', N'm.sanchez@grupoha.com')
INSERT [dbo].[Supervisores] ([SupervisorID], [NombreApellido], [Genero], [Telefono], [Direccion], [Email]) VALUES (5, N'Jorge Espinosa', N'M', N'8097383893', N'Calle Primera No 29 ', N'j.espinosa@grupoha.com')
INSERT [dbo].[Supervisores] ([SupervisorID], [NombreApellido], [Genero], [Telefono], [Direccion], [Email]) VALUES (6, N'Elizabeth Severino', N'F', N'8097383894', N'Ensanche Isabelita No 28', N'e.severino@grupoha.com')
INSERT [dbo].[Supervisores] ([SupervisorID], [NombreApellido], [Genero], [Telefono], [Direccion], [Email]) VALUES (7, N'Javier Salcedo', N'M', N'8097383895', N'Calle Primera No 29', N'j.salcedo2@grupoha.com')
INSERT [dbo].[Supervisores] ([SupervisorID], [NombreApellido], [Genero], [Telefono], [Direccion], [Email]) VALUES (8, N'Samuel Matos', N'M', N'8097383896', N'Ensanche Isabelita No 29', N's.matos@grupoha.com')
INSERT [dbo].[Supervisores] ([SupervisorID], [NombreApellido], [Genero], [Telefono], [Direccion], [Email]) VALUES (9, N'Eudy Frias', N'M', N'8097383897', N'Calle Primera No 29', N'e.frias@grupoha.com')
INSERT [dbo].[Supervisores] ([SupervisorID], [NombreApellido], [Genero], [Telefono], [Direccion], [Email]) VALUES (10, N'Ruth Aybar', N'F', N'8097383898', N'Ensanche Isabelita No 29', N'r.aybar@grupoha.com')
SET IDENTITY_INSERT [dbo].[Supervisores] OFF
SET IDENTITY_INSERT [dbo].[TipoPresupuestos] ON 

INSERT [dbo].[TipoPresupuestos] ([TipoPresupuestoID], [Nombre], [Descripcion]) VALUES (1, N'Cerramientos Acristalados', N'Interior')
INSERT [dbo].[TipoPresupuestos] ([TipoPresupuestoID], [Nombre], [Descripcion]) VALUES (2, N'Mamparas Fijas', N'Banos')
INSERT [dbo].[TipoPresupuestos] ([TipoPresupuestoID], [Nombre], [Descripcion]) VALUES (3, N'Maparas Flotantes', N'Banos')
INSERT [dbo].[TipoPresupuestos] ([TipoPresupuestoID], [Nombre], [Descripcion]) VALUES (4, N'Escaleras', N'Mixta')
INSERT [dbo].[TipoPresupuestos] ([TipoPresupuestoID], [Nombre], [Descripcion]) VALUES (5, N'Barandas', N'Balcones')
INSERT [dbo].[TipoPresupuestos] ([TipoPresupuestoID], [Nombre], [Descripcion]) VALUES (6, N'Jambas', N'Terminaciones')
INSERT [dbo].[TipoPresupuestos] ([TipoPresupuestoID], [Nombre], [Descripcion]) VALUES (7, N'Muro Cortina', N'Exterior')
INSERT [dbo].[TipoPresupuestos] ([TipoPresupuestoID], [Nombre], [Descripcion]) VALUES (8, N'Fachadas Ventiladas', N'Disipador')
INSERT [dbo].[TipoPresupuestos] ([TipoPresupuestoID], [Nombre], [Descripcion]) VALUES (9, N'ACM', N'Alucobond')
INSERT [dbo].[TipoPresupuestos] ([TipoPresupuestoID], [Nombre], [Descripcion]) VALUES (10, N'Counters', N'Muebles')
SET IDENTITY_INSERT [dbo].[TipoPresupuestos] OFF
SET IDENTITY_INSERT [dbo].[Vidrios] ON 

INSERT [dbo].[Vidrios] ([VidrioID], [Nombre], [Espesor], [ColorID]) VALUES (1, N'Laminado', N'6 + 6', 7)
INSERT [dbo].[Vidrios] ([VidrioID], [Nombre], [Espesor], [ColorID]) VALUES (2, N'Laminado', N'10 + 10', 7)
INSERT [dbo].[Vidrios] ([VidrioID], [Nombre], [Espesor], [ColorID]) VALUES (3, N'Monolitico', N'8', 7)
INSERT [dbo].[Vidrios] ([VidrioID], [Nombre], [Espesor], [ColorID]) VALUES (4, N'Camara', N'12 + 6', 5)
INSERT [dbo].[Vidrios] ([VidrioID], [Nombre], [Espesor], [ColorID]) VALUES (5, N'Templado', N'10', 7)
INSERT [dbo].[Vidrios] ([VidrioID], [Nombre], [Espesor], [ColorID]) VALUES (6, N'Espejo', N'12', 7)
INSERT [dbo].[Vidrios] ([VidrioID], [Nombre], [Espesor], [ColorID]) VALUES (7, N'Anti Bala', N'19', 7)
INSERT [dbo].[Vidrios] ([VidrioID], [Nombre], [Espesor], [ColorID]) VALUES (8, N'Monolitico', N'10', 7)
INSERT [dbo].[Vidrios] ([VidrioID], [Nombre], [Espesor], [ColorID]) VALUES (9, N'Templado', N'12', 5)
INSERT [dbo].[Vidrios] ([VidrioID], [Nombre], [Espesor], [ColorID]) VALUES (10, N'Camara', N'10 + 6', 5)
SET IDENTITY_INSERT [dbo].[Vidrios] OFF
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Contactos] FOREIGN KEY([ContactoID])
REFERENCES [dbo].[Contactos] ([ContactoID])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Contactos]
GO
ALTER TABLE [dbo].[Presupuestos]  WITH CHECK ADD  CONSTRAINT [FK_Presupuestos_Colores] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Colores] ([ColorID])
GO
ALTER TABLE [dbo].[Presupuestos] CHECK CONSTRAINT [FK_Presupuestos_Colores]
GO
ALTER TABLE [dbo].[Presupuestos]  WITH CHECK ADD  CONSTRAINT [FK_Presupuestos_Gamas] FOREIGN KEY([GamaID])
REFERENCES [dbo].[Gamas] ([GamaID])
GO
ALTER TABLE [dbo].[Presupuestos] CHECK CONSTRAINT [FK_Presupuestos_Gamas]
GO
ALTER TABLE [dbo].[Presupuestos]  WITH CHECK ADD  CONSTRAINT [FK_Presupuestos_Series] FOREIGN KEY([SerieID])
REFERENCES [dbo].[Series] ([SerieID])
GO
ALTER TABLE [dbo].[Presupuestos] CHECK CONSTRAINT [FK_Presupuestos_Series]
GO
ALTER TABLE [dbo].[Presupuestos]  WITH CHECK ADD  CONSTRAINT [FK_Presupuestos_TipoPresupuestos] FOREIGN KEY([TipoPresupuestoID])
REFERENCES [dbo].[TipoPresupuestos] ([TipoPresupuestoID])
GO
ALTER TABLE [dbo].[Presupuestos] CHECK CONSTRAINT [FK_Presupuestos_TipoPresupuestos]
GO
ALTER TABLE [dbo].[Presupuestos]  WITH CHECK ADD  CONSTRAINT [FK_Presupuestos_Vidrios] FOREIGN KEY([VidrioID])
REFERENCES [dbo].[Vidrios] ([VidrioID])
GO
ALTER TABLE [dbo].[Presupuestos] CHECK CONSTRAINT [FK_Presupuestos_Vidrios]
GO
ALTER TABLE [dbo].[Proyectos]  WITH CHECK ADD  CONSTRAINT [FK_Proyectos_Clientes] FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Clientes] ([ClienteID])
GO
ALTER TABLE [dbo].[Proyectos] CHECK CONSTRAINT [FK_Proyectos_Clientes]
GO
ALTER TABLE [dbo].[Proyectos]  WITH CHECK ADD  CONSTRAINT [FK_Proyectos_Presupuestos] FOREIGN KEY([PresupuestoID])
REFERENCES [dbo].[Presupuestos] ([PresupuestoID])
GO
ALTER TABLE [dbo].[Proyectos] CHECK CONSTRAINT [FK_Proyectos_Presupuestos]
GO
ALTER TABLE [dbo].[Proyectos]  WITH CHECK ADD  CONSTRAINT [FK_Proyectos_Supervisor] FOREIGN KEY([SupervisorID])
REFERENCES [dbo].[Supervisores] ([SupervisorID])
GO
ALTER TABLE [dbo].[Proyectos] CHECK CONSTRAINT [FK_Proyectos_Supervisor]
GO
ALTER TABLE [dbo].[Vidrios]  WITH CHECK ADD  CONSTRAINT [FK_Vidrios_Colores] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Colores] ([ColorID])
GO
ALTER TABLE [dbo].[Vidrios] CHECK CONSTRAINT [FK_Vidrios_Colores]
GO
USE [master]
GO
ALTER DATABASE [AdministradorDeProyectosDB] SET  READ_WRITE 
GO
