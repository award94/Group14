USE [master]
GO

/****** Object:  Database [Zoo]    Script Date: 3/11/2018 12:07:35 PM ******/
CREATE DATABASE [Zoo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Zoo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Zoo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Zoo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Zoo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [Zoo] SET COMPATIBILITY_LEVEL = 140
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Zoo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Zoo] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Zoo] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Zoo] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Zoo] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Zoo] SET ARITHABORT OFF 
GO

ALTER DATABASE [Zoo] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Zoo] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Zoo] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Zoo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Zoo] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Zoo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Zoo] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Zoo] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Zoo] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Zoo] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Zoo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Zoo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Zoo] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Zoo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Zoo] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Zoo] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Zoo] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Zoo] SET RECOVERY FULL 
GO

ALTER DATABASE [Zoo] SET  MULTI_USER 
GO

ALTER DATABASE [Zoo] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Zoo] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Zoo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Zoo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [Zoo] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Zoo] SET QUERY_STORE = OFF
GO

USE [Zoo]
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

ALTER DATABASE [Zoo] SET  READ_WRITE 
GO
