USE [master]
GO
/****** Object:  Database [masterpol_kt7_nikulina]    Script Date: 06.11.2024 14:48:32 ******/
CREATE DATABASE [masterpol_kt7_nikulina]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'masterpol_kt7_nikulina', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\masterpol_kt7_nikulina.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'masterpol_kt7_nikulina_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\masterpol_kt7_nikulina_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [masterpol_kt7_nikulina].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET ARITHABORT OFF 
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET  DISABLE_BROKER 
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET  MULTI_USER 
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET DB_CHAINING OFF 
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET QUERY_STORE = OFF
GO
USE [masterpol_kt7_nikulina]
GO
/****** Object:  Table [dbo].[MaterialType]    Script Date: 06.11.2024 14:48:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialType](
	[IdTypeMaterial] [int] NOT NULL,
	[TypeMaterial] [nvarchar](50) NOT NULL,
	[ProcentBreak] [decimal](19, 4) NOT NULL,
 CONSTRAINT [PK_MaterialType] PRIMARY KEY CLUSTERED 
(
	[IdTypeMaterial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NameCompany]    Script Date: 06.11.2024 14:48:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NameCompany](
	[id] [int] NOT NULL,
	[NamePartner] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NameCompany] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NameProduct]    Script Date: 06.11.2024 14:48:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NameProduct](
	[id] [int] NOT NULL,
	[NameProduct] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_NameProduct] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerProducts]    Script Date: 06.11.2024 14:48:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerProducts](
	[id] [int] NOT NULL,
	[IdProducts] [int] NOT NULL,
	[IdNamePartner] [int] NOT NULL,
	[CountProduct] [int] NOT NULL,
	[DateSale] [date] NOT NULL,
 CONSTRAINT [PK_PartnerProducts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partners]    Script Date: 06.11.2024 14:48:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners](
	[id] [int] NOT NULL,
	[IdTypePartner] [int] NOT NULL,
	[IdNamePartner] [int] NOT NULL,
	[Lname] [nvarchar](50) NOT NULL,
	[NamePartner] [nvarchar](50) NOT NULL,
	[Pytronimic] [nvarchar](50) NOT NULL,
	[EmailPartner] [nvarchar](50) NOT NULL,
	[telephonePartner] [int] NOT NULL,
	[IndexPartner] [int] NOT NULL,
	[Area] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[Street] [nvarchar](50) NOT NULL,
	[NumHouse] [int] NOT NULL,
	[INN] [int] NOT NULL,
	[Rating] [int] NOT NULL,
 CONSTRAINT [PK_Partners] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerType]    Script Date: 06.11.2024 14:48:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerType](
	[id] [int] NOT NULL,
	[TypePartner] [nchar](10) NOT NULL,
 CONSTRAINT [PK_PartnerType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 06.11.2024 14:48:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] NOT NULL,
	[IdTypeProduct] [int] NOT NULL,
	[IdNameProduct] [int] NOT NULL,
	[Article] [int] NOT NULL,
	[MinPrice] [decimal](19, 2) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTupe]    Script Date: 06.11.2024 14:48:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTupe](
	[id] [int] NOT NULL,
	[TypeProduct] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProductTupe] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTypeAndCoff]    Script Date: 06.11.2024 14:48:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTypeAndCoff](
	[id] [int] NOT NULL,
	[idTypeProduct] [int] NOT NULL,
	[Cofficient] [decimal](19, 2) NOT NULL,
 CONSTRAINT [PK_ProductTypeAndCoff] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [masterpol_kt7_nikulina] SET  READ_WRITE 
GO
