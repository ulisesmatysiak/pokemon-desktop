USE [master]
GO
/****** Object:  Database [POKEDEX_DB]    Script Date: 12/05/2023 11:32:27 ******/
CREATE DATABASE [POKEDEX_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'POKEDEX_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\POKEDEX_DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'POKEDEX_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\POKEDEX_DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [POKEDEX_DB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [POKEDEX_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [POKEDEX_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [POKEDEX_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [POKEDEX_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [POKEDEX_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [POKEDEX_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [POKEDEX_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [POKEDEX_DB] SET  MULTI_USER 
GO
ALTER DATABASE [POKEDEX_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [POKEDEX_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [POKEDEX_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [POKEDEX_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [POKEDEX_DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [POKEDEX_DB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [POKEDEX_DB] SET QUERY_STORE = OFF
GO
USE [POKEDEX_DB]
GO
/****** Object:  Table [dbo].[ELEMENTOS]    Script Date: 12/05/2023 11:32:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ELEMENTOS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_ELEMENTOS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[POKEMONS]    Script Date: 12/05/2023 11:32:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POKEMONS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Numero] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[UrlImagen] [varchar](300) NULL,
	[IdTipo] [int] NULL,
	[IdDebilidad] [int] NULL,
	[IdEvolucion] [int] NULL,
	[Activo] [bit] NULL,
 CONSTRAINT [PK_POKEMONS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERS]    Script Date: 12/05/2023 11:32:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](50) NULL,
	[pass] [varchar](50) NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[fechaNacimiento] [smalldatetime] NULL,
	[admin] [bit] NULL,
	[imagenPerfil] [varchar](30) NULL,
 CONSTRAINT [PK_USERS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ELEMENTOS] ON 

INSERT [dbo].[ELEMENTOS] ([Id], [Descripcion]) VALUES (1, N'Planta')
INSERT [dbo].[ELEMENTOS] ([Id], [Descripcion]) VALUES (2, N'Fuego')
INSERT [dbo].[ELEMENTOS] ([Id], [Descripcion]) VALUES (3, N'Agua')
SET IDENTITY_INSERT [dbo].[ELEMENTOS] OFF
GO
SET IDENTITY_INSERT [dbo].[POKEMONS] ON 

INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (1, 1, N'Bulbasaur 2', N'Tortuga', N'https://assets.pokemon.com/assets/cms2/img/pokedex/full/001.png', 1, 1, NULL, 1)
INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (2, 4, N'Charmander', N'Poke dragon', N'https://assets.pokemon.com/assets/cms2/img/pokedex/full/004.png', 1, 3, NULL, 1)
INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (3, 11, N'Butterfree', N'mariposa', N'https://assets.pokemon.com/assets/cms2/img/pokedex/full/012.png', 1, 1, NULL, 1)
INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (4, 15, N'Pidgey', N'Voladorrrrr', N'https://assets.pokemon.com/assets/cms2/img/pokedex/full/016.png', 2, 1, NULL, 1)
INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (7, 9, N'Charizard', N'Dragon de fuego', N'https://assets.pokemon.com/assets/cms2/img/pokedex/full/006.png', 2, 3, NULL, 1)
INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (8, 32, N'Blastoise', N'Tortugota de agua', N'https://assets.pokemon.com/assets/cms2/img/pokedex/full/009.png', 3, 1, NULL, 1)
INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (10, 19, N'Rattata', N'Ratita rosada.', N'https://assets.pokemon.com/assets/cms2/img/pokedex/full/019.png', 3, 1, NULL, 1)
INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (11, 25, N'Pikachu', N'Ratita amarilla', N'https://assets.pokemon.com/assets/cms2/img/pokedex/full/025.png', 2, 2, NULL, 1)
INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (12, 143, N'Snorlax', N'Dormilon', N'https://assets.pokemon.com/assets/cms2/img/pokedex/full/143.png', 1, 1, NULL, 1)
INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (13, 54, N'Psyduck', N'Pato loco', N'https://assets.pokemon.com/assets/cms2/img/pokedex/full/054.png', 3, 2, NULL, 1)
INSERT [dbo].[POKEMONS] ([Id], [Numero], [Nombre], [Descripcion], [UrlImagen], [IdTipo], [IdDebilidad], [IdEvolucion], [Activo]) VALUES (14, 58, N'Growlithe', N'Perrito', N'https://assets.pokemon.com/assets/cms2/img/pokedex/full/058.png', 2, 3, NULL, 1)
SET IDENTITY_INSERT [dbo].[POKEMONS] OFF
GO
SET IDENTITY_INSERT [dbo].[USERS] ON 

INSERT [dbo].[USERS] ([id], [email], [pass], [nombre], [apellido], [fechaNacimiento], [admin], [imagenPerfil]) VALUES (1, N'admin', N'admin', NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[USERS] ([id], [email], [pass], [nombre], [apellido], [fechaNacimiento], [admin], [imagenPerfil]) VALUES (2, N'test', N'test', NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[USERS] ([id], [email], [pass], [nombre], [apellido], [fechaNacimiento], [admin], [imagenPerfil]) VALUES (3, N'algo', N'123', NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[USERS] ([id], [email], [pass], [nombre], [apellido], [fechaNacimiento], [admin], [imagenPerfil]) VALUES (4, N'algo2', N'123456', NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[USERS] ([id], [email], [pass], [nombre], [apellido], [fechaNacimiento], [admin], [imagenPerfil]) VALUES (5, N'ulisesmatysiak2@gmail.com', N'12345', N'ulises', N'matysiak', CAST(N'2000-03-16T00:00:00' AS SmallDateTime), 0, N'perfil-5.jpg')
INSERT [dbo].[USERS] ([id], [email], [pass], [nombre], [apellido], [fechaNacimiento], [admin], [imagenPerfil]) VALUES (6, N'uli', N'123', NULL, NULL, NULL, 0, NULL)
INSERT [dbo].[USERS] ([id], [email], [pass], [nombre], [apellido], [fechaNacimiento], [admin], [imagenPerfil]) VALUES (7, N'uli@uli', N'1234', NULL, NULL, NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[USERS] OFF
GO
ALTER TABLE [dbo].[POKEMONS]  WITH CHECK ADD  CONSTRAINT [FK_POKEMONS_ELEMENTOS] FOREIGN KEY([IdTipo])
REFERENCES [dbo].[ELEMENTOS] ([Id])
GO
ALTER TABLE [dbo].[POKEMONS] CHECK CONSTRAINT [FK_POKEMONS_ELEMENTOS]
GO
ALTER TABLE [dbo].[POKEMONS]  WITH CHECK ADD  CONSTRAINT [FK_POKEMONS_ELEMENTOS1] FOREIGN KEY([IdDebilidad])
REFERENCES [dbo].[ELEMENTOS] ([Id])
GO
ALTER TABLE [dbo].[POKEMONS] CHECK CONSTRAINT [FK_POKEMONS_ELEMENTOS1]
GO
ALTER TABLE [dbo].[POKEMONS]  WITH CHECK ADD  CONSTRAINT [FK_POKEMONS_POKEMONS] FOREIGN KEY([IdEvolucion])
REFERENCES [dbo].[POKEMONS] ([Id])
GO
ALTER TABLE [dbo].[POKEMONS] CHECK CONSTRAINT [FK_POKEMONS_POKEMONS]
GO
/****** Object:  StoredProcedure [dbo].[insertarNuevo]    Script Date: 12/05/2023 11:32:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[insertarNuevo]
@email varchar (50),
@pass varchar (50)
as
insert into USERS (email,pass, admin) output inserted.id values (@email,@pass,0)
GO
/****** Object:  StoredProcedure [dbo].[storedAltaPokemon]    Script Date: 12/05/2023 11:32:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[storedAltaPokemon]
@numero int,
@nombre varchar(50),
@desc varchar (50),
@img varchar (300),
@idTipo int,
@idDebilidad int
as
insert into POKEMONS values (@numero,@nombre,@desc,@img,@idTipo,@idDebilidad,null,1)
GO
/****** Object:  StoredProcedure [dbo].[storedListar]    Script Date: 12/05/2023 11:32:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE procedure [dbo].[storedListar] as
Select Numero, Nombre, P.Descripcion, UrlImagen, E.Descripcion Tipo, D.Descripcion debilidad, P.IdTipo, P.IdDebilidad, P.Id, P.Activo 
From POKEMONS P, ELEMENTOS E, ELEMENTOS D  
Where E.Id = P.IdTipo  And D.Id = P.IdDebilidad 
GO
/****** Object:  StoredProcedure [dbo].[storedModificarPokemon]    Script Date: 12/05/2023 11:32:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create procedure [dbo].[storedModificarPokemon]
@numero int,
@nombre varchar (50),
@desc varchar (50),
@img varchar (300),
@idTipo int,
@idDebilidad int,
@id int
as
update POKEMONS set Numero = @Numero, Nombre = @Nombre, Descripcion = @Desc,
UrlImagen = @img, IdTipo = @IdTipo, IdDebilidad = @IdDebilidad
where Id = @Id  
GO
USE [master]
GO
ALTER DATABASE [POKEDEX_DB] SET  READ_WRITE 
GO
