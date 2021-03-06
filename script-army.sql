USE [master]
GO
/****** Object:  Database [getaclub]    Script Date: 27/07/2021 23:50:19 ******/
CREATE DATABASE [getaclub]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'getaclub', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\getaclub.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'getaclub_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\getaclub_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [getaclub] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [getaclub].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [getaclub] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [getaclub] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [getaclub] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [getaclub] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [getaclub] SET ARITHABORT OFF 
GO
ALTER DATABASE [getaclub] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [getaclub] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [getaclub] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [getaclub] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [getaclub] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [getaclub] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [getaclub] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [getaclub] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [getaclub] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [getaclub] SET  DISABLE_BROKER 
GO
ALTER DATABASE [getaclub] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [getaclub] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [getaclub] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [getaclub] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [getaclub] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [getaclub] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [getaclub] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [getaclub] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [getaclub] SET  MULTI_USER 
GO
ALTER DATABASE [getaclub] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [getaclub] SET DB_CHAINING OFF 
GO
ALTER DATABASE [getaclub] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [getaclub] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [getaclub] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [getaclub] SET QUERY_STORE = OFF
GO
USE [getaclub]
GO
/****** Object:  Table [dbo].[booking_categoring_details]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[booking_categoring_details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idBookingCatering] [int] NULL,
	[idProduct] [int] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_booking_categorin_details] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[booking_caterings]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[booking_caterings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idBooking] [int] NULL,
	[quantity] [int] NULL,
	[amount] [decimal](10, 2) NULL,
	[createdAt] [datetime] NULL,
	[createdBy] [int] NULL,
	[updatedAt] [datetime] NULL,
	[updatedBy] [int] NULL,
	[isActive] [tinyint] NULL,
	[idCatering] [int] NULL,
	[unitPrice] [decimal](10, 2) NULL,
 CONSTRAINT [PK_booking_caterings] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[booking_status]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[booking_status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_booking_status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bookings]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bookings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idRoom] [int] NULL,
	[idClient] [int] NULL,
	[date] [date] NULL,
	[startHour] [time](7) NULL,
	[endHour] [time](7) NULL,
	[createdAt] [datetime] NULL,
	[createdBy] [int] NULL,
	[updatedAt] [datetime] NULL,
	[updatedBy] [int] NULL,
	[isActive] [tinyint] NULL,
	[idBookingStatus] [int] NULL,
	[cancelledAt] [datetime] NULL,
 CONSTRAINT [PK_booki] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caterings]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caterings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](200) NULL,
	[price] [decimal](10, 2) NULL,
	[createdAt] [datetime] NULL,
	[createdBy] [int] NULL,
	[updatedAt] [datetime] NULL,
	[updatedBy] [int] NULL,
	[isActive] [tinyint] NULL,
 CONSTRAINT [PK_produc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clients]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clients](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](200) NULL,
	[lastName] [varchar](200) NULL,
	[surName] [varchar](200) NULL,
	[businessName] [varchar](200) NULL,
	[idDocumentType] [int] NULL,
	[document] [varchar](50) NULL,
	[email] [varchar](200) NULL,
	[phoneCode] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
	[gender] [char](1) NULL,
	[createdAt] [datetime] NULL,
	[createdBy] [int] NULL,
	[updatedAt] [datetime] NULL,
	[updatedBy] [int] NULL,
	[isActive] [tinyint] NULL,
 CONSTRAINT [PK_clients] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payment_methods]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payment_methods](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_payment_methods] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payment_status]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payment_status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_payment_statu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payments]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idBooking] [int] NULL,
	[idPaymentStatus] [int] NULL,
	[idPaymentMethod] [int] NULL,
	[tax] [decimal](10, 2) NULL,
	[discount] [decimal](10, 2) NULL,
	[amount] [decimal](10, 2) NULL,
	[totalAmount] [decimal](10, 2) NULL,
	[createdAt] [datetime] NULL,
	[createdBy] [int] NULL,
	[updatedAt] [datetime] NULL,
	[updatedBy] [int] NULL,
 CONSTRAINT [PK_payments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[room_shedules]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[room_shedules](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idRoom] [int] NULL,
	[day] [int] NULL,
	[startHour] [time](7) NULL,
	[endHour] [time](7) NULL,
	[createdAt] [datetime] NULL,
	[createdBy] [int] NULL,
	[updatedAt] [datetime] NULL,
	[updatedBy] [int] NULL,
 CONSTRAINT [PK_room_shedules] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rooms]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rooms](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](500) NULL,
	[hourPrice] [decimal](10, 2) NULL,
	[cleaningTime] [time](7) NULL,
	[createdAt] [datetime] NULL,
	[createdBy] [int] NULL,
	[updatedAt] [datetime] NULL,
	[updatedBy] [int] NULL,
	[isActive] [tinyint] NULL,
	[description] [text] NULL,
	[numberAttendees] [int] NULL,
 CONSTRAINT [PK_r] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](200) NULL,
	[lastName] [varchar](200) NULL,
	[surName] [varchar](200) NULL,
	[businessName] [varchar](200) NULL,
	[idDocumentType] [int] NULL,
	[document] [varchar](50) NULL,
	[email] [varchar](200) NULL,
	[password] [varchar](200) NULL,
	[phoneCode] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
	[gender] [char](1) NULL,
	[createdAt] [datetime] NULL,
	[createdBy] [int] NULL,
	[updatedAt] [datetime] NULL,
	[updatedBy] [int] NULL,
	[isActive] [tinyint] NULL,
	[token] [varchar](500) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[booking_caterings] ON 

INSERT [dbo].[booking_caterings] ([id], [idBooking], [quantity], [amount], [createdAt], [createdBy], [updatedAt], [updatedBy], [isActive], [idCatering], [unitPrice]) VALUES (1, 1, 13, CAST(300.30 AS Decimal(10, 2)), CAST(N'2021-03-03T11:49:29.880' AS DateTime), NULL, CAST(N'2021-03-03T12:17:38.703' AS DateTime), NULL, 0, 1, CAST(23.10 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[booking_caterings] OFF
GO
SET IDENTITY_INSERT [dbo].[booking_status] ON 

INSERT [dbo].[booking_status] ([id], [name]) VALUES (1, N'RESERVADO')
INSERT [dbo].[booking_status] ([id], [name]) VALUES (2, N'CANCELADO')
SET IDENTITY_INSERT [dbo].[booking_status] OFF
GO
SET IDENTITY_INSERT [dbo].[bookings] ON 

INSERT [dbo].[bookings] ([id], [idRoom], [idClient], [date], [startHour], [endHour], [createdAt], [createdBy], [updatedAt], [updatedBy], [isActive], [idBookingStatus], [cancelledAt]) VALUES (1, 1, 1, CAST(N'2021-03-03' AS Date), CAST(N'10:00:00' AS Time), CAST(N'11:00:00' AS Time), CAST(N'2021-03-01T00:00:00.000' AS DateTime), NULL, CAST(N'2021-03-01T00:00:00.000' AS DateTime), NULL, 1, 1, NULL)
INSERT [dbo].[bookings] ([id], [idRoom], [idClient], [date], [startHour], [endHour], [createdAt], [createdBy], [updatedAt], [updatedBy], [isActive], [idBookingStatus], [cancelledAt]) VALUES (2, 1, 1, CAST(N'2021-03-03' AS Date), CAST(N'11:31:00' AS Time), CAST(N'15:00:00' AS Time), CAST(N'2021-03-03T01:16:59.317' AS DateTime), NULL, CAST(N'2021-03-03T08:12:27.683' AS DateTime), NULL, 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[bookings] OFF
GO
SET IDENTITY_INSERT [dbo].[caterings] ON 

INSERT [dbo].[caterings] ([id], [name], [price], [createdAt], [createdBy], [updatedAt], [updatedBy], [isActive]) VALUES (1, N'Dulces y Bocaditos', CAST(23.10 AS Decimal(10, 2)), CAST(N'2021-03-01T00:00:00.000' AS DateTime), NULL, CAST(N'2021-03-03T09:09:34.817' AS DateTime), NULL, 1)
INSERT [dbo].[caterings] ([id], [name], [price], [createdAt], [createdBy], [updatedAt], [updatedBy], [isActive]) VALUES (2, N'Coffe Break', CAST(100.00 AS Decimal(10, 2)), CAST(N'2021-03-01T00:00:00.000' AS DateTime), NULL, CAST(N'2021-03-01T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[caterings] ([id], [name], [price], [createdAt], [createdBy], [updatedAt], [updatedBy], [isActive]) VALUES (3, N'Brunch', CAST(350.00 AS Decimal(10, 2)), CAST(N'2021-03-01T00:00:00.000' AS DateTime), NULL, CAST(N'2021-03-01T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[caterings] ([id], [name], [price], [createdAt], [createdBy], [updatedAt], [updatedBy], [isActive]) VALUES (4, N'Vernissage y Vino de honor', CAST(130.50 AS Decimal(10, 2)), CAST(N'2021-03-01T00:00:00.000' AS DateTime), NULL, CAST(N'2021-03-01T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[caterings] ([id], [name], [price], [createdAt], [createdBy], [updatedAt], [updatedBy], [isActive]) VALUES (5, N'Cocktail', CAST(80.00 AS Decimal(10, 2)), CAST(N'2021-03-01T00:00:00.000' AS DateTime), NULL, CAST(N'2021-03-01T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[caterings] ([id], [name], [price], [createdAt], [createdBy], [updatedAt], [updatedBy], [isActive]) VALUES (6, N'Dulces', CAST(400.10 AS Decimal(10, 2)), CAST(N'2021-03-03T09:09:18.420' AS DateTime), NULL, CAST(N'2021-03-03T09:09:51.460' AS DateTime), NULL, 0)
SET IDENTITY_INSERT [dbo].[caterings] OFF
GO
SET IDENTITY_INSERT [dbo].[clients] ON 

INSERT [dbo].[clients] ([id], [name], [lastName], [surName], [businessName], [idDocumentType], [document], [email], [phoneCode], [phone], [gender], [createdAt], [createdBy], [updatedAt], [updatedBy], [isActive]) VALUES (1, N'Pedro', N'Diaz', N'xxxxxx', N'', 1, N'12345678', N'prueba@gmail.com', N'+51', N'95862315', N'M', CAST(N'2021-03-02T14:15:52.773' AS DateTime), NULL, CAST(N'2021-07-27T23:27:28.870' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[clients] OFF
GO
SET IDENTITY_INSERT [dbo].[payment_methods] ON 

INSERT [dbo].[payment_methods] ([id], [name]) VALUES (1, N'Efectivo')
INSERT [dbo].[payment_methods] ([id], [name]) VALUES (2, N'Tarjeta Débito')
INSERT [dbo].[payment_methods] ([id], [name]) VALUES (3, N'Tarjeta Crédito')
SET IDENTITY_INSERT [dbo].[payment_methods] OFF
GO
SET IDENTITY_INSERT [dbo].[payment_status] ON 

INSERT [dbo].[payment_status] ([id], [name]) VALUES (1, N'Pendiente')
INSERT [dbo].[payment_status] ([id], [name]) VALUES (2, N'Pagado')
INSERT [dbo].[payment_status] ([id], [name]) VALUES (3, N'Desembolsado')
INSERT [dbo].[payment_status] ([id], [name]) VALUES (4, N'Anulado')
SET IDENTITY_INSERT [dbo].[payment_status] OFF
GO
SET IDENTITY_INSERT [dbo].[room_shedules] ON 

INSERT [dbo].[room_shedules] ([id], [idRoom], [day], [startHour], [endHour], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (1, 1, 0, CAST(N'08:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL, CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL)
INSERT [dbo].[room_shedules] ([id], [idRoom], [day], [startHour], [endHour], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (2, 1, 1, CAST(N'08:00:00' AS Time), CAST(N'09:00:00' AS Time), CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL, CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL)
INSERT [dbo].[room_shedules] ([id], [idRoom], [day], [startHour], [endHour], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (3, 1, 2, CAST(N'08:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL, CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL)
INSERT [dbo].[room_shedules] ([id], [idRoom], [day], [startHour], [endHour], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (4, 1, 3, CAST(N'08:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL, CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL)
INSERT [dbo].[room_shedules] ([id], [idRoom], [day], [startHour], [endHour], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (5, 1, 4, CAST(N'08:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL, CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL)
INSERT [dbo].[room_shedules] ([id], [idRoom], [day], [startHour], [endHour], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (6, 2, 0, CAST(N'08:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL, CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL)
INSERT [dbo].[room_shedules] ([id], [idRoom], [day], [startHour], [endHour], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (7, 2, 1, CAST(N'08:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL, CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL)
INSERT [dbo].[room_shedules] ([id], [idRoom], [day], [startHour], [endHour], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (8, 2, 2, CAST(N'08:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL, CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL)
INSERT [dbo].[room_shedules] ([id], [idRoom], [day], [startHour], [endHour], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (9, 2, 3, CAST(N'08:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL, CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL)
INSERT [dbo].[room_shedules] ([id], [idRoom], [day], [startHour], [endHour], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (10, 2, 4, CAST(N'08:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL, CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL)
INSERT [dbo].[room_shedules] ([id], [idRoom], [day], [startHour], [endHour], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (11, 3, 0, CAST(N'08:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL, CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL)
INSERT [dbo].[room_shedules] ([id], [idRoom], [day], [startHour], [endHour], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (12, 3, 1, CAST(N'08:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL, CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL)
INSERT [dbo].[room_shedules] ([id], [idRoom], [day], [startHour], [endHour], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (13, 3, 2, CAST(N'08:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL, CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL)
INSERT [dbo].[room_shedules] ([id], [idRoom], [day], [startHour], [endHour], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (14, 3, 3, CAST(N'08:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL, CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL)
INSERT [dbo].[room_shedules] ([id], [idRoom], [day], [startHour], [endHour], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (15, 3, 4, CAST(N'08:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL, CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL)
INSERT [dbo].[room_shedules] ([id], [idRoom], [day], [startHour], [endHour], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (16, 4, 0, CAST(N'08:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL, CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL)
INSERT [dbo].[room_shedules] ([id], [idRoom], [day], [startHour], [endHour], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (17, 4, 1, CAST(N'08:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL, CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL)
INSERT [dbo].[room_shedules] ([id], [idRoom], [day], [startHour], [endHour], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (18, 4, 2, CAST(N'08:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL, CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL)
INSERT [dbo].[room_shedules] ([id], [idRoom], [day], [startHour], [endHour], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (19, 4, 3, CAST(N'08:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL, CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL)
INSERT [dbo].[room_shedules] ([id], [idRoom], [day], [startHour], [endHour], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (20, 4, 4, CAST(N'08:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL, CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL)
INSERT [dbo].[room_shedules] ([id], [idRoom], [day], [startHour], [endHour], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (21, 6, 1, CAST(N'10:00:00' AS Time), CAST(N'18:00:00' AS Time), CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL, CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL)
INSERT [dbo].[room_shedules] ([id], [idRoom], [day], [startHour], [endHour], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (23, 6, 2, CAST(N'10:00:00' AS Time), CAST(N'15:00:00' AS Time), CAST(N'2021-03-02T12:20:49.983' AS DateTime), NULL, CAST(N'2021-03-02T12:20:49.983' AS DateTime), NULL)
INSERT [dbo].[room_shedules] ([id], [idRoom], [day], [startHour], [endHour], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (24, 6, 2, CAST(N'15:30:00' AS Time), CAST(N'16:00:00' AS Time), CAST(N'2021-03-02T12:21:16.090' AS DateTime), NULL, CAST(N'2021-03-02T12:21:16.090' AS DateTime), NULL)
INSERT [dbo].[room_shedules] ([id], [idRoom], [day], [startHour], [endHour], [createdAt], [createdBy], [updatedAt], [updatedBy]) VALUES (25, 6, 3, CAST(N'15:30:00' AS Time), CAST(N'16:00:00' AS Time), CAST(N'2021-07-27T22:12:58.990' AS DateTime), NULL, CAST(N'2021-07-27T22:12:58.990' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[room_shedules] OFF
GO
SET IDENTITY_INSERT [dbo].[rooms] ON 

INSERT [dbo].[rooms] ([id], [name], [hourPrice], [cleaningTime], [createdAt], [createdBy], [updatedAt], [updatedBy], [isActive], [description], [numberAttendees]) VALUES (1, N'Kotosh', CAST(30.00 AS Decimal(10, 2)), CAST(N'00:30:00' AS Time), CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL, CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL, 1, N'Mesa de Directorio.', 9)
INSERT [dbo].[rooms] ([id], [name], [hourPrice], [cleaningTime], [createdAt], [createdBy], [updatedAt], [updatedBy], [isActive], [description], [numberAttendees]) VALUES (2, N'Kuelap', CAST(100.00 AS Decimal(10, 2)), CAST(N'00:30:00' AS Time), CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL, CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL, 1, N'Sillas unipersonales.', 100)
INSERT [dbo].[rooms] ([id], [name], [hourPrice], [cleaningTime], [createdAt], [createdBy], [updatedAt], [updatedBy], [isActive], [description], [numberAttendees]) VALUES (3, N'Chankillo', CAST(250.60 AS Decimal(10, 2)), CAST(N'00:30:00' AS Time), CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL, CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL, 1, N'Sillas unipersonales y mesas., Dos baños totalmente equipados.', 150)
INSERT [dbo].[rooms] ([id], [name], [hourPrice], [cleaningTime], [createdAt], [createdBy], [updatedAt], [updatedBy], [isActive], [description], [numberAttendees]) VALUES (4, N'Sechín', CAST(300.00 AS Decimal(10, 2)), CAST(N'00:30:00' AS Time), CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL, CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL, 1, N'Sillas unipersonales y mesas.', 120)
INSERT [dbo].[rooms] ([id], [name], [hourPrice], [cleaningTime], [createdAt], [createdBy], [updatedAt], [updatedBy], [isActive], [description], [numberAttendees]) VALUES (5, N'Sala TOTEM', CAST(250.00 AS Decimal(10, 2)), CAST(N'00:50:00' AS Time), CAST(N'2021-03-02T10:15:11.657' AS DateTime), NULL, CAST(N'2021-03-02T10:43:56.073' AS DateTime), NULL, 0, N'Lorem2....', 150)
INSERT [dbo].[rooms] ([id], [name], [hourPrice], [cleaningTime], [createdAt], [createdBy], [updatedAt], [updatedBy], [isActive], [description], [numberAttendees]) VALUES (6, N'Prueba Sala', CAST(400.10 AS Decimal(10, 2)), CAST(N'00:30:00' AS Time), CAST(N'2021-03-02T10:26:03.077' AS DateTime), NULL, CAST(N'2021-03-02T10:26:03.077' AS DateTime), NULL, 1, N'Lorem....', 100)
INSERT [dbo].[rooms] ([id], [name], [hourPrice], [cleaningTime], [createdAt], [createdBy], [updatedAt], [updatedBy], [isActive], [description], [numberAttendees]) VALUES (7, N'Prueba Sala 2', CAST(400.10 AS Decimal(10, 2)), CAST(N'00:30:00' AS Time), CAST(N'2021-03-02T12:16:30.033' AS DateTime), NULL, CAST(N'2021-03-02T12:16:30.033' AS DateTime), NULL, 1, N'Lorem....', 100)
SET IDENTITY_INSERT [dbo].[rooms] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [name], [lastName], [surName], [businessName], [idDocumentType], [document], [email], [password], [phoneCode], [phone], [gender], [createdAt], [createdBy], [updatedAt], [updatedBy], [isActive], [token]) VALUES (1, N'gustavo', N'rivero', N'garcia', N'prueba', 1, N'12345678', N'jgriverogarcia@gmail.com', N'123', N'+51', N'9999999', N'M', CAST(N'2021-01-01T00:00:00.000' AS DateTime), NULL, CAST(N'2021-01-01T00:00:00.000' AS DateTime), NULL, 1, NULL)
INSERT [dbo].[users] ([id], [name], [lastName], [surName], [businessName], [idDocumentType], [document], [email], [password], [phoneCode], [phone], [gender], [createdAt], [createdBy], [updatedAt], [updatedBy], [isActive], [token]) VALUES (2, N'Pedro', N'Diaz', N'Perez', N'xxx', 1, N'543654654', N'pruebttta@gmail.com', N'123', N'+51', N'95862315', N'M', CAST(N'2021-07-27T23:33:57.990' AS DateTime), NULL, CAST(N'2021-07-27T23:33:57.990' AS DateTime), NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[users] OFF
GO
/****** Object:  StoredProcedure [dbo].[usp_alert_s_bookings]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_alert_s_bookings]
AS
BEGIN

    SELECT 
		bookings.id,
		bookings.idRoom,
		bookings.idClient,
		bookings.date,
		bookings.startHour,
		bookings.endHour,
		bookings.createdAt,
		bookings.updatedAt,
		clients.name,
		clients.lastName,
		clients.surName,
		clients.businessName,
		clients.idDocumentType,
		clients.document,
		clients.email,
		clients.phoneCode,
		clients.phone,
		clients.gender
    FROM 
        bookings
	INNER JOIN clients ON clients.id = bookings.idClient
	WHERE 
		bookings.idBookingStatus = 1 AND
		bookings.isActive = 1 AND
		bookings.date = FORMAT(GETDATE(),'yyyy-MM-dd') AND
		(
			FORMAT(GETDATE(),'HH:mm') BETWEEN bookings.startHour AND bookings.endHour
		)

END
GO
/****** Object:  StoredProcedure [dbo].[usp_booking_d_booking]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_booking_d_booking]
@id INT,
@result INT OUTPUT
AS
BEGIN


		UPDATE [dbo].[bookings]
		   SET 
				[isActive] = 0,
				[idBookingStatus] = 2,
				[cancelledAt] = GETDATE()
		 WHERE id = @id

		 SET @result = 1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_booking_d_catering]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_booking_d_catering]
@id INT,
@result INT OUTPUT
AS
BEGIN


		UPDATE [dbo].[booking_caterings]
		   SET 
				[isActive] = 0,
				[updatedAt] = GETDATE()
		 WHERE id = @id

		 SET @result = 1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_booking_i_booking]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_booking_i_booking]
@idRoom INT,
@idClient INT,
@date VARCHAR(50),
@startHour VARCHAR(50),
@endHour VARCHAR(50),
@result INT OUTPUT
AS

BEGIN


	/*  availability rooms */
		DECLARE @availability INT;
		SET @availability = 0;
		IF (
			SELECT 
				COUNT(*)
			FROM room_shedules
			INNER JOIN rooms ON rooms.id = room_shedules.idRoom
			WHERE room_shedules.idRoom = @idRoom AND
			room_shedules.day = (DATEPART(dw,@date) -1) AND
			(
				(@startHour BETWEEN startHour AND endHour)
				OR
				(@endHour BETWEEN startHour AND endHour)
			)
		) > 0 
			BEGIN
				SET @availability = 1;
			END
	
	
	/*  availability bookings */
		DECLARE @validate INT;
		SET @validate = 1;

		IF (
			SELECT 
				COUNT(*)	
			FROM bookings
			INNER JOIN rooms ON rooms.id = bookings.idRoom
			WHERE bookings.idRoom = @idRoom AND
			date = @date AND
			(
				(@startHour BETWEEN bookings.startHour AND DATEADD(MINUTE,DATEPART(MINUTE, rooms.cleaningTime),bookings.endHour))
				OR
				(@endHour BETWEEN bookings.startHour AND DATEADD(MINUTE,DATEPART(MINUTE, rooms.cleaningTime),bookings.endHour))
			)
			AND bookings.isActive = 1
		) > 0 
			BEGIN
				SET @validate = 0;
			END

	/* validate */

		IF @validate = 1 AND @availability = 1 
			BEGIN

				INSERT INTO [dbo].[bookings]
						   (
						   [idRoom]
						   ,[idClient]
						   ,[date]
						   ,[startHour]
						   ,[endHour]
						   ,[idBookingStatus]
						   ,[createdAt]
						   ,[updatedAt]
						   ,[isActive])
					 VALUES
						   (
						   @idRoom,
						   @idClient,
						   @date,
						   @startHour,
						   @endHour,
						   1,
						   GETDATE(),
						   GETDATE(),
						   1
						   )


				SET @result = 1;
			END
		ELSE
			BEGIN
				SET @result = 0;
			END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_booking_i_catering]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_booking_i_catering]
@idBooking INT,
@idCatering INT,
@quantity INT,
@result INT OUTPUT
AS

BEGIN
	 /* Exist Catering */
		DECLARE @existCatering INT
		SELECT @existCatering = id FROM  caterings WHERE id = @idCatering AND isActive = 1


		IF (SELECT count(*) FROM booking_caterings WHERE idBooking = @idBooking AND idCatering = 1) > 0 OR
		    @existCatering = 0
			BEGIN
				SET @result = 0;
			END
		ELSE
			BEGIN
					DECLARE @price DECIMAL(10,2);
					SELECT @price = price FROM caterings WHERE id = @idCatering;

					INSERT INTO [dbo].[booking_caterings]
							   ([idBooking]
							   ,[idCatering]
							   ,[quantity]
							   ,[unitPrice]
							   ,[amount]
							   ,[createdAt]
							   ,[updatedAt]
							   ,[isActive]
							   )
						 VALUES
							   (
								@idBooking,
								@idCatering,
								@quantity,
								@price,
								(@quantity*@price),
								GETDATE(),
								GETDATE(),
								1
							   )


					SET @result = 1;
			END
END

GO
/****** Object:  StoredProcedure [dbo].[usp_booking_s_booking]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_booking_s_booking]
@id INT
AS
BEGIN
    SELECT 
		bookings.id,
		bookings.idRoom,
		bookings.idClient,
		bookings.date,
		bookings.startHour,
		bookings.endHour,
		bookings.createdAt,
		bookings.updatedAt,
		clients.name,
		clients.lastName,
		clients.surName,
		clients.businessName,
		clients.idDocumentType,
		clients.document,
		clients.email,
		clients.phoneCode,
		clients.phone,
		clients.gender
    FROM 
        bookings
	INNER JOIN clients ON clients.id = bookings.idClient
	WHERE 
		bookings.id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[usp_booking_s_catering]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_booking_s_catering]
@id INT
AS
BEGIN
    SELECT 
		id,
		idBooking,
		idCatering,
		quantity,
		unitPrice,
		amount,
		createdAt,
		updatedAt
    FROM 
        booking_caterings
	WHERE
	    id = @id;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_booking_s_caterings]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_booking_s_caterings]
@idBooking INT
AS
BEGIN
    SELECT 
		id,
		idBooking,
		idCatering,
		quantity,
		unitPrice,
		amount,
		createdAt,
		updatedAt
    FROM 
        booking_caterings
	WHERE
	    idBooking = @idBooking AND
		isActive = 1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_booking_u_booking]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_booking_u_booking]
@id INT,
@idRoom INT,
@idClient INT,
@date VARCHAR(50),
@startHour VARCHAR(50),
@endHour VARCHAR(50),
@result INT OUTPUT
AS

BEGIN


	/*  availability rooms */
		DECLARE @availability INT;
		SET @availability = 0;
		IF (
			SELECT 
				COUNT(*)
			FROM room_shedules
			INNER JOIN rooms ON rooms.id = room_shedules.idRoom
			WHERE room_shedules.idRoom = @idRoom AND
			room_shedules.day = (DATEPART(dw,@date) -1) AND
			(
				(@startHour BETWEEN startHour AND endHour)
				OR
				(@endHour BETWEEN startHour AND endHour)
			)
		) > 0 
			BEGIN
				SET @availability = 1;
			END
	
	
	/*  availability bookings */
		DECLARE @validate INT;
		SET @validate = 1;

		IF (
			SELECT 
				COUNT(*)	
			FROM bookings
			INNER JOIN rooms ON rooms.id = bookings.idRoom
			WHERE bookings.idRoom = @idRoom AND
			date = @date AND
			(
				(@startHour BETWEEN bookings.startHour AND DATEADD(MINUTE,DATEPART(MINUTE, rooms.cleaningTime),bookings.endHour))
				OR
				(@endHour BETWEEN bookings.startHour AND DATEADD(MINUTE,DATEPART(MINUTE, rooms.cleaningTime),bookings.endHour))
			)
			AND bookings.id != @id
			AND bookings.isActive = 1
		) > 0 
			BEGIN
				SET @validate = 0;
			END

	/* validate */

		IF @validate = 1 AND @availability = 1 
			BEGIN

				UPDATE [dbo].[bookings]
				   SET [idRoom] = @idRoom
					  ,[idClient] = @idClient
					  ,[date] = @date
					  ,[startHour] = @startHour
					  ,[endHour] = @endHour
					  ,[updatedAt] = GETDATE()
				 WHERE 
					id = @id

				SET @result = 1;
			END
		ELSE
			BEGIN
				SET @result = 0;
			END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_booking_u_catering]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_booking_u_catering]
@id INT,
@idCatering INT,
@quantity INT,
@result INT OUTPUT
AS

BEGIN
	 /* Exist Catering */
		DECLARE @existCatering INT
		SELECT @existCatering = id FROM  caterings WHERE id = @idCatering AND isActive = 1


		IF (SELECT count(*) FROM booking_caterings WHERE id != @id AND idCatering = @idCatering) > 0 OR
		    @existCatering = 0
			BEGIN
				SET @result = 0;
			END
		ELSE
			BEGIN
					DECLARE @price DECIMAL(10,2);
					SELECT @price = price FROM caterings WHERE id = @idCatering;


					UPDATE [dbo].[booking_caterings]
					   SET 
							[quantity] = @quantity,
						  	[idCatering] = @idCatering,
						  	[unitPrice] = @price,
							[amount] = (@price*@quantity),
							[updatedAt] = GETDATE()
					 WHERE id = @id


					SET @result = 1;
			END
END

GO
/****** Object:  StoredProcedure [dbo].[usp_bookings_s_bookings]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_bookings_s_bookings]
@idRoom INT,
@idBookingStatus INT,
@idClient INT,
@startDate VARCHAR(50),
@endDate VARCHAR(50)
AS
BEGIN

	/* Filter */

	IF @startDate = '' OR @startDate = '0000-00-00'
		BEGIN
			SET @startDate = NULL;
		END

	IF @endDate = '' OR @endDate = '0000-00-00'
		BEGIN
			SET @endDate = NULL;
		END

	IF @idBookingStatus = '' OR @idRoom = 0
		BEGIN
			SET @idBookingStatus = NULL;
		END

	IF @idClient = '' OR @idRoom = 0
		BEGIN
			SET @idClient = NULL;
		END

	IF @idRoom = '' OR @idRoom = 0
		BEGIN
			SET @idRoom = NULL;
		END

    SELECT 
		bookings.id,
		bookings.idRoom,
		bookings.idClient,
		bookings.date,
		bookings.startHour,
		bookings.endHour,
		bookings.createdAt,
		bookings.updatedAt,
		clients.name,
		clients.lastName,
		clients.surName,
		clients.businessName,
		clients.idDocumentType,
		clients.document,
		clients.email,
		clients.phoneCode,
		clients.phone,
		clients.gender
    FROM 
        bookings
	INNER JOIN clients ON clients.id = bookings.idClient
	WHERE 
		bookings.idBookingStatus = ISNULL(@idBookingStatus,bookings.idBookingStatus) AND
		bookings.idRoom = ISNULL(@idRoom,bookings.idRoom) AND
		bookings.idClient = ISNULL(@idClient,bookings.idClient) AND
		(
			bookings.date BETWEEN ISNULL(@startDate,bookings.date) AND ISNULL(@endDate,bookings.date)
		)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_catering_d_catering]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_catering_d_catering]
@id INT,
@result INT OUTPUT
AS
BEGIN


		UPDATE [dbo].[caterings]
		   SET 
				[isActive] = 0,
				[updatedAt] = GETDATE()
		 WHERE id = @id

		 SET @result = 1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_catering_i_catering]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_catering_i_catering]
@name VARCHAR(200),
@price DECIMAL(10,2),
@result INT OUTPUT
AS

BEGIN

		IF (SELECT count(*) FROM caterings WHERE name = @name) > 0 
			BEGIN
				SET @result = 0;
			END
		ELSE
			BEGIN
					INSERT INTO [dbo].[caterings]
						   (
							[name],
							[price],
							[createdAt],
							[updatedAt],
							[isActive]
						   )
					 VALUES
						   (
							@name,
							@price,
							GETDATE(),
							GETDATE(),
							1
						   )

					SET @result = 1;
			END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_catering_s_catering]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_catering_s_catering]
@id INT
AS
BEGIN
    SELECT 
		name,
		price,
		createdAt,
		updatedAt
    FROM 
        caterings
	WHERE
	    id = @id;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_catering_u_catering]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_catering_u_catering]
@id INT,
@name VARCHAR(200),
@price DECIMAL(10,2),
@result INT OUTPUT
AS
BEGIN

		IF (SELECT count(*) FROM caterings WHERE name = @name AND id != @id) > 0 
			BEGIN
				SET @result = 0;
			END
		ELSE
			BEGIN
					UPDATE [dbo].[caterings]
					 SET 
							[name] = @name,
							[price] = @price,
							[updatedAt] = GETDATE()
					 WHERE id = @id

					SET @result = 1;
			END
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_caterings_s_caterings]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_caterings_s_caterings]
AS
BEGIN
    SELECT 
		id,
		name,
		price,
		createdAt,
		updatedAt
    FROM 
        caterings
	where 
		isActive = 1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_client_d_client]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_client_d_client]
@id INT,
@result INT OUTPUT
AS
BEGIN


		UPDATE [dbo].[users]
		   SET 
				[isActive] = 0,
				[updatedAt] = GETDATE()
		 WHERE id = @id

		 SET @result = 1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_client_e_client]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_client_e_client]
@id INT,
@result INT OUTPUT
AS
BEGIN

	IF (SELECT count(*) FROM users WHERE id = @id) > 0 
			BEGIN
					SET @result = 1;
			END
		ELSE
			BEGIN
					SET @result = 0;
			END
    
END

GO
/****** Object:  StoredProcedure [dbo].[usp_client_i_client]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_client_i_client]
@name VARCHAR(200),
@lastName VARCHAR(200),
@surName VARCHAR(200),
@businessName VARCHAR(200),
@idDocumentType INT,
@document VARCHAR(50),
@password VARCHAR(50),
@email VARCHAR(50),
@phoneCode VARCHAR(50),
@phone VARCHAR(50),
@gender VARCHAR(50),
@result INT OUTPUT
AS

BEGIN

		IF (SELECT count(*) FROM [users] WHERE document = @document AND [email] = @email) > 0 
			BEGIN
				SET @result = 0;
			END
		ELSE
			BEGIN
				INSERT INTO [dbo].[users]
					   (
					   [name]
					   ,[lastName]
					   ,[surName]
					   ,[businessName]
					   ,[idDocumentType]
					   ,[document]
					   ,[email]
					   ,[password]
					   ,[phoneCode]
					   ,[phone]
					   ,[gender]
					   ,[createdAt]
					   ,[updatedAt],
					   [isActive]
					   )
				 VALUES
					   (
					   @name,
					   @lastName,
					   @surName,
					   @businessName,
					   @idDocumentType,
					   @document,
					   @email,
					   @password,
					   @phoneCode,
					   @phone,
					   @gender,
					   GETDATE(),
					   GETDATE(),
						1
					   )


					SET @result = 1;
			END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_client_s_client]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_client_s_client]
@id INT
AS
BEGIN
    SELECT 
		name,
		lastName,
		surName,
		businessName,
		idDocumentType,
		document,
		email,
		phoneCode,
		phone,
		gender,
		createdAt,
		updatedAt
    FROM 
        users
	WHERE
	    id = @id;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_client_u_client]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_client_u_client]
@id INT,
@name VARCHAR(200),
@lastName VARCHAR(200),
@surName VARCHAR(200),
@businessName VARCHAR(200),
@idDocumentType INT,
@document VARCHAR(50),
@email VARCHAR(50),
@phoneCode VARCHAR(50),
@phone VARCHAR(50),
@gender VARCHAR(50),
@result INT OUTPUT
AS
BEGIN

		IF (SELECT count(*) FROM [users] WHERE document = @document AND [email] = @email AND id != @id) > 0 
			BEGIN
				SET @result = 0;
			END
		ELSE
			BEGIN


					UPDATE [dbo].[users]
					   SET [name] = @name
						  ,[lastName] = @lastName
						  ,[surName] = @surName
						  ,[businessName] = @businessName
						  ,[idDocumentType] = @idDocumentType
						  ,[document] = @document
						  ,[email] = @email
						  ,[phoneCode] = @phoneCode
						  ,[phone] = @phone
						  ,[gender] = @gender
						  ,[updatedAt] = GETDATE()
					 WHERE 
							id = @id


					SET @result = 1;
			END
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_clients_s_clients]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_clients_s_clients]
AS
BEGIN
    SELECT 
		id,
		name,
		lastName,
		surName,
		businessName,
		idDocumentType,
		document,
		email,
		phoneCode,
		phone,
		gender,
		createdAt,
		updatedAt
    FROM 
        users
END
GO
/****** Object:  StoredProcedure [dbo].[usp_room_d_room]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_room_d_room]
@id INT,
@result INT OUTPUT
AS
BEGIN


		UPDATE [dbo].[rooms]
		   SET 
				[isActive] = 0,
				[updatedAt] = GETDATE()
		 WHERE id = @id

		 SET @result = 1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_room_d_schedule]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_room_d_schedule]
@id INT,
@result INT OUTPUT
AS
BEGIN


		 DELETE [dbo].[room_shedules]
		 WHERE id = @id

		 SET @result = 1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_room_i_room]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_room_i_room]
@name VARCHAR(200),
@hourPrice DECIMAL(10,2),
@cleaningTime VARCHAR(50),
@description TEXT,
@numberAttendees INT,
@result INT OUTPUT
AS

BEGIN

		IF (SELECT count(*) FROM rooms WHERE name = @name) > 0 
			BEGIN
				SET @result = 0;
			END
		ELSE
			BEGIN
					INSERT INTO [dbo].[rooms]
						   (
							[name],
							[hourPrice],
							[cleaningTime],
							[description],
							[numberAttendees],
							[createdAt],
							[updatedAt],
							[isActive]
						   )
					 VALUES
						   (
							@name,
							@hourPrice,
							@cleaningTime,
							@description,
							@numberAttendees,
							GETDATE(),
							GETDATE(),
							1
						   )

					SET @result = 1;
			END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_room_i_schedule]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_room_i_schedule]
@idRoom INT,
@day INT,
@startHour VARCHAR(50),
@endHour VARCHAR(50),
@result INT OUTPUT
AS
BEGIN

		IF (	
				SELECT count(*) 
				FROM [room_shedules] 
				WHERE 
					[idRoom] = @idRoom AND
					day = @day AND
					(
						(startHour BETWEEN @startHour AND @endHour)
						OR
						(endHour BETWEEN @startHour AND @endHour)
					)
			
			) > 0 
			BEGIN
				SET @result = 0;
			END
		ELSE
			BEGIN
					INSERT INTO [dbo].[room_shedules]
				   (
					[idRoom],
					[day],
					[startHour],
					[endHour],
					[createdAt],
					[updatedAt]
				   )
					 VALUES
						   (
							@idRoom,
							@day,
							@startHour,
							@endHour,
							GETDATE(),
							GETDATE()
						   )

					SET @result = 1;
			END

			

END
GO
/****** Object:  StoredProcedure [dbo].[usp_room_s_room]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_room_s_room]
@id INT
AS
BEGIN
    SELECT 
		name,
		hourPrice,
		cleaningTime,
		description,
		numberAttendees,
		createdAt,
		updatedAt
    FROM 
        rooms
	WHERE
	    id = @id;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_room_s_schedule]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_room_s_schedule]
@idRoom INT
AS
BEGIN


		 SELECT
			id,
			day,
			startHour,
			endHour,
			createdAt,
			updatedAt
		 FROM
		 [dbo].[room_shedules]
		 WHERE
		   idRoom = @idRoom
END
GO
/****** Object:  StoredProcedure [dbo].[usp_room_s_schedules]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_room_s_schedules]
AS
BEGIN


		 SELECT
			id,
			idRoom,
			day,
			startHour,
			endHour,
			createdAt,
			updatedAt
		 FROM
		 [dbo].[room_shedules]
END
GO
/****** Object:  StoredProcedure [dbo].[usp_room_u_room]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_room_u_room]
@id INT,
@name VARCHAR(200),
@hourPrice DECIMAL(10,2),
@cleaningTime VARCHAR(50),
@description TEXT,
@numberAttendees INT,
@result INT OUTPUT
AS
BEGIN

		IF (SELECT count(*) FROM rooms WHERE name = @name AND id != @id) > 0 
			BEGIN
				SET @result = 0;
			END
		ELSE
			BEGIN
					UPDATE [dbo].[rooms]
					 SET 
							[name] = @name,
							[hourPrice] = @hourPrice,
							[cleaningTime] = @cleaningTime,
							[description] = @description,
							[numberAttendees] = @numberAttendees,
							[updatedAt] = GETDATE()
					 WHERE id = @id

					SET @result = 1;
			END
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_room_u_schedule]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_room_u_schedule]
@id INT,
@idRoom INT,
@day INT,
@startHour VARCHAR(50),
@endHour VARCHAR(50),
@result INT OUTPUT
AS
BEGIN

		IF (	
				SELECT count(*) 
				FROM [room_shedules] 
				WHERE 
					[idRoom] = @idRoom AND
					day = @day AND
					(
						(startHour BETWEEN @startHour AND @endHour)
						OR
						(endHour BETWEEN @startHour AND @endHour)
					) AND
					id != @id
			) > 0 
			BEGIN
				SET @result = 0;
			END
		ELSE
			BEGIN
					UPDATE [dbo].[room_shedules]
					   SET 
							[idRoom] = @idRoom,
							[day] = @day,
							[startHour] = @startHour,
							[endHour] = @endHour,
							[updatedAt] = GETDATE()
					 WHERE id = @id

					SET @result = 1;
			END


END
GO
/****** Object:  StoredProcedure [dbo].[usp_rooms_s_rooms]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_rooms_s_rooms]
AS
BEGIN
    SELECT 
		id,
		name,
		hourPrice,
		cleaningTime,
		description,
		numberAttendees,
		createdAt,
		updatedAt
    FROM 
        rooms
	where 
		isActive = 1;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_schedule_s_schedule]    Script Date: 27/07/2021 23:50:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_schedule_s_schedule]
@id INT
AS
BEGIN


		 SELECT
			id,
			idRoom,
			day,
			startHour,
			endHour,
			createdAt,
			updatedAt
		 FROM
		 [dbo].[room_shedules]
		 WHERE
		   id = @id
END
GO
USE [master]
GO
ALTER DATABASE [getaclub] SET  READ_WRITE 
GO
