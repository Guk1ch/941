USE [master]
GO
/****** Object:  Database [zachet235_vtoroy_raz_Zinnatullin]    Script Date: 03.02.2025 16:44:16 ******/
CREATE DATABASE [zachet235_vtoroy_raz_Zinnatullin]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'zachet235_vtoroy_raz_Zinnatullin', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER01\MSSQL\DATA\zachet235_vtoroy_raz_Zinnatullin.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'zachet235_vtoroy_raz_Zinnatullin_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER01\MSSQL\DATA\zachet235_vtoroy_raz_Zinnatullin_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [zachet235_vtoroy_raz_Zinnatullin].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET ARITHABORT OFF 
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET  ENABLE_BROKER 
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET RECOVERY FULL 
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET  MULTI_USER 
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET DB_CHAINING OFF 
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'zachet235_vtoroy_raz_Zinnatullin', N'ON'
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET QUERY_STORE = ON
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [zachet235_vtoroy_raz_Zinnatullin]
GO
/****** Object:  Table [dbo].[Enterprise]    Script Date: 03.02.2025 16:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise](
	[enterprise_id] [int] NOT NULL,
	[name] [varchar](255) NULL,
	[address] [varchar](255) NULL,
	[phone] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[enterprise_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Expenditure]    Script Date: 03.02.2025 16:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Expenditure](
	[expenditure_id] [int] NOT NULL,
	[warehouse_id] [int] NULL,
	[date] [date] NULL,
	[employee_name] [varchar](255) NULL,
	[employee_position] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[expenditure_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpenditureItem]    Script Date: 03.02.2025 16:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpenditureItem](
	[expenditure_item_id] [int] NOT NULL,
	[expenditure_id] [int] NULL,
	[inventory_id] [int] NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[expenditure_item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 03.02.2025 16:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[inventory_id] [int] NOT NULL,
	[name] [varchar](255) NULL,
	[type] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[inventory_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receipt]    Script Date: 03.02.2025 16:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receipt](
	[receipt_id] [int] NOT NULL,
	[warehouse_id] [int] NULL,
	[date] [date] NULL,
	[employee_name] [varchar](255) NULL,
	[employee_position] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[receipt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReceiptItem]    Script Date: 03.02.2025 16:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceiptItem](
	[receipt_item_id] [int] NOT NULL,
	[receipt_id] [int] NULL,
	[inventory_id] [int] NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[receipt_item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockCard]    Script Date: 03.02.2025 16:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockCard](
	[stock_card_id] [int] NOT NULL,
	[inventory_id] [int] NULL,
	[total_receipts] [int] NULL,
	[total_expenditures] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[stock_card_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warehouse]    Script Date: 03.02.2025 16:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouse](
	[warehouse_id] [int] NOT NULL,
	[enterprise_id] [int] NULL,
	[name] [varchar](255) NULL,
	[address] [varchar](255) NULL,
	[phone] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[warehouse_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Enterprise] ([enterprise_id], [name], [address], [phone]) VALUES (1001, N'Goooogel', N'Улица Летняя, дом 17, квартира 3, город Звенигород', N'+1 555-123-4567')
INSERT [dbo].[Enterprise] ([enterprise_id], [name], [address], [phone]) VALUES (1002, N'Nikel', N'Переулок Солнечный, дом 9, квартира 15, поселок Павшино', N'+1 777-888-9999')
INSERT [dbo].[Enterprise] ([enterprise_id], [name], [address], [phone]) VALUES (1003, N'Rima', N'Проезд Октябрьский, дом 22, квартира 7, город Долгопрудный', N'+1 123-456-7890')
INSERT [dbo].[Enterprise] ([enterprise_id], [name], [address], [phone]) VALUES (1004, N'Afobazol', N'Улица Пионерская, дом 5, квартира 21, поселок Покровское', N'+1 555-555-5555')
INSERT [dbo].[Enterprise] ([enterprise_id], [name], [address], [phone]) VALUES (1005, N'Yandex', N'Проспект Мира, дом 33, квартира 47, город Коломна
', N'+1 999-555-1234')
GO
INSERT [dbo].[Expenditure] ([expenditure_id], [warehouse_id], [date], [employee_name], [employee_position]) VALUES (201, 305, CAST(N'2024-06-28' AS Date), N'Борис', N'Бухгалтер')
INSERT [dbo].[Expenditure] ([expenditure_id], [warehouse_id], [date], [employee_name], [employee_position]) VALUES (202, 305, CAST(N'2024-06-29' AS Date), N'Павел', N'Бухгалтер')
INSERT [dbo].[Expenditure] ([expenditure_id], [warehouse_id], [date], [employee_name], [employee_position]) VALUES (203, 309, CAST(N'2024-06-29' AS Date), N'Егор', N'Разнорабочий')
INSERT [dbo].[Expenditure] ([expenditure_id], [warehouse_id], [date], [employee_name], [employee_position]) VALUES (204, 307, CAST(N'2024-06-29' AS Date), N'Артём', N'Разнорабочий')
INSERT [dbo].[Expenditure] ([expenditure_id], [warehouse_id], [date], [employee_name], [employee_position]) VALUES (205, 306, CAST(N'2024-06-30' AS Date), N'Делюс', N'Разнорабочий')
GO
INSERT [dbo].[ExpenditureItem] ([expenditure_item_id], [expenditure_id], [inventory_id], [quantity]) VALUES (12035, 201, 70003, 15000)
INSERT [dbo].[ExpenditureItem] ([expenditure_item_id], [expenditure_id], [inventory_id], [quantity]) VALUES (12036, 202, 70003, 15000)
INSERT [dbo].[ExpenditureItem] ([expenditure_item_id], [expenditure_id], [inventory_id], [quantity]) VALUES (12037, 203, 70001, 215)
INSERT [dbo].[ExpenditureItem] ([expenditure_item_id], [expenditure_id], [inventory_id], [quantity]) VALUES (12038, 204, 70002, 1010)
INSERT [dbo].[ExpenditureItem] ([expenditure_item_id], [expenditure_id], [inventory_id], [quantity]) VALUES (12039, 205, 70003, 15000)
GO
INSERT [dbo].[Inventory] ([inventory_id], [name], [type]) VALUES (70000, N'Перфоратор', N'Инструмент')
INSERT [dbo].[Inventory] ([inventory_id], [name], [type]) VALUES (70001, N'Гвоздодёр', N'Инструмент')
INSERT [dbo].[Inventory] ([inventory_id], [name], [type]) VALUES (70002, N'Молоток', N'Инструмент')
INSERT [dbo].[Inventory] ([inventory_id], [name], [type]) VALUES (70003, N'Бумага А4', N'Канцелярия')
INSERT [dbo].[Inventory] ([inventory_id], [name], [type]) VALUES (70004, N'Карандаш', N'Канцелярия')
GO
INSERT [dbo].[Receipt] ([receipt_id], [warehouse_id], [date], [employee_name], [employee_position]) VALUES (4310, 305, CAST(N'2024-06-29' AS Date), N'Григорий', N'Бухгалтер')
INSERT [dbo].[Receipt] ([receipt_id], [warehouse_id], [date], [employee_name], [employee_position]) VALUES (4311, 306, CAST(N'2024-06-29' AS Date), N'Борис', N'Разнорабочий')
INSERT [dbo].[Receipt] ([receipt_id], [warehouse_id], [date], [employee_name], [employee_position]) VALUES (4312, 307, CAST(N'2024-06-29' AS Date), N'Антон', N'Бухгалтер')
INSERT [dbo].[Receipt] ([receipt_id], [warehouse_id], [date], [employee_name], [employee_position]) VALUES (4313, 308, CAST(N'2024-06-29' AS Date), N'Сергей', N'Разнорабочий')
INSERT [dbo].[Receipt] ([receipt_id], [warehouse_id], [date], [employee_name], [employee_position]) VALUES (4314, 309, CAST(N'2024-06-29' AS Date), N'Павел', N'Бухгалтер')
GO
INSERT [dbo].[ReceiptItem] ([receipt_item_id], [receipt_id], [inventory_id], [quantity]) VALUES (213, 4310, 70000, 25)
INSERT [dbo].[ReceiptItem] ([receipt_item_id], [receipt_id], [inventory_id], [quantity]) VALUES (214, 4310, 70001, 37)
INSERT [dbo].[ReceiptItem] ([receipt_item_id], [receipt_id], [inventory_id], [quantity]) VALUES (215, 4310, 70002, 15)
INSERT [dbo].[ReceiptItem] ([receipt_item_id], [receipt_id], [inventory_id], [quantity]) VALUES (216, 4311, 70004, 150)
INSERT [dbo].[ReceiptItem] ([receipt_item_id], [receipt_id], [inventory_id], [quantity]) VALUES (217, 4312, 70004, 220)
GO
INSERT [dbo].[StockCard] ([stock_card_id], [inventory_id], [total_receipts], [total_expenditures]) VALUES (180, 70000, 2, 1)
INSERT [dbo].[StockCard] ([stock_card_id], [inventory_id], [total_receipts], [total_expenditures]) VALUES (181, 70001, 4, 1)
INSERT [dbo].[StockCard] ([stock_card_id], [inventory_id], [total_receipts], [total_expenditures]) VALUES (182, 70002, 2, 1)
INSERT [dbo].[StockCard] ([stock_card_id], [inventory_id], [total_receipts], [total_expenditures]) VALUES (183, 70003, 1, 0)
INSERT [dbo].[StockCard] ([stock_card_id], [inventory_id], [total_receipts], [total_expenditures]) VALUES (184, 70004, 3, 2)
GO
INSERT [dbo].[Warehouse] ([warehouse_id], [enterprise_id], [name], [address], [phone]) VALUES (305, 1001, N'Goooogle_SKLAD', N'Улица Летняя, дом 7, квартира 3, город Звенигород', N'+7 (916) 555-1234')
INSERT [dbo].[Warehouse] ([warehouse_id], [enterprise_id], [name], [address], [phone]) VALUES (306, 1002, N'NIKEL_OBYV', N'Переулок Солнечный, дом 10, квартира 15, поселок Павшино', N'+1 (212) 555-9876')
INSERT [dbo].[Warehouse] ([warehouse_id], [enterprise_id], [name], [address], [phone]) VALUES (307, 1003, N'Rima_Sklad', N'Проезд Октябрьский, дом 34, квартира 7, город Долгопрудный', N'+44 (20) 1234-5678')
INSERT [dbo].[Warehouse] ([warehouse_id], [enterprise_id], [name], [address], [phone]) VALUES (308, 1004, N'Afobazol_top', N'Улица Пионерская, дом 15, квартира 21, поселок Покровское', N'+49 (30) 8765-4321')
INSERT [dbo].[Warehouse] ([warehouse_id], [enterprise_id], [name], [address], [phone]) VALUES (309, 1005, N'Yandex_disc_v_reale', N'Проспект Мира, дом 3, квартира 47, город Коломна
', N'+81 (3) 9999-8888')
INSERT [dbo].[Warehouse] ([warehouse_id], [enterprise_id], [name], [address], [phone]) VALUES (310, NULL, NULL, NULL, NULL)
GO
ALTER TABLE [dbo].[Expenditure]  WITH CHECK ADD FOREIGN KEY([warehouse_id])
REFERENCES [dbo].[Warehouse] ([warehouse_id])
GO
ALTER TABLE [dbo].[ExpenditureItem]  WITH CHECK ADD FOREIGN KEY([expenditure_id])
REFERENCES [dbo].[Expenditure] ([expenditure_id])
GO
ALTER TABLE [dbo].[ExpenditureItem]  WITH CHECK ADD FOREIGN KEY([inventory_id])
REFERENCES [dbo].[Inventory] ([inventory_id])
GO
ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD FOREIGN KEY([warehouse_id])
REFERENCES [dbo].[Warehouse] ([warehouse_id])
GO
ALTER TABLE [dbo].[ReceiptItem]  WITH CHECK ADD FOREIGN KEY([inventory_id])
REFERENCES [dbo].[Inventory] ([inventory_id])
GO
ALTER TABLE [dbo].[ReceiptItem]  WITH CHECK ADD FOREIGN KEY([receipt_id])
REFERENCES [dbo].[Receipt] ([receipt_id])
GO
ALTER TABLE [dbo].[StockCard]  WITH CHECK ADD FOREIGN KEY([inventory_id])
REFERENCES [dbo].[Inventory] ([inventory_id])
GO
ALTER TABLE [dbo].[Warehouse]  WITH CHECK ADD FOREIGN KEY([enterprise_id])
REFERENCES [dbo].[Enterprise] ([enterprise_id])
GO
USE [master]
GO
ALTER DATABASE [zachet235_vtoroy_raz_Zinnatullin] SET  READ_WRITE 
GO
