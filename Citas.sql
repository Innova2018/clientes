USE [master]
GO
/****** Object:  Database [BDReferencias]    Script Date: 10/11/2018 22:42:28 ******/
CREATE DATABASE [BDReferencias]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDReferencias', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER01\MSSQL\DATA\BDReferencias.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BDReferencias_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER01\MSSQL\DATA\BDReferencias_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BDReferencias] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDReferencias].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDReferencias] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDReferencias] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDReferencias] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDReferencias] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDReferencias] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDReferencias] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BDReferencias] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDReferencias] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDReferencias] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDReferencias] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDReferencias] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDReferencias] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDReferencias] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDReferencias] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDReferencias] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BDReferencias] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDReferencias] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDReferencias] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDReferencias] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDReferencias] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDReferencias] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDReferencias] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDReferencias] SET RECOVERY FULL 
GO
ALTER DATABASE [BDReferencias] SET  MULTI_USER 
GO
ALTER DATABASE [BDReferencias] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDReferencias] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDReferencias] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDReferencias] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BDReferencias] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BDReferencias', N'ON'
GO
ALTER DATABASE [BDReferencias] SET QUERY_STORE = OFF
GO
USE [BDReferencias]
GO
/****** Object:  Table [dbo].[cita]    Script Date: 10/11/2018 22:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cita](
	[numcita] [int] NOT NULL,
	[dni] [int] NULL,
	[fcita] [datetime] NULL,
	[hcita] [nchar](8) NULL,
	[nommedico] [nchar](50) NULL,
	[estado] [nchar](1) NOT NULL,
 CONSTRAINT [PK_cita] PRIMARY KEY CLUSTERED 
(
	[numcita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[paciente]    Script Date: 10/11/2018 22:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[paciente](
	[dni] [nchar](8) NOT NULL,
	[nombres] [nvarchar](80) NULL,
 CONSTRAINT [PK_paciente] PRIMARY KEY CLUSTERED 
(
	[dni] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[cita] ([numcita], [dni], [fcita], [hcita], [nommedico], [estado]) VALUES (1, 40, CAST(N'2018-11-05T22:11:00.000' AS DateTime), N'15:00   ', N'Javier Suarez                                     ', N'1')
INSERT [dbo].[cita] ([numcita], [dni], [fcita], [hcita], [nommedico], [estado]) VALUES (3, 50, CAST(N'2018-11-04T22:13:00.000' AS DateTime), N'12;00   ', N'Javier Suarez                                     ', N'0')
INSERT [dbo].[cita] ([numcita], [dni], [fcita], [hcita], [nommedico], [estado]) VALUES (258, 14, CAST(N'2018-11-10T21:57:00.000' AS DateTime), N'14:00   ', N'Paula Garcia                                      ', N'1')
USE [master]
GO
ALTER DATABASE [BDReferencias] SET  READ_WRITE 
GO
