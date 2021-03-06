USE [master]
GO
/****** Object:  Database [bazaDanych]    Script Date: 28.05.2019 11:20:09 ******/
CREATE DATABASE [bazaDanych]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bazaDanych', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\bazaDanych.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bazaDanych_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\bazaDanych_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [bazaDanych] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bazaDanych].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bazaDanych] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bazaDanych] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bazaDanych] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bazaDanych] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bazaDanych] SET ARITHABORT OFF 
GO
ALTER DATABASE [bazaDanych] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bazaDanych] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bazaDanych] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bazaDanych] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bazaDanych] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bazaDanych] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bazaDanych] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bazaDanych] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bazaDanych] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bazaDanych] SET  DISABLE_BROKER 
GO
ALTER DATABASE [bazaDanych] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bazaDanych] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bazaDanych] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bazaDanych] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bazaDanych] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bazaDanych] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bazaDanych] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bazaDanych] SET RECOVERY FULL 
GO
ALTER DATABASE [bazaDanych] SET  MULTI_USER 
GO
ALTER DATABASE [bazaDanych] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bazaDanych] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bazaDanych] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bazaDanych] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bazaDanych] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'bazaDanych', N'ON'
GO
ALTER DATABASE [bazaDanych] SET QUERY_STORE = OFF
GO
USE [bazaDanych]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
/****** Object:  Login [ZARZĄDZANIE NT\SYSTEM]    Script Date: 28.05.2019 11:20:10 ******/
CREATE LOGIN [ZARZĄDZANIE NT\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 28.05.2019 11:20:10 ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 28.05.2019 11:20:10 ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLTELEMETRY]    Script Date: 28.05.2019 11:20:10 ******/
CREATE LOGIN [NT SERVICE\SQLTELEMETRY] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLSERVERAGENT]    Script Date: 28.05.2019 11:20:10 ******/
CREATE LOGIN [NT SERVICE\SQLSERVERAGENT] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT Service\MSSQLSERVER]    Script Date: 28.05.2019 11:20:10 ******/
CREATE LOGIN [NT Service\MSSQLSERVER] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [ERPE\erpe]    Script Date: 28.05.2019 11:20:10 ******/
CREATE LOGIN [ERPE\erpe] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [adnub]    Script Date: 28.05.2019 11:20:10 ******/
CREATE LOGIN [adnub] WITH PASSWORD=N'MJMzL2UdL59WrhAQkoa2eqPvWVeWPMB66PLLxOmAqAE=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO
ALTER LOGIN [adnub] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 28.05.2019 11:20:10 ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'JFL+dNIhC130IS6XNAdY3HHolImD0MhchAejlWbLKOk=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 28.05.2019 11:20:10 ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'HxiaYwmdx8xijDm+4OOE0+dVepQm0SlWH35+whtz6EY=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
ALTER AUTHORIZATION ON DATABASE::[bazaDanych] TO [adnub]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLSERVERAGENT]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT Service\MSSQLSERVER]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [ERPE\erpe]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [adnub]
GO
USE [bazaDanych]
GO
/****** Object:  Table [dbo].[Archiwum]    Script Date: 28.05.2019 11:20:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Archiwum](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[imie] [varchar](20) NULL,
	[id_rasa] [int] NULL,
	[id_opiekun] [int] NULL,
	[isLagodny] [bit] NULL,
	[isWege] [bit] NULL,
	[choroby] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Archiwum] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Badanie]    Script Date: 28.05.2019 11:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Badanie](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[data] [date] NULL,
	[opis] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Badanie] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Dane]    Script Date: 28.05.2019 11:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dane](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[imie] [varchar](10) NOT NULL,
	[nazwisko] [varchar](10) NOT NULL,
	[telefon] [varchar](10) NOT NULL,
	[ulica] [varchar](15) NOT NULL,
	[nr_domu] [varchar](5) NOT NULL,
	[is_sponsor] [bit] NULL,
	[id_uzytkownik] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Dane] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Darowizna]    Script Date: 28.05.2019 11:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Darowizna](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[kwota] [float] NOT NULL,
	[data] [date] NOT NULL,
	[id_uzytkownik] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Darowizna] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Logowanie]    Script Date: 28.05.2019 11:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logowanie](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[data] [datetime] NULL,
	[id_uzytkownik] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Logowanie] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Odbior]    Script Date: 28.05.2019 11:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Odbior](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[data] [date] NOT NULL,
	[id_rezerwacja] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Odbior] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Opiekun]    Script Date: 28.05.2019 11:20:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opiekun](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[imie] [varchar](10) NOT NULL,
	[nazwisko] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Opiekun] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Pies]    Script Date: 28.05.2019 11:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[imie] [varchar](10) NOT NULL,
	[id_rasa] [int] NULL,
	[id_opiekun] [int] NULL,
	[is_lagodny] [bit] NULL,
	[is_wege] [bit] NULL,
	[choroby] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Pies] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Rasa]    Script Date: 28.05.2019 11:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rasa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nazwa_pl] [varchar](20) NULL,
	[nazwa_ang] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Rasa] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Rezerwacja]    Script Date: 28.05.2019 11:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rezerwacja](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[data] [date] NOT NULL,
	[data_do] [date] NOT NULL,
	[id_pies] [int] NOT NULL,
	[id_uzytkownik] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Rezerwacja] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Uzytkownik]    Script Date: 28.05.2019 11:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uzytkownik](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[login] [varchar](6) NOT NULL,
	[haslo] [varchar](8) NOT NULL,
	[upowaznienia] [varchar](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Uzytkownik] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[Archiwum] ON 
GO
INSERT [dbo].[Archiwum] ([id], [imie], [id_rasa], [id_opiekun], [isLagodny], [isWege], [choroby]) VALUES (1, N'Melmut', 4, NULL, 1, 0, NULL)
GO
INSERT [dbo].[Archiwum] ([id], [imie], [id_rasa], [id_opiekun], [isLagodny], [isWege], [choroby]) VALUES (2, N'Zenek', 2, NULL, 1, 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[Archiwum] OFF
GO
SET IDENTITY_INSERT [dbo].[Darowizna] ON 
GO
INSERT [dbo].[Darowizna] ([id], [kwota], [data], [id_uzytkownik]) VALUES (1, 3000, CAST(N'2019-05-25' AS Date), 2)
GO
INSERT [dbo].[Darowizna] ([id], [kwota], [data], [id_uzytkownik]) VALUES (3, 210, CAST(N'2019-05-26' AS Date), 2)
GO
INSERT [dbo].[Darowizna] ([id], [kwota], [data], [id_uzytkownik]) VALUES (4, 10, CAST(N'2019-05-26' AS Date), 1)
GO
INSERT [dbo].[Darowizna] ([id], [kwota], [data], [id_uzytkownik]) VALUES (5, 40, CAST(N'2019-05-26' AS Date), 2)
GO
INSERT [dbo].[Darowizna] ([id], [kwota], [data], [id_uzytkownik]) VALUES (6, 260, CAST(N'2019-05-26' AS Date), 2)
GO
SET IDENTITY_INSERT [dbo].[Darowizna] OFF
GO
SET IDENTITY_INSERT [dbo].[Logowanie] ON 
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (1, CAST(N'2019-05-24T18:00:40.883' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (2, CAST(N'2019-05-24T18:04:18.493' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (3, CAST(N'2019-05-24T18:05:47.950' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (4, CAST(N'2019-05-24T18:24:56.560' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (5, CAST(N'2019-05-24T18:51:55.737' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (6, CAST(N'2019-05-24T18:51:56.167' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (7, CAST(N'2019-05-24T18:51:58.800' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (8, CAST(N'2019-05-24T19:35:26.660' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (9, CAST(N'2019-05-24T19:47:40.830' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (10, CAST(N'2019-05-24T19:56:09.857' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (11, CAST(N'2019-05-24T19:57:23.977' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (12, CAST(N'2019-05-24T19:58:04.530' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (13, CAST(N'2019-05-24T20:02:30.387' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (14, CAST(N'2019-05-24T20:09:29.190' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (15, CAST(N'2019-05-24T20:17:13.800' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (16, CAST(N'2019-05-24T20:17:14.103' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (17, CAST(N'2019-05-24T20:17:16.410' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (18, CAST(N'2019-05-24T20:17:16.603' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (19, CAST(N'2019-05-24T20:18:17.137' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (20, CAST(N'2019-05-24T20:25:21.107' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (21, CAST(N'2019-05-24T20:31:19.213' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (22, CAST(N'2019-05-24T20:35:33.633' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (23, CAST(N'2019-05-24T20:42:08.690' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (24, CAST(N'2019-05-24T20:44:26.313' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (25, CAST(N'2019-05-24T20:59:26.573' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (26, CAST(N'2019-05-24T21:03:06.280' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (27, CAST(N'2019-05-24T21:05:39.907' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (28, CAST(N'2019-05-24T21:07:01.450' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (29, CAST(N'2019-05-24T21:07:10.897' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (30, CAST(N'2019-05-24T21:08:50.233' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (31, CAST(N'2019-05-24T21:24:34.900' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (32, CAST(N'2019-05-24T21:24:49.300' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (33, CAST(N'2019-05-24T21:31:27.420' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (34, CAST(N'2019-05-24T22:23:25.350' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (35, CAST(N'2019-05-24T22:23:29.883' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (36, CAST(N'2019-05-24T22:23:33.650' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (37, CAST(N'2019-05-24T22:24:46.650' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (38, CAST(N'2019-05-24T22:25:53.727' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (39, CAST(N'2019-05-24T22:36:15.353' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (40, CAST(N'2019-05-25T10:58:03.423' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (41, CAST(N'2019-05-25T11:01:41.907' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (42, CAST(N'2019-05-25T11:07:08.970' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (43, CAST(N'2019-05-25T11:10:17.143' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (44, CAST(N'2019-05-25T11:16:48.560' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (45, CAST(N'2019-05-25T11:22:33.993' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (46, CAST(N'2019-05-25T11:25:42.497' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (47, CAST(N'2019-05-25T11:27:16.283' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (48, CAST(N'2019-05-25T11:28:09.420' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (49, CAST(N'2019-05-25T11:29:53.710' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (50, CAST(N'2019-05-25T11:53:44.587' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (51, CAST(N'2019-05-25T11:56:45.190' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (52, CAST(N'2019-05-25T12:02:25.710' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (53, CAST(N'2019-05-25T12:07:03.367' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (54, CAST(N'2019-05-25T12:09:21.357' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (55, CAST(N'2019-05-25T12:13:32.637' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (56, CAST(N'2019-05-25T12:31:19.067' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (57, CAST(N'2019-05-25T12:39:44.800' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (58, CAST(N'2019-05-25T12:59:42.750' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (59, CAST(N'2019-05-25T13:44:41.260' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (60, CAST(N'2019-05-25T13:44:45.733' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (61, CAST(N'2019-05-25T13:56:59.540' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (62, CAST(N'2019-05-25T13:58:01.913' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (63, CAST(N'2019-05-25T14:30:22.170' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (64, CAST(N'2019-05-25T14:33:07.377' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (65, CAST(N'2019-05-25T15:33:13.700' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (66, CAST(N'2019-05-25T15:35:34.027' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (67, CAST(N'2019-05-25T17:17:21.567' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (68, CAST(N'2019-05-25T17:58:30.703' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (69, CAST(N'2019-05-25T18:19:17.043' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (70, CAST(N'2019-05-25T18:23:56.680' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (71, CAST(N'2019-05-25T18:25:06.120' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (72, CAST(N'2019-05-25T18:27:18.190' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (73, CAST(N'2019-05-25T18:28:08.943' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (74, CAST(N'2019-05-25T18:32:24.653' AS DateTime), 5)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (75, CAST(N'2019-05-25T18:32:24.837' AS DateTime), 5)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (76, CAST(N'2019-05-25T18:32:33.730' AS DateTime), 5)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (77, CAST(N'2019-05-25T18:33:20.103' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (78, CAST(N'2019-05-26T10:01:53.773' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (79, CAST(N'2019-05-26T10:04:06.080' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (80, CAST(N'2019-05-26T10:18:13.677' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (81, CAST(N'2019-05-26T10:21:44.403' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (82, CAST(N'2019-05-26T10:31:10.573' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (83, CAST(N'2019-05-26T10:38:22.080' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (84, CAST(N'2019-05-26T10:42:02.730' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (85, CAST(N'2019-05-26T10:54:02.640' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (86, CAST(N'2019-05-26T10:54:33.593' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (87, CAST(N'2019-05-26T11:34:50.070' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (88, CAST(N'2019-05-26T11:40:04.350' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (89, CAST(N'2019-05-26T11:41:32.790' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (90, CAST(N'2019-05-26T11:50:27.223' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (91, CAST(N'2019-05-26T11:52:16.140' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (92, CAST(N'2019-05-26T11:56:24.587' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (93, CAST(N'2019-05-26T12:02:32.900' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (94, CAST(N'2019-05-26T12:11:44.353' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (95, CAST(N'2019-05-26T12:14:37.670' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (96, CAST(N'2019-05-26T12:16:45.770' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (97, CAST(N'2019-05-26T12:20:00.747' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (98, CAST(N'2019-05-26T12:33:09.520' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (99, CAST(N'2019-05-26T12:40:08.917' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (100, CAST(N'2019-05-26T12:40:57.137' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (101, CAST(N'2019-05-26T12:46:15.217' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (102, CAST(N'2019-05-26T12:54:35.663' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (103, CAST(N'2019-05-26T12:54:54.230' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (104, CAST(N'2019-05-26T12:55:11.770' AS DateTime), 5)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (105, CAST(N'2019-05-26T12:55:54.357' AS DateTime), 5)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (106, CAST(N'2019-05-26T12:56:07.373' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (107, CAST(N'2019-05-26T12:56:23.940' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (108, CAST(N'2019-05-26T13:03:04.970' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (109, CAST(N'2019-05-26T13:05:07.630' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (110, CAST(N'2019-05-26T13:19:59.957' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (111, CAST(N'2019-05-26T13:21:23.520' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (112, CAST(N'2019-05-26T13:24:15.677' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (113, CAST(N'2019-05-26T13:33:20.410' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (114, CAST(N'2019-05-26T13:34:33.840' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (115, CAST(N'2019-05-26T13:36:40.473' AS DateTime), 5)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (116, CAST(N'2019-05-26T15:33:01.653' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (117, CAST(N'2019-05-26T15:35:34.693' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (118, CAST(N'2019-05-26T15:35:57.393' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (119, CAST(N'2019-05-26T15:41:41.603' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (120, CAST(N'2019-05-26T15:46:28.237' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (121, CAST(N'2019-05-26T15:50:27.527' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (122, CAST(N'2019-05-26T15:51:14.757' AS DateTime), 5)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (123, CAST(N'2019-05-26T15:51:38.993' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (124, CAST(N'2019-05-26T15:53:54.507' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (125, CAST(N'2019-05-27T15:04:51.310' AS DateTime), 5)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (1002, CAST(N'2019-05-27T15:31:48.693' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (1003, CAST(N'2019-05-27T15:32:39.240' AS DateTime), 5)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (1004, CAST(N'2019-05-27T21:22:15.683' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (1005, CAST(N'2019-05-27T21:25:13.490' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (1006, CAST(N'2019-05-27T21:26:43.640' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (1007, CAST(N'2019-05-27T21:27:18.587' AS DateTime), 5)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (1008, CAST(N'2019-05-27T21:31:33.810' AS DateTime), 5)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (1009, CAST(N'2019-05-27T21:34:18.410' AS DateTime), 1)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (1010, CAST(N'2019-05-27T21:35:18.610' AS DateTime), 5)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (1011, CAST(N'2019-05-27T21:35:34.257' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (1012, CAST(N'2019-05-28T11:07:46.727' AS DateTime), 5)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (1013, CAST(N'2019-05-28T11:07:59.877' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (1014, CAST(N'2019-05-28T11:09:14.027' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (1015, CAST(N'2019-05-28T11:11:59.067' AS DateTime), 2)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (1016, CAST(N'2019-05-28T11:13:58.880' AS DateTime), 5)
GO
INSERT [dbo].[Logowanie] ([id], [data], [id_uzytkownik]) VALUES (1017, CAST(N'2019-05-28T11:14:32.673' AS DateTime), 2)
GO
SET IDENTITY_INSERT [dbo].[Logowanie] OFF
GO
SET IDENTITY_INSERT [dbo].[Pies] ON 
GO
INSERT [dbo].[Pies] ([id], [imie], [id_rasa], [id_opiekun], [is_lagodny], [is_wege], [choroby]) VALUES (3, N'Ciapek', 1, NULL, 1, 1, NULL)
GO
INSERT [dbo].[Pies] ([id], [imie], [id_rasa], [id_opiekun], [is_lagodny], [is_wege], [choroby]) VALUES (17, N'Mamut', NULL, NULL, 0, 0, NULL)
GO
INSERT [dbo].[Pies] ([id], [imie], [id_rasa], [id_opiekun], [is_lagodny], [is_wege], [choroby]) VALUES (18, N'Mamut', 5, NULL, 0, 1, NULL)
GO
INSERT [dbo].[Pies] ([id], [imie], [id_rasa], [id_opiekun], [is_lagodny], [is_wege], [choroby]) VALUES (1002, N'Melmut', NULL, NULL, 0, 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[Pies] OFF
GO
SET IDENTITY_INSERT [dbo].[Rasa] ON 
GO
INSERT [dbo].[Rasa] ([id], [nazwa_pl], [nazwa_ang]) VALUES (1, N'Kundel', N'Mongrel')
GO
INSERT [dbo].[Rasa] ([id], [nazwa_pl], [nazwa_ang]) VALUES (2, N'Maltanczyk', NULL)
GO
INSERT [dbo].[Rasa] ([id], [nazwa_pl], [nazwa_ang]) VALUES (3, N'Owczarek', NULL)
GO
INSERT [dbo].[Rasa] ([id], [nazwa_pl], [nazwa_ang]) VALUES (4, N'York', NULL)
GO
INSERT [dbo].[Rasa] ([id], [nazwa_pl], [nazwa_ang]) VALUES (5, N'Malamut', NULL)
GO
INSERT [dbo].[Rasa] ([id], [nazwa_pl], [nazwa_ang]) VALUES (6, N'Husky', NULL)
GO
SET IDENTITY_INSERT [dbo].[Rasa] OFF
GO
SET IDENTITY_INSERT [dbo].[Uzytkownik] ON 
GO
INSERT [dbo].[Uzytkownik] ([id], [login], [haslo], [upowaznienia]) VALUES (1, N'adnub', N'admin', N'A')
GO
INSERT [dbo].[Uzytkownik] ([id], [login], [haslo], [upowaznienia]) VALUES (2, N'jarek', N'carek', N'U')
GO
INSERT [dbo].[Uzytkownik] ([id], [login], [haslo], [upowaznienia]) VALUES (5, N'mlem', N'blep', N'A')
GO
SET IDENTITY_INSERT [dbo].[Uzytkownik] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Uzytkown__7838F2722A51BD74]    Script Date: 28.05.2019 11:20:12 ******/
ALTER TABLE [dbo].[Uzytkownik] ADD UNIQUE NONCLUSTERED 
(
	[login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Dane] ADD  DEFAULT ((0)) FOR [is_sponsor]
GO
ALTER TABLE [dbo].[Darowizna] ADD  DEFAULT (getdate()) FOR [data]
GO
ALTER TABLE [dbo].[Logowanie] ADD  DEFAULT (getdate()) FOR [data]
GO
ALTER TABLE [dbo].[Odbior] ADD  DEFAULT (getdate()) FOR [data]
GO
ALTER TABLE [dbo].[Pies] ADD  DEFAULT ((1)) FOR [id_rasa]
GO
ALTER TABLE [dbo].[Pies] ADD  DEFAULT ((0)) FOR [is_lagodny]
GO
ALTER TABLE [dbo].[Pies] ADD  DEFAULT ((0)) FOR [is_wege]
GO
ALTER TABLE [dbo].[Rezerwacja] ADD  DEFAULT (getdate()) FOR [data]
GO
ALTER TABLE [dbo].[Archiwum]  WITH CHECK ADD FOREIGN KEY([id_opiekun])
REFERENCES [dbo].[Opiekun] ([id])
GO
ALTER TABLE [dbo].[Archiwum]  WITH CHECK ADD FOREIGN KEY([id_rasa])
REFERENCES [dbo].[Rasa] ([id])
GO
ALTER TABLE [dbo].[Dane]  WITH CHECK ADD FOREIGN KEY([id_uzytkownik])
REFERENCES [dbo].[Uzytkownik] ([id])
GO
ALTER TABLE [dbo].[Darowizna]  WITH CHECK ADD FOREIGN KEY([id_uzytkownik])
REFERENCES [dbo].[Uzytkownik] ([id])
GO
ALTER TABLE [dbo].[Logowanie]  WITH CHECK ADD FOREIGN KEY([id_uzytkownik])
REFERENCES [dbo].[Uzytkownik] ([id])
GO
ALTER TABLE [dbo].[Odbior]  WITH CHECK ADD FOREIGN KEY([id_rezerwacja])
REFERENCES [dbo].[Rezerwacja] ([id])
GO
ALTER TABLE [dbo].[Pies]  WITH CHECK ADD FOREIGN KEY([id_opiekun])
REFERENCES [dbo].[Opiekun] ([id])
GO
ALTER TABLE [dbo].[Pies]  WITH CHECK ADD FOREIGN KEY([id_rasa])
REFERENCES [dbo].[Rasa] ([id])
GO
ALTER TABLE [dbo].[Rezerwacja]  WITH CHECK ADD FOREIGN KEY([id_pies])
REFERENCES [dbo].[Pies] ([id])
GO
ALTER TABLE [dbo].[Rezerwacja]  WITH CHECK ADD FOREIGN KEY([id_uzytkownik])
REFERENCES [dbo].[Uzytkownik] ([id])
GO
/****** Object:  StoredProcedure [dbo].[proc1]    Script Date: 28.05.2019 11:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[proc1] as select l.id, l.data, u.login from Logowanie as l inner join Uzytkownik as u on l.id_uzytkownik = u.id where l.id_uzytkownik=(select top 1 u2.id from Logowanie as l2 inner join Uzytkownik u2 on l2.id_uzytkownik = u2.id order by l2.id desc) order by 1 desc
GO
ALTER AUTHORIZATION ON [dbo].[proc1] TO  SCHEMA OWNER 
GO
/****** Object:  Trigger [dbo].[usunPies]    Script Date: 28.05.2019 11:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[usunPies] on [dbo].[Pies] after delete as begin
    insert into Archiwum(imie, id_rasa, id_opiekun, isLagodny, isWege, choroby) select imie, id_rasa, id_opiekun, is_lagodny, is_wege, choroby from deleted
end
GO
ALTER TABLE [dbo].[Pies] ENABLE TRIGGER [usunPies]
GO
USE [master]
GO
ALTER DATABASE [bazaDanych] SET  READ_WRITE 
GO
