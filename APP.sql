USE [master]
GO
/****** Object:  Database [Electronic Application]    Script Date: 06/04/2022 12:10:25 ص ******/
CREATE DATABASE [Electronic Application]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Electronic Application', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Electronic Application.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Electronic Application_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Electronic Application_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Electronic Application] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Electronic Application].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Electronic Application] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Electronic Application] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Electronic Application] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Electronic Application] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Electronic Application] SET ARITHABORT OFF 
GO
ALTER DATABASE [Electronic Application] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Electronic Application] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Electronic Application] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Electronic Application] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Electronic Application] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Electronic Application] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Electronic Application] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Electronic Application] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Electronic Application] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Electronic Application] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Electronic Application] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Electronic Application] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Electronic Application] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Electronic Application] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Electronic Application] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Electronic Application] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Electronic Application] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Electronic Application] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Electronic Application] SET  MULTI_USER 
GO
ALTER DATABASE [Electronic Application] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Electronic Application] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Electronic Application] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Electronic Application] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Electronic Application] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Electronic Application]
GO
/****** Object:  User [somaya]    Script Date: 06/04/2022 12:10:25 ص ******/
CREATE USER [somaya] FOR LOGIN [somaya] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [somaya]
GO
ALTER ROLE [db_datareader] ADD MEMBER [somaya]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [somaya]
GO
/****** Object:  Table [dbo].[Class1]    Script Date: 06/04/2022 12:10:26 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class1](
	[ID_Class] [nchar](10) NOT NULL,
	[Name_Class] [nvarchar](50) NULL,
	[ID_Dep] [nchar](10) NULL,
	[Num_unt] [nchar](10) NULL,
	[the_level] [nchar](10) NULL,
	[Precedence] [nchar](10) NULL,
 CONSTRAINT [PK_Class1] PRIMARY KEY CLUSTERED 
(
	[ID_Class] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Department]    Script Date: 06/04/2022 12:10:26 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[ID_Dep] [nchar](10) NOT NULL,
	[Name_Dep] [nvarchar](50) NULL,
	[Details] [nvarchar](max) NULL,
 CONSTRAINT [PK_Dep] PRIMARY KEY CLUSTERED 
(
	[ID_Dep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Manager]    Script Date: 06/04/2022 12:10:26 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[ID_Manager] [nchar](10) NOT NULL,
	[Name_Mang] [nvarchar](50) NULL,
	[Password] [nchar](10) NULL,
 CONSTRAINT [PK_Manager] PRIMARY KEY CLUSTERED 
(
	[ID_Manager] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Regclass]    Script Date: 06/04/2022 12:10:26 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regclass](
	[ID_unt] [nchar](10) NULL,
	[Name_Class] [nvarchar](50) NULL,
	[ID_stu] [nchar](10) NULL,
	[ID_Class] [nchar](10) NULL,
	[level_stu] [nchar](10) NULL,
	[Avr] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 06/04/2022 12:10:26 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[ID_Stu] [nchar](10) NULL,
	[Name_Stu] [nchar](10) NULL,
	[Email] [nchar](10) NULL,
	[Semester] [nchar](10) NULL,
	[ID_Dep] [nchar](10) NULL,
	[ID_Supervisor] [nchar](10) NULL,
	[Completed_un] [nchar](10) NULL,
	[Available_un] [nchar](10) NULL,
	[cum_avr] [nchar](10) NULL,
	[Sem_avr] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Supervisor]    Script Date: 06/04/2022 12:10:26 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supervisor](
	[ID_Supervisor] [nchar](10) NULL,
	[ID_Dep] [nchar](10) NULL,
	[Name_Supervisor] [nchar](10) NULL,
	[Num_Stu] [nchar](10) NULL,
	[Email] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 06/04/2022 12:10:26 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID_User] [nchar](10) NOT NULL,
	[Password] [nchar](10) NULL,
	[Type_U] [nchar](10) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID_User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Class1]  WITH CHECK ADD  CONSTRAINT [FK_Class1_Department] FOREIGN KEY([ID_Class])
REFERENCES [dbo].[Department] ([ID_Dep])
GO
ALTER TABLE [dbo].[Class1] CHECK CONSTRAINT [FK_Class1_Department]
GO
ALTER TABLE [dbo].[Supervisor]  WITH CHECK ADD  CONSTRAINT [FK_Supervisor_Department] FOREIGN KEY([ID_Dep])
REFERENCES [dbo].[Department] ([ID_Dep])
GO
ALTER TABLE [dbo].[Supervisor] CHECK CONSTRAINT [FK_Supervisor_Department]
GO
USE [master]
GO
ALTER DATABASE [Electronic Application] SET  READ_WRITE 
GO
