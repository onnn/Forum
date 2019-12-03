USE [master]
GO
/****** Object:  Database [ForumApplication]    Script Date: 12/2/2019 8:06:52 PM ******/
CREATE DATABASE [ForumApplication]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ForumApplication', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS01\MSSQL\DATA\ForumApplication.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ForumApplication_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS01\MSSQL\DATA\ForumApplication_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ForumApplication] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ForumApplication].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ForumApplication] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ForumApplication] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ForumApplication] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ForumApplication] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ForumApplication] SET ARITHABORT OFF 
GO
ALTER DATABASE [ForumApplication] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ForumApplication] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ForumApplication] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ForumApplication] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ForumApplication] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ForumApplication] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ForumApplication] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ForumApplication] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ForumApplication] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ForumApplication] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ForumApplication] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ForumApplication] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ForumApplication] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ForumApplication] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ForumApplication] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ForumApplication] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ForumApplication] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ForumApplication] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ForumApplication] SET  MULTI_USER 
GO
ALTER DATABASE [ForumApplication] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ForumApplication] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ForumApplication] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ForumApplication] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ForumApplication] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ForumApplication] SET QUERY_STORE = OFF
GO
USE [ForumApplication]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 12/2/2019 8:06:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Admin_Id] [int] IDENTITY(1,1) NOT NULL,
	[Admin_Username] [nvarchar](max) NOT NULL,
	[Admin_Password] [nvarchar](max) NOT NULL,
	[Admin_Email] [nvarchar](max) NOT NULL,
	[Admin_FName] [nvarchar](max) NOT NULL,
	[Admin_LName] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 12/2/2019 8:06:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[User_Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Username] [nvarchar](50) NOT NULL,
	[User_Password] [nvarchar](50) NOT NULL,
	[User_Email] [nvarchar](50) NOT NULL,
	[User_FName] [nvarchar](50) NOT NULL,
	[User_LName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [ForumApplication] SET  READ_WRITE 
GO
