USE [SLK_HUB_DEV]
GO
/****** Object:  Table [dbo].[Subcategory]    Script Date: 11/30/2020 10:08:50 AM ******/
DROP TABLE [dbo].[Subcategory]
GO
/****** Object:  Table [dbo].[Stotefiles]    Script Date: 11/30/2020 10:08:50 AM ******/
DROP TABLE [dbo].[Stotefiles]
GO
/****** Object:  Table [dbo].[Learnings]    Script Date: 11/30/2020 10:08:50 AM ******/
DROP TABLE [dbo].[Learnings]
GO
/****** Object:  Table [dbo].[Impact]    Script Date: 11/30/2020 10:08:50 AM ******/
DROP TABLE [dbo].[Impact]
GO
/****** Object:  Table [dbo].[Evolution_Strategic_Focus]    Script Date: 11/30/2020 10:08:50 AM ******/
DROP TABLE [dbo].[Evolution_Strategic_Focus]
GO
/****** Object:  Table [dbo].[Evolution_Offices_Documents]    Script Date: 11/30/2020 10:08:50 AM ******/
DROP TABLE [dbo].[Evolution_Offices_Documents]
GO
/****** Object:  Table [dbo].[Employee_Journey_Path]    Script Date: 11/30/2020 10:08:50 AM ******/
DROP TABLE [dbo].[Employee_Journey_Path]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 11/30/2020 10:08:50 AM ******/
DROP TABLE [dbo].[Customers]
GO
/****** Object:  Table [dbo].[Customer_Projects]    Script Date: 11/30/2020 10:08:50 AM ******/
DROP TABLE [dbo].[Customer_Projects]
GO
/****** Object:  Table [dbo].[Customer_Project_Team]    Script Date: 11/30/2020 10:08:50 AM ******/
DROP TABLE [dbo].[Customer_Project_Team]
GO
/****** Object:  Table [dbo].[Customer_Journey]    Script Date: 11/30/2020 10:08:50 AM ******/
DROP TABLE [dbo].[Customer_Journey]
GO
/****** Object:  Table [dbo].[Customer_Documents]    Script Date: 11/30/2020 10:08:50 AM ******/
DROP TABLE [dbo].[Customer_Documents]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 11/30/2020 10:08:50 AM ******/
DROP TABLE [dbo].[Categories]
GO
/****** Object:  Table [dbo].[Approval_Manager]    Script Date: 11/30/2020 10:08:50 AM ******/
DROP TABLE [dbo].[Approval_Manager]
GO
/****** Object:  Table [dbo].[Approval_Manager]    Script Date: 11/30/2020 10:08:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Approval_Manager](
	[Approval_Id] [int] IDENTITY(1,1) NOT NULL,
	[Doc_Id] [int] NULL,
	[Uploaded_By] [int] NULL,
	[Uploaded_On] [datetime] NULL,
	[Approved_Rejected_By] [int] NULL,
	[Approved_Rejected_On] [datetime] NULL,
	[Status] [nvarchar](30) NULL,
 CONSTRAINT [PK_Approval_Manager] PRIMARY KEY CLUSTERED 
(
	[Approval_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 11/30/2020 10:08:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Category_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Create_Date] [datetime] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Category_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer_Documents]    Script Date: 11/30/2020 10:08:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Documents](
	[Doc_ID] [int] IDENTITY(1,1) NOT NULL,
	[Doc_Name] [nvarchar](100) NULL,
	[Doc_Path] [nvarchar](500) NULL,
	[Doc_Tags] [nvarchar](500) NULL,
	[Cust_Id] [int] NULL,
	[Cust_Proj_Name] [nvarchar](100) NULL,
	[Cust_Journey_Name] [nvarchar](100) NULL,
	[Ethos_Item_Level_1] [nvarchar](100) NULL,
	[Ethos_Item_Level_2] [nvarchar](100) NULL,
	[Employee_Id] [nvarchar](100) NULL,
	[Create_Date] [datetime] NULL,
	[Last_View_Date] [datetime] NULL,
	[Total_Views] [int] NULL,
 CONSTRAINT [PK_Customer_Documents] PRIMARY KEY CLUSTERED 
(
	[Doc_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer_Journey]    Script Date: 11/30/2020 10:08:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Journey](
	[Journey_Id] [int] IDENTITY(1,1) NOT NULL,
	[Journey_Year] [int] NULL,
	[Journey_Module] [nvarchar](500) NULL,
	[Cust_Id] [int] NULL,
	[Journey_Desc] [nvarchar](4000) NULL,
	[Create_Date] [datetime] NULL,
	[Update_Date] [datetime] NULL,
 CONSTRAINT [PK_Customer_Journey] PRIMARY KEY CLUSTERED 
(
	[Journey_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer_Project_Team]    Script Date: 11/30/2020 10:08:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Project_Team](
	[Proj_Team_Id] [int] IDENTITY(1,1) NOT NULL,
	[Proj_Id] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[Designation] [nvarchar](50) NULL,
	[Email_Id] [nvarchar](50) NULL,
	[Phone] [nvarchar](15) NULL,
 CONSTRAINT [PK_Customer_Project_Team] PRIMARY KEY CLUSTERED 
(
	[Proj_Team_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer_Projects]    Script Date: 11/30/2020 10:08:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Projects](
	[Proj_Id] [int] IDENTITY(1,1) NOT NULL,
	[Proj_Desc] [nvarchar](500) NULL,
	[Cust_Id] [int] NULL,
	[Year] [int] NULL,
	[SLK_Champ] [nvarchar](500) NULL,
	[Description] [nvarchar](500) NULL,
	[Create_Date] [datetime] NULL,
	[Update_Date] [datetime] NULL,
 CONSTRAINT [PK_Customer_Projects] PRIMARY KEY CLUSTERED 
(
	[Proj_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 11/30/2020 10:08:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Cust_Id] [int] IDENTITY(1,1) NOT NULL,
	[Cust_Name] [nvarchar](100) NULL,
	[Cust_Desc] [nvarchar](500) NULL,
	[Year_Of_Engagement] [int] NULL,
	[Website_Link] [nvarchar](500) NULL,
	[Leadership_Team_Link] [nvarchar](500) NULL,
	[Products_Link] [nvarchar](500) NULL,
	[Financials_Link] [nvarchar](500) NULL,
	[Logo_Path] [nvarchar](500) NULL,
	[Cust_Industry] [nvarchar](500) NULL,
	[Create_Date] [datetime] NULL,
	[Update_Date] [datetime] NULL,
 CONSTRAINT [PK_Customers_1] PRIMARY KEY CLUSTERED 
(
	[Cust_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_Journey_Path]    Script Date: 11/30/2020 10:08:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Journey_Path](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Id] [nvarchar](50) NULL,
	[Employee_Name] [nvarchar](50) NULL,
	[Year] [int] NULL,
	[Designation] [nvarchar](50) NULL,
	[Doc_Path] [nvarchar](500) NULL,
	[Create_Date] [datetime] NULL,
	[Last_View_Date] [datetime] NULL,
	[Total_Views] [int] NULL,
 CONSTRAINT [PK_Employee_Journey_Path] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evolution_Offices_Documents]    Script Date: 11/30/2020 10:08:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evolution_Offices_Documents](
	[Doc_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Year] [int] NULL,
	[Doc_Path] [nvarchar](500) NULL,
	[Create_Date] [datetime] NULL,
	[Last_View_Date] [datetime] NULL,
	[Total_Views] [int] NULL,
 CONSTRAINT [PK_Evolution_Offices_Documents] PRIMARY KEY CLUSTERED 
(
	[Doc_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evolution_Strategic_Focus]    Script Date: 11/30/2020 10:08:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evolution_Strategic_Focus](
	[Strategic_Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Year] [int] NULL,
	[Doc_Path] [nvarchar](500) NULL,
	[Create_Date] [datetime] NULL,
	[Last_View_Date] [datetime] NULL,
	[Total_Views] [int] NULL,
 CONSTRAINT [PK_Evolution_Strategic_Focus] PRIMARY KEY CLUSTERED 
(
	[Strategic_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Impact]    Script Date: 11/30/2020 10:08:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Impact](
	[Impact_id] [int] IDENTITY(1,1) NOT NULL,
	[Customer] [nvarchar](50) NULL,
	[Solution] [nvarchar](50) NULL,
	[Year] [int] NULL,
	[SLK_Champion] [nvarchar](50) NULL,
	[Case_Study] [nvarchar](max) NULL,
	[Description] [nvarchar](500) NULL,
	[ImpactType] [varchar](50) NULL,
 CONSTRAINT [PK_Impact] PRIMARY KEY CLUSTERED 
(
	[Impact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Learnings]    Script Date: 11/30/2020 10:08:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Learnings](
	[Learning_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Year] [int] NULL,
	[Doc_Path] [nvarchar](500) NULL,
	[Create_Date] [datetime] NULL,
	[Last_View_Date] [datetime] NULL,
	[Total_Views] [int] NULL,
 CONSTRAINT [PK_Learnings] PRIMARY KEY CLUSTERED 
(
	[Learning_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stotefiles]    Script Date: 11/30/2020 10:08:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stotefiles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[File] [nvarchar](max) NULL,
 CONSTRAINT [PK_Files] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subcategory]    Script Date: 11/30/2020 10:08:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subcategory](
	[Subcategory_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Category_Id] [int] NULL,
	[Create_Date] [datetime] NULL,
 CONSTRAINT [PK_Subcategory] PRIMARY KEY CLUSTERED 
(
	[Subcategory_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer_Documents] ON 
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (1, N'Video 1', N'video/video1.mp4', N'Test tags', 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.470' AS DateTime), CAST(N'2020-11-24T07:33:02.470' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (2, N'Video 2', N'video/video2.mp4', N'Test tags', 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.480' AS DateTime), CAST(N'2020-11-24T07:33:02.480' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (3, N'Video 3', N'video/video3.mp4', N'Test tags', 0, N'a banking project', NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.480' AS DateTime), CAST(N'2020-11-24T07:33:02.480' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (4, N'Video 4', N'video/video4.mp4', N'Test tags', 0, NULL, N'Inflation Model', NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.480' AS DateTime), CAST(N'2020-11-24T07:33:02.480' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (5, N'Video 5', N'video/video5.mp4', N'Test tags', 0, NULL, NULL, N'Item level 1', NULL, NULL, CAST(N'2020-11-24T07:33:02.480' AS DateTime), CAST(N'2020-11-24T07:33:02.480' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (6, N'Video 6', N'video/video6.mp4', N'Test tags', 0, NULL, NULL, NULL, N'Item level 2', NULL, CAST(N'2020-11-24T07:33:02.480' AS DateTime), CAST(N'2020-11-24T07:33:02.480' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (7, N'Video 7', N'video/video7.mp4', N'Test tags', 0, NULL, NULL, NULL, NULL, N'107505', CAST(N'2020-11-24T07:33:02.480' AS DateTime), CAST(N'2020-11-24T07:33:02.480' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[Customer_Documents] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer_Journey] ON 
GO
INSERT [dbo].[Customer_Journey] ([Journey_Id], [Journey_Year], [Journey_Module], [Cust_Id], [Journey_Desc], [Create_Date], [Update_Date]) VALUES (1, 2000, N'The Begining', 1, N'Description', CAST(N'2020-11-24T05:01:42.883' AS DateTime), CAST(N'2020-11-24T05:01:42.883' AS DateTime))
GO
INSERT [dbo].[Customer_Journey] ([Journey_Id], [Journey_Year], [Journey_Module], [Cust_Id], [Journey_Desc], [Create_Date], [Update_Date]) VALUES (2, 2001, N'Inflation Model', 1, N'Description', CAST(N'2020-11-24T05:01:42.883' AS DateTime), CAST(N'2020-11-24T05:01:42.883' AS DateTime))
GO
INSERT [dbo].[Customer_Journey] ([Journey_Id], [Journey_Year], [Journey_Module], [Cust_Id], [Journey_Desc], [Create_Date], [Update_Date]) VALUES (3, 2003, N'Symphony', 1, N'Description', CAST(N'2020-11-24T05:01:42.883' AS DateTime), CAST(N'2020-11-24T05:01:42.883' AS DateTime))
GO
INSERT [dbo].[Customer_Journey] ([Journey_Id], [Journey_Year], [Journey_Module], [Cust_Id], [Journey_Desc], [Create_Date], [Update_Date]) VALUES (4, 2006, N'Configurator', 1, N'Description', CAST(N'2020-11-24T05:01:42.883' AS DateTime), CAST(N'2020-11-24T05:01:42.883' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Customer_Journey] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer_Project_Team] ON 
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone]) VALUES (1, 1, N'Rajesh M', N'Project manager', N'mag@slkgroup.com', N'222341111')
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone]) VALUES (2, 1, N'Ramesh', N'Architect', N'ramesh@slkgroup.com', N'222341111')
GO
SET IDENTITY_INSERT [dbo].[Customer_Project_Team] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer_Projects] ON 
GO
INSERT [dbo].[Customer_Projects] ([Proj_Id], [Proj_Desc], [Cust_Id], [Year], [SLK_Champ], [Description], [Create_Date], [Update_Date]) VALUES (1, N'a banking project', 2, 2013, N'bruce', N'zzz xx ccc', CAST(N'2013-09-09T00:00:00.000' AS DateTime), CAST(N'2020-08-29T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Customer_Projects] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 
GO
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (1, N'Emerson', N'qwerty', 2008, N'www.emerson.com', N'www.leaderemerson.com', N'www.productemerson.com', N'www.financeemerson.com', N'img/logo1.png', N'qwerty', CAST(N'2013-09-09T00:00:00.000' AS DateTime), CAST(N'2020-08-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (2, N'Fifth Third Bank', N'Fifth Third Bank', 2012, N'www.fifththirdbank.com', N'www.leaderfifththirdbank.com', N'www.productfifththirdbank.com', N'www.financefifththirdbank.com', N'img/fifththirdlogo.png', N'test', CAST(N'2020-11-24T04:48:51.813' AS DateTime), CAST(N'2020-11-24T04:48:51.813' AS DateTime))
GO
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (3, N'M & T Bank', N'M & T Bank', 2014, N'www.mtbank.com', N'www.leadermtbank.com', N'www.productmtbank.com', N'www.financemtbank.com', N'img/mtlogo.png', N'test', CAST(N'2020-11-24T04:48:51.823' AS DateTime), CAST(N'2020-11-24T04:48:51.823' AS DateTime))
GO
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (4, N'Regions Bank', N'Regions Bank', 2015, N'www.regionsbank.com', N'www.leaderregionsbank.com', N'www.productRegionsbank.com', N'www.financeRegionsbank.com', N'img/Regionslogo.png', N'test', CAST(N'2020-11-24T04:48:51.823' AS DateTime), CAST(N'2020-11-24T04:48:51.823' AS DateTime))
GO
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (5, N'Voya', N'Voya', 2019, N'www.voya.com', N'www.leaderVoya.com', N'www.productVoya.com', N'www.financeVoya.com', N'img/Voyalogo.png', N'test', CAST(N'2020-11-24T04:48:51.823' AS DateTime), CAST(N'2020-11-24T04:48:51.823' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee_Journey_Path] ON 
GO
INSERT [dbo].[Employee_Journey_Path] ([ID], [Employee_Id], [Employee_Name], [Year], [Designation], [Doc_Path], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (1, N'2', N'bruce banner', 2015, N'testing', N'video/bruce.mp4', CAST(N'2013-10-09T00:00:00.000' AS DateTime), CAST(N'2020-08-29T00:00:00.000' AS DateTime), 200)
GO
SET IDENTITY_INSERT [dbo].[Employee_Journey_Path] OFF
GO
SET IDENTITY_INSERT [dbo].[Impact] ON 
GO
INSERT [dbo].[Impact] ([Impact_id], [Customer], [Solution], [Year], [SLK_Champion], [Case_Study], [Description], [ImpactType]) VALUES (1, N'emerson', N'aaaaaa', 2015, N'tony', N'zzzzzzz', N'llllllllllll', N'type1')
GO
SET IDENTITY_INSERT [dbo].[Impact] OFF
GO
SET IDENTITY_INSERT [dbo].[Stotefiles] ON 
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (1, N'"god-lord-ganesha-wallpaper-preview.jpg"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (2, N'"god-lord-ganesha-wallpaper-preview.jpg"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (3, N'"god-lord-ganesha-wallpaper-preview.jpg"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (4, N'"god-lord-ganesha-wallpaper-preview.jpg"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (5, N'"god-lord-ganesha-wallpaper-preview.jpg"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (6, N'"god-lord-ganesha-wallpaper-preview.jpg"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (7, N'"god-lord-ganesha-wallpaper-preview.jpg"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (8, N'"CRUDController.cs"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (9, N'"CRUDController.cs"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (10, N'"CRUDController.cs"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (11, N'"CRUDController.cs"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (12, N'"CRUDController.cs"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (13, N'"god-lord-ganesha-wallpaper-preview.jpg"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (14, N'"god-lord-ganesha-wallpaper-preview.jpg"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (15, N'"DB_Schema.sql"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (16, N'"god-lord-ganesha-wallpaper-preview.jpg"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (17, N'"DB_Schema.sql"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (18, N'"Queries.sql"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (19, N'"debug.log"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (20, N'"god-lord-ganesha-wallpaper-preview.jpg"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (21, N'"debug.log"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (22, N'"DB_Schema.sql"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (23, N'"Queries.sql"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (24, N'"god-lord-ganesha-wallpaper-preview.jpg"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (25, N'"debug.log"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (26, N'"DB_Schema.sql"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (27, N'"Queries.sql"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (28, N'"god-lord-ganesha-wallpaper-preview.jpg"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (29, N'"sample-mp4-file.mp4"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (30, N'"DB_Schema.sql"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (31, N'"debug.log"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (32, N'"god-lord-ganesha-wallpaper-preview.jpg"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (33, N'"Queries.sql"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (34, N'"debug.log"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (35, N'"Queries.sql"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (36, N'"god-lord-ganesha-wallpaper-preview.jpg"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (37, N'"DB_Schema.sql"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (38, N'"sample-mp4-file.mp4"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (39, N'"sample-mp4-file.mp4"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (40, N'"DB_Schema.sql"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (41, N'"god-lord-ganesha-wallpaper-preview.jpg"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (42, N'"Queries.sql"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (43, N'"debug.log"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (44, N'"DB_Schema.sql"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (45, N'"Queries.sql"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (46, N'"debug.log"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (47, N'"god-lord-ganesha-wallpaper-preview.jpg"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (48, N'"Queries.sql"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (49, N'"DB_Schema.sql"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (50, N'"god-lord-ganesha-wallpaper-preview.jpg"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (51, N'"debug.log"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (52, N'"debug.log"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (53, N'"Queries.sql"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (54, N'"DB_Schema.sql"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (55, N'"god-lord-ganesha-wallpaper-preview.jpg"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (56, N'"sample-avi-file.avi"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (57, N'"sample-mov-file.mov"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (58, N'"sample-mp4-file.mp4"')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (59, N'sample-mov-file.mov')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (60, N'sample-webm-file.webm')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (61, N'sample-webm-file.webm')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (62, N'sample-mp4-file.mp4')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (63, N'sample-mp4-file.mp4')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (64, N'sample-mp4-file.mp4')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (65, N'sample-mp4-file.mp4')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (66, N'sample-avi-file.avi')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (67, N'sample-mp4-file.mp4')
GO
INSERT [dbo].[Stotefiles] ([Id], [File]) VALUES (68, N'sample-mp4-file.mp4')
GO
SET IDENTITY_INSERT [dbo].[Stotefiles] OFF
GO
