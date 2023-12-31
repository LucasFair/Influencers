USE [master]
GO
/****** Object:  Database [influencersDB]    Script Date: 21/08/2023 12.38.50 ******/
CREATE DATABASE [influencersDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'influencersDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\influencersDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'influencersDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\influencersDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [influencersDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [influencersDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [influencersDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [influencersDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [influencersDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [influencersDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [influencersDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [influencersDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [influencersDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [influencersDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [influencersDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [influencersDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [influencersDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [influencersDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [influencersDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [influencersDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [influencersDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [influencersDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [influencersDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [influencersDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [influencersDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [influencersDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [influencersDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [influencersDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [influencersDB] SET RECOVERY FULL 
GO
ALTER DATABASE [influencersDB] SET  MULTI_USER 
GO
ALTER DATABASE [influencersDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [influencersDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [influencersDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [influencersDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [influencersDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [influencersDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'influencersDB', N'ON'
GO
ALTER DATABASE [influencersDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [influencersDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [influencersDB]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 21/08/2023 12.38.50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[brandID] [tinyint] NULL,
	[name] [varchar](32) NULL,
	[category] [varchar](32) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Collaborations]    Script Date: 21/08/2023 12.38.50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Collaborations](
	[collaborationID] [tinyint] NULL,
	[influencerID] [tinyint] NULL,
	[brandID] [tinyint] NULL,
	[platformID] [tinyint] NULL,
	[duration] [smallint] NULL,
	[payment] [decimal](6, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Influencers]    Script Date: 21/08/2023 12.38.50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Influencers](
	[InfluencerID] [tinyint] NULL,
	[name] [varchar](32) NULL,
	[age] [tinyint] NULL,
	[instagramFollowers] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SocialMediaPlatforms]    Script Date: 21/08/2023 12.38.50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialMediaPlatforms](
	[platformID] [tinyint] NULL,
	[name] [varchar](32) NULL,
	[averageUserAge] [decimal](4, 1) NULL,
	[totalUsers] [int] NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [influencersDB] SET  READ_WRITE 
GO
