--USE [OkulSistemiDB]
--GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'view_SeviyeVeSinifaGoreEtiketAdet', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_SeviyeVeSinifaGoreEtiketAdet'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'view_SeviyeVeSinifaGoreEtiketAdet', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_SeviyeVeSinifaGoreEtiketAdet'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'view_SeviyeVeSinifaGoreEtiketAdet', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_SeviyeVeSinifaGoreEtiketAdet'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'view_SeviyeAdetToplamOrtalama', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_SeviyeAdetToplamOrtalama'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'view_SeviyeAdetToplamOrtalama', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_SeviyeAdetToplamOrtalama'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'view_PersonelTuruneGoreAdet', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_PersonelTuruneGoreAdet'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'view_PersonelTuruneGoreAdet', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_PersonelTuruneGoreAdet'

GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SubeSeviye_Sube]') AND parent_object_id = OBJECT_ID(N'[dbo].[SubeSeviye]'))
ALTER TABLE [dbo].[SubeSeviye] DROP CONSTRAINT [FK_SubeSeviye_Sube]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SubeSeviye_Seviye]') AND parent_object_id = OBJECT_ID(N'[dbo].[SubeSeviye]'))
ALTER TABLE [dbo].[SubeSeviye] DROP CONSTRAINT [FK_SubeSeviye_Seviye]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Sube_Semt]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sube]'))
ALTER TABLE [dbo].[Sube] DROP CONSTRAINT [FK_Sube_Semt]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SinifEtiket_SubeSeviye]') AND parent_object_id = OBJECT_ID(N'[dbo].[SinifEtiket]'))
ALTER TABLE [dbo].[SinifEtiket] DROP CONSTRAINT [FK_SinifEtiket_SubeSeviye]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SinifEtiket_Sinif]') AND parent_object_id = OBJECT_ID(N'[dbo].[SinifEtiket]'))
ALTER TABLE [dbo].[SinifEtiket] DROP CONSTRAINT [FK_SinifEtiket_Sinif]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SinifEtiket_Etiket]') AND parent_object_id = OBJECT_ID(N'[dbo].[SinifEtiket]'))
ALTER TABLE [dbo].[SinifEtiket] DROP CONSTRAINT [FK_SinifEtiket_Etiket]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Semt_Sehir]') AND parent_object_id = OBJECT_ID(N'[dbo].[Semt]'))
ALTER TABLE [dbo].[Semt] DROP CONSTRAINT [FK_Semt_Sehir]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Sehir_Ulke]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sehir]'))
ALTER TABLE [dbo].[Sehir] DROP CONSTRAINT [FK_Sehir_Ulke]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PersonelSubeSeviye_SubeSeviye]') AND parent_object_id = OBJECT_ID(N'[dbo].[PersonelSubeSeviye]'))
ALTER TABLE [dbo].[PersonelSubeSeviye] DROP CONSTRAINT [FK_PersonelSubeSeviye_SubeSeviye]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PersonelSubeSeviye_Personel]') AND parent_object_id = OBJECT_ID(N'[dbo].[PersonelSubeSeviye]'))
ALTER TABLE [dbo].[PersonelSubeSeviye] DROP CONSTRAINT [FK_PersonelSubeSeviye_Personel]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Personel_PersonelTuru]') AND parent_object_id = OBJECT_ID(N'[dbo].[Personel]'))
ALTER TABLE [dbo].[Personel] DROP CONSTRAINT [FK_Personel_PersonelTuru]
GO
/****** Object:  View [dbo].[view_SubelerinSeviyeyeGorePersonelAdedi]    Script Date: 25.3.2016 11:09:08 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[view_SubelerinSeviyeyeGorePersonelAdedi]'))
DROP VIEW [dbo].[view_SubelerinSeviyeyeGorePersonelAdedi]
GO
/****** Object:  View [dbo].[view_SubeAdresSemtSehirUlke]    Script Date: 25.3.2016 11:09:08 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[view_SubeAdresSemtSehirUlke]'))
DROP VIEW [dbo].[view_SubeAdresSemtSehirUlke]
GO
/****** Object:  View [dbo].[view_SeviyeVeSinifaGoreEtiketAdet]    Script Date: 25.3.2016 11:09:08 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[view_SeviyeVeSinifaGoreEtiketAdet]'))
DROP VIEW [dbo].[view_SeviyeVeSinifaGoreEtiketAdet]
GO
/****** Object:  View [dbo].[view_SeviyeAdetToplamOrtalama]    Script Date: 25.3.2016 11:09:08 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[view_SeviyeAdetToplamOrtalama]'))
DROP VIEW [dbo].[view_SeviyeAdetToplamOrtalama]
GO
/****** Object:  View [dbo].[view_PersonelTuruneGoreAdet]    Script Date: 25.3.2016 11:09:08 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[view_PersonelTuruneGoreAdet]'))
DROP VIEW [dbo].[view_PersonelTuruneGoreAdet]
GO
/****** Object:  View [dbo].[view_PersonelBilgileri]    Script Date: 25.3.2016 11:09:08 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[view_PersonelBilgileri]'))
DROP VIEW [dbo].[view_PersonelBilgileri]
GO
/****** Object:  Table [dbo].[Ulke]    Script Date: 25.3.2016 11:09:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ulke]') AND type in (N'U'))
DROP TABLE [dbo].[Ulke]
GO
/****** Object:  Table [dbo].[SubeSeviye]    Script Date: 25.3.2016 11:09:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SubeSeviye]') AND type in (N'U'))
DROP TABLE [dbo].[SubeSeviye]
GO
/****** Object:  Table [dbo].[Sube]    Script Date: 25.3.2016 11:09:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sube]') AND type in (N'U'))
DROP TABLE [dbo].[Sube]
GO
/****** Object:  Table [dbo].[SinifEtiket]    Script Date: 25.3.2016 11:09:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SinifEtiket]') AND type in (N'U'))
DROP TABLE [dbo].[SinifEtiket]
GO
/****** Object:  Table [dbo].[Sinif]    Script Date: 25.3.2016 11:09:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sinif]') AND type in (N'U'))
DROP TABLE [dbo].[Sinif]
GO
/****** Object:  Table [dbo].[Seviye]    Script Date: 25.3.2016 11:09:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Seviye]') AND type in (N'U'))
DROP TABLE [dbo].[Seviye]
GO
/****** Object:  Table [dbo].[Semt]    Script Date: 25.3.2016 11:09:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Semt]') AND type in (N'U'))
DROP TABLE [dbo].[Semt]
GO
/****** Object:  Table [dbo].[Sehir]    Script Date: 25.3.2016 11:09:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sehir]') AND type in (N'U'))
DROP TABLE [dbo].[Sehir]
GO
/****** Object:  Table [dbo].[PersonelTuru]    Script Date: 25.3.2016 11:09:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PersonelTuru]') AND type in (N'U'))
DROP TABLE [dbo].[PersonelTuru]
GO
/****** Object:  Table [dbo].[PersonelSubeSeviye]    Script Date: 25.3.2016 11:09:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PersonelSubeSeviye]') AND type in (N'U'))
DROP TABLE [dbo].[PersonelSubeSeviye]
GO
/****** Object:  Table [dbo].[Personel]    Script Date: 25.3.2016 11:09:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Personel]') AND type in (N'U'))
DROP TABLE [dbo].[Personel]
GO
/****** Object:  Table [dbo].[Etiket]    Script Date: 25.3.2016 11:09:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Etiket]') AND type in (N'U'))
DROP TABLE [dbo].[Etiket]
GO
/****** Object:  StoredProcedure [dbo].[procSeviyeyeGorePersonelAdet]    Script Date: 25.3.2016 11:09:08 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[procSeviyeyeGorePersonelAdet]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[procSeviyeyeGorePersonelAdet]
GO
USE [master]
GO
/****** Object:  Database [OkulSistemiDB]    Script Date: 25.3.2016 11:09:08 ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'OkulSistemiDB')
DROP DATABASE [OkulSistemiDB]
GO
/****** Object:  Database [OkulSistemiDB]    Script Date: 25.3.2016 11:09:08 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'OkulSistemiDB')
BEGIN
	CREATE DATABASE [OkulSistemiDB]
END

GO
ALTER DATABASE [OkulSistemiDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OkulSistemiDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OkulSistemiDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OkulSistemiDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OkulSistemiDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OkulSistemiDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OkulSistemiDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [OkulSistemiDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OkulSistemiDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [OkulSistemiDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OkulSistemiDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OkulSistemiDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OkulSistemiDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OkulSistemiDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OkulSistemiDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OkulSistemiDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OkulSistemiDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OkulSistemiDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [OkulSistemiDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OkulSistemiDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OkulSistemiDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OkulSistemiDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OkulSistemiDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OkulSistemiDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OkulSistemiDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OkulSistemiDB] SET RECOVERY FULL 
GO
ALTER DATABASE [OkulSistemiDB] SET  MULTI_USER 
GO
ALTER DATABASE [OkulSistemiDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OkulSistemiDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OkulSistemiDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OkulSistemiDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'OkulSistemiDB', N'ON'
GO
USE [OkulSistemiDB]
GO
/****** Object:  StoredProcedure [dbo].[procSeviyeyeGorePersonelAdet]    Script Date: 25.3.2016 11:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[procSeviyeyeGorePersonelAdet]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[procSeviyeyeGorePersonelAdet] 
	-- Add the parameters for the stored procedure here
	@max_kontenjan int	
AS
BEGIN
	
	SELECT [SubeAdi]
      ,[SemtAdi]
      ,[SehirAdi]
      ,[Adi]
      ,[Kontenjan]
      ,[PersonelAdet]
  FROM [OkulSistemiDB].[dbo].[view_SubelerinSeviyeyeGorePersonelAdedi]
  WHERE Kontenjan >= @max_kontenjan

END
' 
END
GO
/****** Object:  Table [dbo].[Etiket]    Script Date: 25.3.2016 11:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Etiket]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Etiket](
	[ID] [int] NOT NULL,
	[EtiketAdi] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Personel]    Script Date: 25.3.2016 11:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Personel]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Personel](
	[ID] [int] NOT NULL,
	[Adi] [nvarchar](15) NOT NULL,
	[Soyadi] [nvarchar](15) NOT NULL,
	[Cinsiyet] [char](1) NOT NULL,
	[TcNo] [varchar](11) NOT NULL,
	[Telefon] [varchar](10) NOT NULL,
	[Eposta] [nvarchar](60) NULL,
	[PersonelTurID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PersonelSubeSeviye]    Script Date: 25.3.2016 11:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PersonelSubeSeviye]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PersonelSubeSeviye](
	[ID] [int] NOT NULL,
	[PersonelID] [int] NOT NULL,
	[SubeSeviyeID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PersonelTuru]    Script Date: 25.3.2016 11:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PersonelTuru]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PersonelTuru](
	[ID] [int] NOT NULL,
	[Adi] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Sehir]    Script Date: 25.3.2016 11:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sehir]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sehir](
	[ID] [int] NOT NULL,
	[SehirAdi] [nvarchar](25) NOT NULL,
	[PlakaNo] [int] NOT NULL,
	[SehirUlkeID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Semt]    Script Date: 25.3.2016 11:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Semt]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Semt](
	[ID] [int] NOT NULL,
	[SemtAdi] [nvarchar](25) NOT NULL,
	[SemtSehirID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Seviye]    Script Date: 25.3.2016 11:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Seviye]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Seviye](
	[ID] [int] NOT NULL,
	[Adi] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Sinif]    Script Date: 25.3.2016 11:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sinif]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sinif](
	[ID] [int] NOT NULL,
	[Kodu] [char](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SinifEtiket]    Script Date: 25.3.2016 11:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SinifEtiket]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SinifEtiket](
	[ID] [int] NOT NULL,
	[SinifID] [int] NOT NULL,
	[EtiketID] [int] NOT NULL,
	[SubeSeviyeID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Sube]    Script Date: 25.3.2016 11:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sube]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sube](
	[ID] [int] NOT NULL,
	[SubeAdi] [nvarchar](50) NOT NULL,
	[Adres] [nvarchar](50) NOT NULL,
	[SubeSemtID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SubeSeviye]    Script Date: 25.3.2016 11:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SubeSeviye]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SubeSeviye](
	[ID] [int] NOT NULL,
	[SubeID] [int] NOT NULL,
	[SeviyeID] [int] NOT NULL,
	[Adet] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Ulke]    Script Date: 25.3.2016 11:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ulke]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Ulke](
	[ID] [int] NOT NULL,
	[UlkeAdi] [nvarchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  View [dbo].[view_PersonelBilgileri]    Script Date: 25.3.2016 11:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[view_PersonelBilgileri]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[view_PersonelBilgileri]
AS
SELECT
	P.Adi,
	P.Soyadi,
	CASE P.Cinsiyet
		WHEN ''K'' THEN ''KADIN''
		WHEN ''E'' THEN ''ERKEK''
		ELSE ''''
	END AS Cinsiye,
	ISNULL(P.Eposta,''---'') AS Eposta,
	P.TcNo,
	P.Telefon,
	PT.Adi AS PTurAdi
FROM Personel AS P
	INNER JOIN PersonelTuru AS PT ON PT.ID = P.PersonelTurID' 
GO
/****** Object:  View [dbo].[view_PersonelTuruneGoreAdet]    Script Date: 25.3.2016 11:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[view_PersonelTuruneGoreAdet]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[view_PersonelTuruneGoreAdet]
AS
SELECT        dbo.PersonelTuru.Adi AS PersonelTurAdi, COUNT(*) AS Expr1
FROM            dbo.Personel INNER JOIN
                         dbo.PersonelTuru ON dbo.Personel.PersonelTurID = dbo.PersonelTuru.ID
GROUP BY dbo.PersonelTuru.Adi
' 
GO
/****** Object:  View [dbo].[view_SeviyeAdetToplamOrtalama]    Script Date: 25.3.2016 11:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[view_SeviyeAdetToplamOrtalama]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[view_SeviyeAdetToplamOrtalama]
AS
SELECT        COUNT(*) AS Adet, SUM(dbo.SubeSeviye.Adet) AS AdetSum, AVG(dbo.SubeSeviye.Adet) AS AdetAvg, dbo.Seviye.Adi AS SeviyeAdi
FROM            dbo.SubeSeviye INNER JOIN
                         dbo.Seviye ON dbo.SubeSeviye.SeviyeID = dbo.Seviye.ID
GROUP BY dbo.Seviye.Adi
' 
GO
/****** Object:  View [dbo].[view_SeviyeVeSinifaGoreEtiketAdet]    Script Date: 25.3.2016 11:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[view_SeviyeVeSinifaGoreEtiketAdet]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[view_SeviyeVeSinifaGoreEtiketAdet]
AS
SELECT        TOP (100) PERCENT dbo.Seviye.Adi, dbo.Sinif.Kodu, COUNT(dbo.Etiket.EtiketAdi) AS Adet
FROM            dbo.SubeSeviye INNER JOIN
                         dbo.Seviye ON dbo.SubeSeviye.SeviyeID = dbo.Seviye.ID INNER JOIN
                         dbo.SinifEtiket ON dbo.SubeSeviye.ID = dbo.SinifEtiket.SubeSeviyeID INNER JOIN
                         dbo.Sinif ON dbo.SinifEtiket.SinifID = dbo.Sinif.ID INNER JOIN
                         dbo.Etiket ON dbo.SinifEtiket.EtiketID = dbo.Etiket.ID
GROUP BY dbo.Seviye.Adi, dbo.Sinif.Kodu
' 
GO
/****** Object:  View [dbo].[view_SubeAdresSemtSehirUlke]    Script Date: 25.3.2016 11:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[view_SubeAdresSemtSehirUlke]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[view_SubeAdresSemtSehirUlke]
AS
	SELECT
		S.SubeAdi,
		S.Adres,
		SE.SemtAdi,
		SH.SehirAdi,
		SH.PlakaNo,
		U.UlkeAdi
	FROM Sube AS S
		INNER JOIN Semt AS SE ON SE.ID = S.SubeSemtID
		INNER JOIN Sehir AS SH ON SH.ID = SE.SemtSehirID
		INNER JOIN Ulke AS U ON U.ID = SH.SehirUlkeID' 
GO
/****** Object:  View [dbo].[view_SubelerinSeviyeyeGorePersonelAdedi]    Script Date: 25.3.2016 11:09:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[view_SubelerinSeviyeyeGorePersonelAdedi]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[view_SubelerinSeviyeyeGorePersonelAdedi]
AS
SELECT
	S.SubeAdi,
	SE.SemtAdi,
	SH.SehirAdi,
	SEV.Adi,
	SS.Adet AS Kontenjan,
	COUNT(PSS.PersonelID) AS PersonelAdet
FROM Sube AS S
	INNER JOIN Semt AS SE ON SE.ID = S.SubeSemtID
	INNER JOIN Sehir AS SH ON SH.ID = SE.SemtSehirID
	INNER JOIN SubeSeviye AS SS ON SS.SubeID = S.ID
	INNER JOIN Seviye AS SEV ON SEV.ID = SS.SeviyeID
	LEFT JOIN PersonelSubeSeviye AS PSS ON PSS.SubeSeviyeID = SS.ID
GROUP BY S.SubeAdi, SE.SemtAdi, SH.SehirAdi, SEV.Adi, SS.Adet' 
GO
INSERT [dbo].[Etiket] ([ID], [EtiketAdi]) VALUES (1, N'A')
GO
INSERT [dbo].[Etiket] ([ID], [EtiketAdi]) VALUES (2, N'B')
GO
INSERT [dbo].[Etiket] ([ID], [EtiketAdi]) VALUES (3, N'C')
GO
INSERT [dbo].[Etiket] ([ID], [EtiketAdi]) VALUES (4, N'D')
GO
INSERT [dbo].[Etiket] ([ID], [EtiketAdi]) VALUES (5, N'E')
GO
INSERT [dbo].[Etiket] ([ID], [EtiketAdi]) VALUES (6, N'F')
GO
INSERT [dbo].[Etiket] ([ID], [EtiketAdi]) VALUES (7, N'Z')
GO
INSERT [dbo].[Etiket] ([ID], [EtiketAdi]) VALUES (8, N'1')
GO
INSERT [dbo].[Etiket] ([ID], [EtiketAdi]) VALUES (9, N'2')
GO
INSERT [dbo].[Personel] ([ID], [Adi], [Soyadi], [Cinsiyet], [TcNo], [Telefon], [Eposta], [PersonelTurID]) VALUES (1, N'Kübra', N'Pektaş', N'K', N'123456', N'055555', N'kübra@pektaş.com', 1)
GO
INSERT [dbo].[Personel] ([ID], [Adi], [Soyadi], [Cinsiyet], [TcNo], [Telefon], [Eposta], [PersonelTurID]) VALUES (2, N'Büşra', N'Pektaş', N'K', N'564789', N'022222', N'büşra@pektaş.com', 2)
GO
INSERT [dbo].[Personel] ([ID], [Adi], [Soyadi], [Cinsiyet], [TcNo], [Telefon], [Eposta], [PersonelTurID]) VALUES (3, N'Ayşe', N'Pektaş', N'K', N'456321', N'066666', N'ayşe@pektaş.com', 3)
GO
INSERT [dbo].[Personel] ([ID], [Adi], [Soyadi], [Cinsiyet], [TcNo], [Telefon], [Eposta], [PersonelTurID]) VALUES (4, N'Oğulcan', N'Kaya', N'E', N'74125', N'033333', N'oğulcan@kaya.com', 4)
GO
INSERT [dbo].[Personel] ([ID], [Adi], [Soyadi], [Cinsiyet], [TcNo], [Telefon], [Eposta], [PersonelTurID]) VALUES (5, N'Birsen', N'Yılmaz', N'K', N'85236', N'088888', N'birsen@yılmaz.com', 5)
GO
INSERT [dbo].[Personel] ([ID], [Adi], [Soyadi], [Cinsiyet], [TcNo], [Telefon], [Eposta], [PersonelTurID]) VALUES (6, N'Hüseyin', N'Pektaş', N'E', N'95123', N'044444', N'hüseyin@pektaş.com', 6)
GO
INSERT [dbo].[Personel] ([ID], [Adi], [Soyadi], [Cinsiyet], [TcNo], [Telefon], [Eposta], [PersonelTurID]) VALUES (7, N'Ferhat', N'Şaşmaz', N'E', N'357471', N'077777', N'ferhat@şaşmaz.com', 5)
GO
INSERT [dbo].[Personel] ([ID], [Adi], [Soyadi], [Cinsiyet], [TcNo], [Telefon], [Eposta], [PersonelTurID]) VALUES (8, N'aaaa', N'bbbb', N'K', N'523146', N'011111', NULL, 4)
GO
INSERT [dbo].[Personel] ([ID], [Adi], [Soyadi], [Cinsiyet], [TcNo], [Telefon], [Eposta], [PersonelTurID]) VALUES (9, N'cccc', N'dddd', N'E', N'753214', N'0753214', NULL, 3)
GO
INSERT [dbo].[Personel] ([ID], [Adi], [Soyadi], [Cinsiyet], [TcNo], [Telefon], [Eposta], [PersonelTurID]) VALUES (10, N'eeee', N'fff', N'K', N'951478', N'032145', NULL, 2)
GO
INSERT [dbo].[PersonelSubeSeviye] ([ID], [PersonelID], [SubeSeviyeID]) VALUES (1, 1, 1)
GO
INSERT [dbo].[PersonelSubeSeviye] ([ID], [PersonelID], [SubeSeviyeID]) VALUES (2, 2, 1)
GO
INSERT [dbo].[PersonelSubeSeviye] ([ID], [PersonelID], [SubeSeviyeID]) VALUES (3, 2, 2)
GO
INSERT [dbo].[PersonelSubeSeviye] ([ID], [PersonelID], [SubeSeviyeID]) VALUES (4, 3, 4)
GO
INSERT [dbo].[PersonelSubeSeviye] ([ID], [PersonelID], [SubeSeviyeID]) VALUES (5, 3, 5)
GO
INSERT [dbo].[PersonelSubeSeviye] ([ID], [PersonelID], [SubeSeviyeID]) VALUES (6, 4, 10)
GO
INSERT [dbo].[PersonelTuru] ([ID], [Adi]) VALUES (1, N'Öğretmen')
GO
INSERT [dbo].[PersonelTuru] ([ID], [Adi]) VALUES (2, N'Hizmetli')
GO
INSERT [dbo].[PersonelTuru] ([ID], [Adi]) VALUES (3, N'Genel Müdür')
GO
INSERT [dbo].[PersonelTuru] ([ID], [Adi]) VALUES (4, N'Müdür Yardımcısı')
GO
INSERT [dbo].[PersonelTuru] ([ID], [Adi]) VALUES (5, N'Bölüm Başkanı')
GO
INSERT [dbo].[PersonelTuru] ([ID], [Adi]) VALUES (6, N'IT')
GO
INSERT [dbo].[Sehir] ([ID], [SehirAdi], [PlakaNo], [SehirUlkeID]) VALUES (1, N'İstanbul', 34, 1)
GO
INSERT [dbo].[Sehir] ([ID], [SehirAdi], [PlakaNo], [SehirUlkeID]) VALUES (2, N'Ankara', 6, 1)
GO
INSERT [dbo].[Sehir] ([ID], [SehirAdi], [PlakaNo], [SehirUlkeID]) VALUES (3, N'Berlin', 102, 2)
GO
INSERT [dbo].[Sehir] ([ID], [SehirAdi], [PlakaNo], [SehirUlkeID]) VALUES (4, N'Münih', 103, 2)
GO
INSERT [dbo].[Semt] ([ID], [SemtAdi], [SemtSehirID]) VALUES (1, N'Maltepe', 1)
GO
INSERT [dbo].[Semt] ([ID], [SemtAdi], [SemtSehirID]) VALUES (2, N'Kadıköy', 1)
GO
INSERT [dbo].[Semt] ([ID], [SemtAdi], [SemtSehirID]) VALUES (3, N'Beşiktaş', 1)
GO
INSERT [dbo].[Semt] ([ID], [SemtAdi], [SemtSehirID]) VALUES (4, N'Etiler', 1)
GO
INSERT [dbo].[Semt] ([ID], [SemtAdi], [SemtSehirID]) VALUES (5, N'Kurtköy', 1)
GO
INSERT [dbo].[Semt] ([ID], [SemtAdi], [SemtSehirID]) VALUES (6, N'Kreuzberg', 3)
GO
INSERT [dbo].[Semt] ([ID], [SemtAdi], [SemtSehirID]) VALUES (7, N'Keçiören', 2)
GO
INSERT [dbo].[Semt] ([ID], [SemtAdi], [SemtSehirID]) VALUES (8, N'Çankaya', 2)
GO
INSERT [dbo].[Seviye] ([ID], [Adi]) VALUES (1, N'Anaokul')
GO
INSERT [dbo].[Seviye] ([ID], [Adi]) VALUES (2, N'İlkokul')
GO
INSERT [dbo].[Seviye] ([ID], [Adi]) VALUES (3, N'Ortaokul')
GO
INSERT [dbo].[Seviye] ([ID], [Adi]) VALUES (4, N'Lise')
GO
INSERT [dbo].[Sinif] ([ID], [Kodu]) VALUES (1, N'ANA')
GO
INSERT [dbo].[Sinif] ([ID], [Kodu]) VALUES (2, N'1  ')
GO
INSERT [dbo].[Sinif] ([ID], [Kodu]) VALUES (3, N'2  ')
GO
INSERT [dbo].[Sinif] ([ID], [Kodu]) VALUES (4, N'3  ')
GO
INSERT [dbo].[Sinif] ([ID], [Kodu]) VALUES (5, N'4  ')
GO
INSERT [dbo].[Sinif] ([ID], [Kodu]) VALUES (6, N'5  ')
GO
INSERT [dbo].[Sinif] ([ID], [Kodu]) VALUES (7, N'6  ')
GO
INSERT [dbo].[Sinif] ([ID], [Kodu]) VALUES (8, N'7  ')
GO
INSERT [dbo].[Sinif] ([ID], [Kodu]) VALUES (9, N'8  ')
GO
INSERT [dbo].[Sinif] ([ID], [Kodu]) VALUES (10, N'9  ')
GO
INSERT [dbo].[Sinif] ([ID], [Kodu]) VALUES (11, N'10 ')
GO
INSERT [dbo].[Sinif] ([ID], [Kodu]) VALUES (12, N'11 ')
GO
INSERT [dbo].[Sinif] ([ID], [Kodu]) VALUES (13, N'12 ')
GO
INSERT [dbo].[SinifEtiket] ([ID], [SinifID], [EtiketID], [SubeSeviyeID]) VALUES (1, 1, 8, 1)
GO
INSERT [dbo].[SinifEtiket] ([ID], [SinifID], [EtiketID], [SubeSeviyeID]) VALUES (2, 1, 9, 5)
GO
INSERT [dbo].[SinifEtiket] ([ID], [SinifID], [EtiketID], [SubeSeviyeID]) VALUES (3, 2, 1, 2)
GO
INSERT [dbo].[SinifEtiket] ([ID], [SinifID], [EtiketID], [SubeSeviyeID]) VALUES (4, 2, 2, 6)
GO
INSERT [dbo].[SinifEtiket] ([ID], [SinifID], [EtiketID], [SubeSeviyeID]) VALUES (5, 2, 3, 9)
GO
INSERT [dbo].[SinifEtiket] ([ID], [SinifID], [EtiketID], [SubeSeviyeID]) VALUES (6, 3, 4, 2)
GO
INSERT [dbo].[SinifEtiket] ([ID], [SinifID], [EtiketID], [SubeSeviyeID]) VALUES (7, 4, 5, 6)
GO
INSERT [dbo].[SinifEtiket] ([ID], [SinifID], [EtiketID], [SubeSeviyeID]) VALUES (8, 4, 6, 9)
GO
INSERT [dbo].[SinifEtiket] ([ID], [SinifID], [EtiketID], [SubeSeviyeID]) VALUES (9, 4, 7, 2)
GO
INSERT [dbo].[SinifEtiket] ([ID], [SinifID], [EtiketID], [SubeSeviyeID]) VALUES (10, 5, 1, 6)
GO
INSERT [dbo].[SinifEtiket] ([ID], [SinifID], [EtiketID], [SubeSeviyeID]) VALUES (11, 5, 2, 9)
GO
INSERT [dbo].[SinifEtiket] ([ID], [SinifID], [EtiketID], [SubeSeviyeID]) VALUES (12, 5, 3, 2)
GO
INSERT [dbo].[SinifEtiket] ([ID], [SinifID], [EtiketID], [SubeSeviyeID]) VALUES (13, 7, 4, 10)
GO
INSERT [dbo].[SinifEtiket] ([ID], [SinifID], [EtiketID], [SubeSeviyeID]) VALUES (14, 8, 5, 7)
GO
INSERT [dbo].[SinifEtiket] ([ID], [SinifID], [EtiketID], [SubeSeviyeID]) VALUES (15, 9, 6, 3)
GO
INSERT [dbo].[SinifEtiket] ([ID], [SinifID], [EtiketID], [SubeSeviyeID]) VALUES (16, 11, 7, 4)
GO
INSERT [dbo].[Sube] ([ID], [SubeAdi], [Adres], [SubeSemtID]) VALUES (1, N'Bahçeşehir Maltepe', N'Adres1', 1)
GO
INSERT [dbo].[Sube] ([ID], [SubeAdi], [Adres], [SubeSemtID]) VALUES (2, N'Bahçeşehir Kadıköy', N'Adres2', 2)
GO
INSERT [dbo].[Sube] ([ID], [SubeAdi], [Adres], [SubeSemtID]) VALUES (3, N'Bahçeşehir Beşiktaş', N'Adres3', 3)
GO
INSERT [dbo].[Sube] ([ID], [SubeAdi], [Adres], [SubeSemtID]) VALUES (4, N'Bahçeşehir Etiler', N'Adres4', 4)
GO
INSERT [dbo].[Sube] ([ID], [SubeAdi], [Adres], [SubeSemtID]) VALUES (5, N'Bahçeşehir Kurtköy', N'Adres5', 5)
GO
INSERT [dbo].[Sube] ([ID], [SubeAdi], [Adres], [SubeSemtID]) VALUES (6, N'Bahçeşehir Kreuzberg', N'Adres6', 6)
GO
INSERT [dbo].[Sube] ([ID], [SubeAdi], [Adres], [SubeSemtID]) VALUES (7, N'Bahçeşehir Kurtköy2', N'Adres7', 5)
GO
INSERT [dbo].[Sube] ([ID], [SubeAdi], [Adres], [SubeSemtID]) VALUES (8, N'Bahçeşehir Beşiktaş2', N'Adres8', 3)
GO
INSERT [dbo].[SubeSeviye] ([ID], [SubeID], [SeviyeID], [Adet]) VALUES (1, 1, 1, 10)
GO
INSERT [dbo].[SubeSeviye] ([ID], [SubeID], [SeviyeID], [Adet]) VALUES (2, 1, 2, 20)
GO
INSERT [dbo].[SubeSeviye] ([ID], [SubeID], [SeviyeID], [Adet]) VALUES (3, 2, 3, 20)
GO
INSERT [dbo].[SubeSeviye] ([ID], [SubeID], [SeviyeID], [Adet]) VALUES (4, 2, 4, 50)
GO
INSERT [dbo].[SubeSeviye] ([ID], [SubeID], [SeviyeID], [Adet]) VALUES (5, 3, 1, 10)
GO
INSERT [dbo].[SubeSeviye] ([ID], [SubeID], [SeviyeID], [Adet]) VALUES (6, 3, 2, 25)
GO
INSERT [dbo].[SubeSeviye] ([ID], [SubeID], [SeviyeID], [Adet]) VALUES (7, 3, 3, 30)
GO
INSERT [dbo].[SubeSeviye] ([ID], [SubeID], [SeviyeID], [Adet]) VALUES (8, 4, 1, 30)
GO
INSERT [dbo].[SubeSeviye] ([ID], [SubeID], [SeviyeID], [Adet]) VALUES (9, 4, 2, 21)
GO
INSERT [dbo].[SubeSeviye] ([ID], [SubeID], [SeviyeID], [Adet]) VALUES (10, 4, 3, 54)
GO
INSERT [dbo].[SubeSeviye] ([ID], [SubeID], [SeviyeID], [Adet]) VALUES (11, 4, 4, 32)
GO
INSERT [dbo].[SubeSeviye] ([ID], [SubeID], [SeviyeID], [Adet]) VALUES (12, 5, 2, 15)
GO
INSERT [dbo].[SubeSeviye] ([ID], [SubeID], [SeviyeID], [Adet]) VALUES (13, 5, 3, 25)
GO
INSERT [dbo].[SubeSeviye] ([ID], [SubeID], [SeviyeID], [Adet]) VALUES (14, 6, 2, 30)
GO
INSERT [dbo].[SubeSeviye] ([ID], [SubeID], [SeviyeID], [Adet]) VALUES (15, 6, 3, 20)
GO
INSERT [dbo].[SubeSeviye] ([ID], [SubeID], [SeviyeID], [Adet]) VALUES (16, 6, 4, 40)
GO
INSERT [dbo].[SubeSeviye] ([ID], [SubeID], [SeviyeID], [Adet]) VALUES (17, 7, 4, 50)
GO
INSERT [dbo].[SubeSeviye] ([ID], [SubeID], [SeviyeID], [Adet]) VALUES (18, 8, 3, 55)
GO
INSERT [dbo].[SubeSeviye] ([ID], [SubeID], [SeviyeID], [Adet]) VALUES (19, 8, 4, 25)
GO
INSERT [dbo].[Ulke] ([ID], [UlkeAdi]) VALUES (1, N'Türkiye')
GO
INSERT [dbo].[Ulke] ([ID], [UlkeAdi]) VALUES (2, N'Almanya')
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Personel_PersonelTuru]') AND parent_object_id = OBJECT_ID(N'[dbo].[Personel]'))
ALTER TABLE [dbo].[Personel]  WITH CHECK ADD  CONSTRAINT [FK_Personel_PersonelTuru] FOREIGN KEY([PersonelTurID])
REFERENCES [dbo].[PersonelTuru] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Personel_PersonelTuru]') AND parent_object_id = OBJECT_ID(N'[dbo].[Personel]'))
ALTER TABLE [dbo].[Personel] CHECK CONSTRAINT [FK_Personel_PersonelTuru]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PersonelSubeSeviye_Personel]') AND parent_object_id = OBJECT_ID(N'[dbo].[PersonelSubeSeviye]'))
ALTER TABLE [dbo].[PersonelSubeSeviye]  WITH CHECK ADD  CONSTRAINT [FK_PersonelSubeSeviye_Personel] FOREIGN KEY([PersonelID])
REFERENCES [dbo].[Personel] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PersonelSubeSeviye_Personel]') AND parent_object_id = OBJECT_ID(N'[dbo].[PersonelSubeSeviye]'))
ALTER TABLE [dbo].[PersonelSubeSeviye] CHECK CONSTRAINT [FK_PersonelSubeSeviye_Personel]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PersonelSubeSeviye_SubeSeviye]') AND parent_object_id = OBJECT_ID(N'[dbo].[PersonelSubeSeviye]'))
ALTER TABLE [dbo].[PersonelSubeSeviye]  WITH CHECK ADD  CONSTRAINT [FK_PersonelSubeSeviye_SubeSeviye] FOREIGN KEY([SubeSeviyeID])
REFERENCES [dbo].[SubeSeviye] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PersonelSubeSeviye_SubeSeviye]') AND parent_object_id = OBJECT_ID(N'[dbo].[PersonelSubeSeviye]'))
ALTER TABLE [dbo].[PersonelSubeSeviye] CHECK CONSTRAINT [FK_PersonelSubeSeviye_SubeSeviye]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Sehir_Ulke]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sehir]'))
ALTER TABLE [dbo].[Sehir]  WITH CHECK ADD  CONSTRAINT [FK_Sehir_Ulke] FOREIGN KEY([SehirUlkeID])
REFERENCES [dbo].[Ulke] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Sehir_Ulke]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sehir]'))
ALTER TABLE [dbo].[Sehir] CHECK CONSTRAINT [FK_Sehir_Ulke]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Semt_Sehir]') AND parent_object_id = OBJECT_ID(N'[dbo].[Semt]'))
ALTER TABLE [dbo].[Semt]  WITH CHECK ADD  CONSTRAINT [FK_Semt_Sehir] FOREIGN KEY([SemtSehirID])
REFERENCES [dbo].[Sehir] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Semt_Sehir]') AND parent_object_id = OBJECT_ID(N'[dbo].[Semt]'))
ALTER TABLE [dbo].[Semt] CHECK CONSTRAINT [FK_Semt_Sehir]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SinifEtiket_Etiket]') AND parent_object_id = OBJECT_ID(N'[dbo].[SinifEtiket]'))
ALTER TABLE [dbo].[SinifEtiket]  WITH CHECK ADD  CONSTRAINT [FK_SinifEtiket_Etiket] FOREIGN KEY([EtiketID])
REFERENCES [dbo].[Etiket] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SinifEtiket_Etiket]') AND parent_object_id = OBJECT_ID(N'[dbo].[SinifEtiket]'))
ALTER TABLE [dbo].[SinifEtiket] CHECK CONSTRAINT [FK_SinifEtiket_Etiket]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SinifEtiket_Sinif]') AND parent_object_id = OBJECT_ID(N'[dbo].[SinifEtiket]'))
ALTER TABLE [dbo].[SinifEtiket]  WITH CHECK ADD  CONSTRAINT [FK_SinifEtiket_Sinif] FOREIGN KEY([SinifID])
REFERENCES [dbo].[Sinif] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SinifEtiket_Sinif]') AND parent_object_id = OBJECT_ID(N'[dbo].[SinifEtiket]'))
ALTER TABLE [dbo].[SinifEtiket] CHECK CONSTRAINT [FK_SinifEtiket_Sinif]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SinifEtiket_SubeSeviye]') AND parent_object_id = OBJECT_ID(N'[dbo].[SinifEtiket]'))
ALTER TABLE [dbo].[SinifEtiket]  WITH CHECK ADD  CONSTRAINT [FK_SinifEtiket_SubeSeviye] FOREIGN KEY([SubeSeviyeID])
REFERENCES [dbo].[SubeSeviye] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SinifEtiket_SubeSeviye]') AND parent_object_id = OBJECT_ID(N'[dbo].[SinifEtiket]'))
ALTER TABLE [dbo].[SinifEtiket] CHECK CONSTRAINT [FK_SinifEtiket_SubeSeviye]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Sube_Semt]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sube]'))
ALTER TABLE [dbo].[Sube]  WITH CHECK ADD  CONSTRAINT [FK_Sube_Semt] FOREIGN KEY([SubeSemtID])
REFERENCES [dbo].[Semt] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Sube_Semt]') AND parent_object_id = OBJECT_ID(N'[dbo].[Sube]'))
ALTER TABLE [dbo].[Sube] CHECK CONSTRAINT [FK_Sube_Semt]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SubeSeviye_Seviye]') AND parent_object_id = OBJECT_ID(N'[dbo].[SubeSeviye]'))
ALTER TABLE [dbo].[SubeSeviye]  WITH CHECK ADD  CONSTRAINT [FK_SubeSeviye_Seviye] FOREIGN KEY([SeviyeID])
REFERENCES [dbo].[Seviye] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SubeSeviye_Seviye]') AND parent_object_id = OBJECT_ID(N'[dbo].[SubeSeviye]'))
ALTER TABLE [dbo].[SubeSeviye] CHECK CONSTRAINT [FK_SubeSeviye_Seviye]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SubeSeviye_Sube]') AND parent_object_id = OBJECT_ID(N'[dbo].[SubeSeviye]'))
ALTER TABLE [dbo].[SubeSeviye]  WITH CHECK ADD  CONSTRAINT [FK_SubeSeviye_Sube] FOREIGN KEY([SubeID])
REFERENCES [dbo].[Sube] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SubeSeviye_Sube]') AND parent_object_id = OBJECT_ID(N'[dbo].[SubeSeviye]'))
ALTER TABLE [dbo].[SubeSeviye] CHECK CONSTRAINT [FK_SubeSeviye_Sube]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'view_PersonelTuruneGoreAdet', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[43] 4[27] 2[12] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Personel"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 206
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PersonelTuru"
            Begin Extent = 
               Top = 29
               Left = 302
               Bottom = 146
               Right = 472
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 2715
         Alias = 795
         Table = 1305
         Output = 855
         Append = 1400
         NewValue = 1170
         SortType = 615
         SortOrder = 915
         GroupBy = 1350
         Filter = 2730
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_PersonelTuruneGoreAdet'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'view_PersonelTuruneGoreAdet', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_PersonelTuruneGoreAdet'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'view_SeviyeAdetToplamOrtalama', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[10] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "SubeSeviye"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 195
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Seviye"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 138
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 2505
         Alias = 1080
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_SeviyeAdetToplamOrtalama'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'view_SeviyeAdetToplamOrtalama', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_SeviyeAdetToplamOrtalama'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'view_SeviyeVeSinifaGoreEtiketAdet', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[52] 4[22] 2[10] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "SubeSeviye"
            Begin Extent = 
               Top = 135
               Left = 566
               Bottom = 265
               Right = 736
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Seviye"
            Begin Extent = 
               Top = 152
               Left = 37
               Bottom = 248
               Right = 207
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Sinif"
            Begin Extent = 
               Top = 15
               Left = 790
               Bottom = 111
               Right = 960
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SinifEtiket"
            Begin Extent = 
               Top = 12
               Left = 294
               Bottom = 142
               Right = 464
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Etiket"
            Begin Extent = 
               Top = 23
               Left = 11
               Bottom = 119
               Right = 181
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 2880
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 1455
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_SeviyeVeSinifaGoreEtiketAdet'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'view_SeviyeVeSinifaGoreEtiketAdet', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'      Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_SeviyeVeSinifaGoreEtiketAdet'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'view_SeviyeVeSinifaGoreEtiketAdet', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view_SeviyeVeSinifaGoreEtiketAdet'
GO
USE [master]
GO
ALTER DATABASE [OkulSistemiDB] SET  READ_WRITE 
GO
