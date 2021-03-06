USE [SLK_HUB_DEV]
GO
/****** Object:  Table [dbo].[Approval_Manager]    Script Date: 12/4/2020 6:48:13 PM ******/
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
/****** Object:  Table [dbo].[Categories]    Script Date: 12/4/2020 6:48:13 PM ******/
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
/****** Object:  Table [dbo].[Customer_Documents]    Script Date: 12/4/2020 6:48:13 PM ******/
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
/****** Object:  Table [dbo].[Customer_Journey]    Script Date: 12/4/2020 6:48:13 PM ******/
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
/****** Object:  Table [dbo].[Customer_Project_Team]    Script Date: 12/4/2020 6:48:17 PM ******/
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
	[ProfilePic] [nvarchar](100) NULL,
	[IsClient] [bit] NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_Customer_Project_Team] PRIMARY KEY CLUSTERED 
(
	[Proj_Team_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer_Projects]    Script Date: 12/4/2020 6:48:17 PM ******/
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
/****** Object:  Table [dbo].[Customer_Timeline]    Script Date: 12/4/2020 6:48:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Timeline](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Timeline] [nvarchar](500) NULL,
	[CustomerId] [int] NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_Customer_Timeline] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 12/4/2020 6:48:17 PM ******/
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
/****** Object:  Table [dbo].[Employee_Career_Growth]    Script Date: 12/4/2020 6:48:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Career_Growth](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Id] [nvarchar](50) NULL,
	[Employee_Name] [nvarchar](50) NULL,
	[Image] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[JourneyYear] [nvarchar](20) NULL,
	[Highlight] [bit] NULL,
	[Star] [bit] NULL,
	[Create_Date] [datetime] NULL,
 CONSTRAINT [PK_Employee_Career_Growth] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_External_Experience]    Script Date: 12/4/2020 6:48:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_External_Experience](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Id] [nvarchar](50) NULL,
	[Employee_Name] [nvarchar](50) NULL,
	[Image] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[JourneyYear] [nvarchar](20) NULL,
	[Highlight] [bit] NULL,
	[Star] [bit] NULL,
	[Create_Date] [datetime] NULL,
 CONSTRAINT [PK_Employee_External_Experience] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_Journey_Path]    Script Date: 12/4/2020 6:48:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Journey_Path](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Employee_Id] [nvarchar](50) NULL,
	[Employee_Name] [nvarchar](50) NULL,
	[Image] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[JourneyYear] [nvarchar](20) NULL,
	[Highlight] [bit] NULL,
	[Star] [bit] NULL,
	[Create_Date] [datetime] NULL,
 CONSTRAINT [PK_Employee_Journey_Path] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ethos_Culture]    Script Date: 12/4/2020 6:48:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ethos_Culture](
	[Ethos_Culture_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Doc_Path] [nvarchar](500) NULL,
	[Culture_Type] [nvarchar](50) NULL,
	[Create_Date] [datetime] NULL,
	[Last_View_Date] [datetime] NULL,
	[Total_Views] [int] NULL,
 CONSTRAINT [PK_Ethos_Culture] PRIMARY KEY CLUSTERED 
(
	[Ethos_Culture_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evolution_Offices_Documents]    Script Date: 12/4/2020 6:48:18 PM ******/
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
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_Evolution_Offices_Documents] PRIMARY KEY CLUSTERED 
(
	[Doc_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evolution_Strategic_Focus]    Script Date: 12/4/2020 6:48:18 PM ******/
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
/****** Object:  Table [dbo].[Impact]    Script Date: 12/4/2020 6:48:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Impact](
	[Impact_id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [nvarchar](50) NULL,
	[CustomerLogo] [nvarchar](50) NULL,
	[Solution] [nvarchar](50) NULL,
	[SLK_Champion] [nvarchar](50) NULL,
	[Title] [nvarchar](500) NULL,
	[Type] [nvarchar](500) NULL,
	[Keywords] [nvarchar](max) NULL,
	[ImpactType] [varchar](50) NULL,
	[Impact_Year] [varchar](50) NULL,
 CONSTRAINT [PK_Impact] PRIMARY KEY CLUSTERED 
(
	[Impact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Learnings]    Script Date: 12/4/2020 6:48:18 PM ******/
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
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_Learnings] PRIMARY KEY CLUSTERED 
(
	[Learning_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stotefiles]    Script Date: 12/4/2020 6:48:18 PM ******/
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
/****** Object:  Table [dbo].[Subcategory]    Script Date: 12/4/2020 6:48:18 PM ******/
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
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (1, N'Video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Test tags', 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.470' AS DateTime), CAST(N'2020-11-24T07:33:02.470' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (2, N'Video 2', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Test tags', 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.480' AS DateTime), CAST(N'2020-11-24T07:33:02.480' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (3, N'Video 3', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Test tags', 0, N'a banking project', NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.480' AS DateTime), CAST(N'2020-11-24T07:33:02.480' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (4, N'Video 4', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Test tags', 0, NULL, N'Inflation Model', NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.480' AS DateTime), CAST(N'2020-11-24T07:33:02.480' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (5, N'Video 5', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Test tags', 0, NULL, NULL, N'Item level 1', NULL, NULL, CAST(N'2020-11-24T07:33:02.480' AS DateTime), CAST(N'2020-11-24T07:33:02.480' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (6, N'Video 6', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Test tags', 0, NULL, NULL, NULL, N'Item level 2', NULL, CAST(N'2020-11-24T07:33:02.480' AS DateTime), CAST(N'2020-11-24T07:33:02.480' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (7, N'Video 7', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Test tags', 0, NULL, NULL, NULL, NULL, N'107505', CAST(N'2020-11-24T07:33:02.480' AS DateTime), CAST(N'2020-11-24T07:33:02.480' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (8, N'Employee Journey Path', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Tags', 0, NULL, NULL, NULL, NULL, N'100', CAST(N'2020-12-02T08:42:08.850' AS DateTime), CAST(N'2020-12-02T08:42:08.850' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (9, N'Employee Journey Path', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Tags', 0, NULL, NULL, NULL, NULL, N'101', CAST(N'2020-12-02T08:42:08.860' AS DateTime), CAST(N'2020-12-02T08:42:08.860' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (10, N'Employee Journey Path', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Tags', 0, NULL, NULL, NULL, NULL, N'102', CAST(N'2020-12-02T08:42:08.860' AS DateTime), CAST(N'2020-12-02T08:42:08.860' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (11, N'Video 8', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Test tags', 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.470' AS DateTime), CAST(N'2020-11-24T07:33:02.470' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (12, N'Video 9', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Test tags', 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.470' AS DateTime), CAST(N'2020-11-24T07:33:02.470' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (13, N'Video 10', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Test tags', 1, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.470' AS DateTime), CAST(N'2020-11-24T07:33:02.470' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (14, N'Video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Test tags', 2, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.470' AS DateTime), CAST(N'2020-11-24T07:33:02.470' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (15, N'Video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Test tags', 3, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.470' AS DateTime), CAST(N'2020-11-24T07:33:02.470' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (16, N'Video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Test tags', 3, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.470' AS DateTime), CAST(N'2020-11-24T07:33:02.470' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (17, N'Video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Test tags', 3, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.470' AS DateTime), CAST(N'2020-11-24T07:33:02.470' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (18, N'Video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Test tags', 4, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.470' AS DateTime), CAST(N'2020-11-24T07:33:02.470' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (19, N'Video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Test tags', 5, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.470' AS DateTime), CAST(N'2020-11-24T07:33:02.470' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (20, N'Video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Test tags', 6, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.470' AS DateTime), CAST(N'2020-11-24T07:33:02.470' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (21, N'Video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Test tags', 7, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.470' AS DateTime), CAST(N'2020-11-24T07:33:02.470' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (22, N'Video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Test tags', 8, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.470' AS DateTime), CAST(N'2020-11-24T07:33:02.470' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (23, N'Video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Tags', 8, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-12-02T08:42:08.860' AS DateTime), CAST(N'2020-12-02T08:42:08.860' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (24, N'Video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Tags', 8, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-12-02T08:42:08.860' AS DateTime), CAST(N'2020-12-02T08:42:08.860' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (25, N'Video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Tags', 9, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-12-02T08:42:08.860' AS DateTime), CAST(N'2020-12-02T08:42:08.860' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (26, N'Video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Test tags', 10, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-11-24T07:33:02.470' AS DateTime), CAST(N'2020-11-24T07:33:02.470' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (27, N'Video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Tags', 10, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-12-02T08:42:08.860' AS DateTime), CAST(N'2020-12-02T08:42:08.860' AS DateTime), 0)
GO
INSERT [dbo].[Customer_Documents] ([Doc_ID], [Doc_Name], [Doc_Path], [Doc_Tags], [Cust_Id], [Cust_Proj_Name], [Cust_Journey_Name], [Ethos_Item_Level_1], [Ethos_Item_Level_2], [Employee_Id], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (28, N'Video 1', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Tags', 10, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-12-02T08:42:08.860' AS DateTime), CAST(N'2020-12-02T08:42:08.860' AS DateTime), 0)
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
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (1, 1, N'Rajesh M', N'Project manager', N'mag@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 0, 1)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (2, 1, N'Ramesh', N'Architect', N'ramesh@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 0, 1)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (3, 1, N'Rajesh M', N'Project manager', N'mag@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 1, 1)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (4, 1, N'Ramesh', N'Architect', N'ramesh@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 1, 1)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (5, 1, N'Rajesh M', N'Project manager', N'mag@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 0, 2)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (6, 1, N'Ramesh', N'Architect', N'ramesh@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 0, 2)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (7, 1, N'Rajesh M', N'Project manager', N'mag@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 1, 2)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (8, 1, N'Ramesh', N'Architect', N'ramesh@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 1, 2)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (9, 1, N'Rajesh M', N'Project manager', N'mag@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 0, 3)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (10, 1, N'Ramesh', N'Architect', N'ramesh@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 0, 3)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (11, 1, N'Rajesh M', N'Project manager', N'mag@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 1, 3)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (12, 1, N'Ramesh', N'Architect', N'ramesh@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 1, 3)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (13, 1, N'Rajesh M', N'Project manager', N'mag@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 0, 4)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (14, 1, N'Ramesh', N'Architect', N'ramesh@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 0, 4)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (15, 1, N'Rajesh M', N'Project manager', N'mag@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 1, 4)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (16, 1, N'Ramesh', N'Architect', N'ramesh@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 1, 4)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (17, 1, N'Rajesh M', N'Project manager', N'mag@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 0, 5)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (18, 1, N'Ramesh', N'Architect', N'ramesh@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 0, 5)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (19, 1, N'Rajesh M', N'Project manager', N'mag@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 1, 5)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (20, 1, N'Ramesh', N'Architect', N'ramesh@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 1, 5)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (21, 1, N'Rajesh M', N'Project manager', N'mag@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 0, 6)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (22, 1, N'Ramesh', N'Architect', N'ramesh@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 0, 6)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (23, 1, N'Rajesh M', N'Project manager', N'mag@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 1, 6)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (24, 1, N'Ramesh', N'Architect', N'ramesh@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 1, 6)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (25, 1, N'Rajesh M', N'Project manager', N'mag@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 0, 7)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (26, 1, N'Ramesh', N'Architect', N'ramesh@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 0, 7)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (27, 1, N'Rajesh M', N'Project manager', N'mag@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 1, 7)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (28, 1, N'Ramesh', N'Architect', N'ramesh@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 1, 7)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (29, 1, N'Rajesh M', N'Project manager', N'mag@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 0, 8)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (30, 1, N'Ramesh', N'Architect', N'ramesh@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 0, 8)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (31, 1, N'Rajesh M', N'Project manager', N'mag@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 1, 8)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (32, 1, N'Ramesh', N'Architect', N'ramesh@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 1, 8)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (33, 1, N'Rajesh M', N'Project manager', N'mag@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 0, 9)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (34, 1, N'Ramesh', N'Architect', N'ramesh@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 0, 9)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (35, 1, N'Rajesh M', N'Project manager', N'mag@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 1, 9)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (36, 1, N'Ramesh', N'Architect', N'ramesh@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 1, 9)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (37, 1, N'Rajesh M', N'Project manager', N'mag@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 0, 10)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (38, 1, N'Ramesh', N'Architect', N'ramesh@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 0, 10)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (39, 1, N'Rajesh M', N'Project manager', N'mag@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 1, 10)
GO
INSERT [dbo].[Customer_Project_Team] ([Proj_Team_Id], [Proj_Id], [Name], [Designation], [Email_Id], [Phone], [ProfilePic], [IsClient], [CustomerId]) VALUES (40, 1, N'Ramesh', N'Architect', N'ramesh@slkgroup.com', N'222341111', N'/slk-hub/Images/sample_image.png', 1, 10)
GO
SET IDENTITY_INSERT [dbo].[Customer_Project_Team] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer_Projects] ON 
GO
INSERT [dbo].[Customer_Projects] ([Proj_Id], [Proj_Desc], [Cust_Id], [Year], [SLK_Champ], [Description], [Create_Date], [Update_Date]) VALUES (1, N'a banking project', 2, 2013, N'bruce', N'zzz xx ccc', CAST(N'2013-09-09T00:00:00.000' AS DateTime), CAST(N'2020-08-29T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Customer_Projects] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer_Timeline] ON 
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (1, N'Customer since - 1998', 1, CAST(N'2020-12-04T08:22:10.617' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (2, N'Industry - Automation-Solutions', 1, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (3, N'Projects 1 - Automation Engineering', 1, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (4, N'Projects 2 Industrial Wireless Technology', 1, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (5, N'Award - Operational Excellence', 1, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (6, N'Customer since - 1998', 2, CAST(N'2020-12-04T08:22:10.617' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (7, N'Industry - Automation-Solutions', 2, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (8, N'Projects 1 - Automation Engineering', 2, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (9, N'Projects 2 Industrial Wireless Technology', 2, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (10, N'Award - Operational Excellence', 2, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (11, N'Customer since - 1998', 3, CAST(N'2020-12-04T08:22:10.617' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (12, N'Industry - Automation-Solutions', 3, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (13, N'Projects 1 - Automation Engineering', 3, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (14, N'Projects 2 Industrial Wireless Technology', 3, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (15, N'Award - Operational Excellence', 3, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (16, N'Customer since - 1998', 4, CAST(N'2020-12-04T08:22:10.617' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (17, N'Industry - Automation-Solutions', 4, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (18, N'Projects 1 - Automation Engineering', 4, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (19, N'Projects 2 Industrial Wireless Technology', 4, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (20, N'Award - Operational Excellence', 4, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (21, N'Customer since - 1998', 5, CAST(N'2020-12-04T08:22:10.617' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (22, N'Industry - Automation-Solutions', 5, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (23, N'Projects 1 - Automation Engineering', 5, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (24, N'Projects 2 Industrial Wireless Technology', 5, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (25, N'Award - Operational Excellence', 5, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (26, N'Customer since - 1998', 6, CAST(N'2020-12-04T08:22:10.617' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (27, N'Industry - Automation-Solutions', 6, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (28, N'Projects 1 - Automation Engineering', 6, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (29, N'Projects 2 Industrial Wireless Technology', 6, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (30, N'Award - Operational Excellence', 6, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (31, N'Customer since - 1998', 7, CAST(N'2020-12-04T08:22:10.617' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (32, N'Industry - Automation-Solutions', 7, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (33, N'Projects 1 - Automation Engineering', 7, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (34, N'Projects 2 Industrial Wireless Technology', 7, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (35, N'Award - Operational Excellence', 7, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (36, N'Customer since - 1998', 8, CAST(N'2020-12-04T08:22:10.617' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (37, N'Industry - Automation-Solutions', 8, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (38, N'Projects 1 - Automation Engineering', 8, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (39, N'Projects 2 Industrial Wireless Technology', 8, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (40, N'Award - Operational Excellence', 8, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (41, N'Customer since - 1998', 9, CAST(N'2020-12-04T08:22:10.617' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (42, N'Industry - Automation-Solutions', 9, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (43, N'Projects 1 - Automation Engineering', 9, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (44, N'Projects 2 Industrial Wireless Technology', 9, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (45, N'Award - Operational Excellence', 9, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (46, N'Customer since - 1998', 10, CAST(N'2020-12-04T08:22:10.617' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (47, N'Industry - Automation-Solutions', 10, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (48, N'Projects 1 - Automation Engineering', 10, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (49, N'Projects 2 Industrial Wireless Technology', 10, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
INSERT [dbo].[Customer_Timeline] ([ID], [Timeline], [CustomerId], [CreateDate]) VALUES (50, N'Award - Operational Excellence', 10, CAST(N'2020-12-04T08:22:10.667' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Customer_Timeline] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 
GO
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (1, N'Emerson', N'Emerson', 2000, N'www.emerson.com', N'www.leaderemerson.com', N'www.productemerson.com', N'www.financeemerson.com', N'/slk-hub/Images/Emerson.png', N'Emerson', CAST(N'2013-09-09T00:00:00.000' AS DateTime), CAST(N'2020-08-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (2, N'Fifth Third Bank', N'Fifth Third Bank', 2003, N'www.fifththirdbank.com', N'www.leaderfifththirdbank.com', N'www.productfifththirdbank.com', N'www.financefifththirdbank.com', N'/slk-hub/Images/Fifth_Third.png', N'Fifth Third', CAST(N'2020-11-24T04:48:51.813' AS DateTime), CAST(N'2020-11-24T04:48:51.813' AS DateTime))
GO
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (3, N'M and T Bank', N'M & T Bank', 2006, N'www.mtbank.com', N'www.leadermtbank.com', N'www.productmtbank.com', N'www.financemtbank.com', N'/slk-hub/Images/MTBank.png', N'M&T Bank', CAST(N'2020-11-24T04:48:51.823' AS DateTime), CAST(N'2020-11-24T04:48:51.823' AS DateTime))
GO
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (4, N'Regions Bank', N'Regions Bank', 2006, N'www.regionsbank.com', N'www.leaderregionsbank.com', N'www.productRegionsbank.com', N'www.financeRegionsbank.com', N'/slk-hub/Images/Regions.jpg', N'Regions', CAST(N'2020-11-24T04:48:51.823' AS DateTime), CAST(N'2020-11-24T04:48:51.823' AS DateTime))
GO
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (5, N'First Tennessee', N'First Tennessee', 2019, N'www.voya.com', N'www.leaderVoya.com', N'www.productVoya.com', N'www.financeVoya.com', N'/slk-hub/Images/FirstTennessee.jpg', N'First Tennessee', CAST(N'2020-11-24T04:48:51.823' AS DateTime), CAST(N'2020-11-24T04:48:51.823' AS DateTime))
GO
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (6, N'FIS Worldpay', N'FIS Worldpay', 2000, N'www.FISWorldpay.com', N'www.leaderFISWorldpay.com', N'www.productFIS Worldpay.com', N'www.financeFIS Worldpay.com', N'/slk-hub/Images/FIS.png', N'FIS Worldpay', CAST(N'2013-09-09T00:00:00.000' AS DateTime), CAST(N'2020-08-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (7, N'Bank of Oklahoma', N'Bank of Oklahoma', 2003, N'www.BankofOklahoma.com', N'www.leaderBankofOklahoma.com', N'www.productBankofOklahoma.com', N'www.financeBankofOklahoma.com', N'/slk-hub/Images/Oklahoma.png', N'Bank of Oklahoma', CAST(N'2020-11-24T04:48:51.813' AS DateTime), CAST(N'2020-11-24T04:48:51.813' AS DateTime))
GO
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (8, N'Modine', N'Modine', 2006, N'www.Modine.com', N'www.leaderModine.com', N'www.productModine.com', N'www.financeModine.com', N'/slk-hub/Images/Modine.png', N'Modine', CAST(N'2020-11-24T04:48:51.823' AS DateTime), CAST(N'2020-11-24T04:48:51.823' AS DateTime))
GO
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (9, N'Voya', N'Voya', 2006, N'www.Voya.com', N'www.leaderVoya.com', N'www.productVoya.com', N'www.financeVoya.com', N'/slk-hub/Images/Voya.png', N'Voya', CAST(N'2020-11-24T04:48:51.823' AS DateTime), CAST(N'2020-11-24T04:48:51.823' AS DateTime))
GO
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (10, N'CNA', N'CNA', 2019, N'www.CNA.com', N'www.leaderCNA.com', N'www.productCNA.com', N'www.financeCNA.com', N'/slk-hub/Images/CNA.jpg', N'CNA', CAST(N'2020-11-24T04:48:51.823' AS DateTime), CAST(N'2020-11-24T04:48:51.823' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee_Career_Growth] ON 
GO
INSERT [dbo].[Employee_Career_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (1, N'100', N'Maya Shenoy', N'/slk-hub/Images/temp_image1.png', N'Fresher from JCE, Mysore', N'2001', 1, 0, CAST(N'2020-12-02T08:31:47.790' AS DateTime))
GO
INSERT [dbo].[Employee_Career_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (2, N'100', N'Maya Shenoy', N'/slk-hub/Images/temp_image1.png', N'Lead – BPM Practice', N'2005', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_Career_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (3, N'100', N'Maya Shenoy', N'/slk-hub/Images/temp_image1.png', N'CBU Head', N'2010', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_Career_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (4, N'100', N'Maya Shenoy', N'/slk-hub/Images/temp_image1.png', N'Head – Industry Solutions', N'2016', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_Career_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (5, N'100', N'Maya Shenoy', N'/slk-hub/Images/temp_image1.png', N'VP & Head Strategic Programs', N'2020', 1, 1, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_Career_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (6, N'101', N'Harsha Maddula', N'/slk-hub/Images/temp_image2.png', N'Fresher from JCE, Mysore', N'2001', 1, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_Career_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (7, N'101', N'Harsha Maddula', N'/slk-hub/Images/temp_image2.png', N'Lead – BPM Practice', N'2005', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_Career_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (8, N'101', N'Harsha Maddula', N'/slk-hub/Images/temp_image2.png', N'CBU Head', N'2010', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_Career_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (9, N'101', N'Harsha Maddula', N'/slk-hub/Images/temp_image2.png', N'Head – Industry Solutions', N'2016', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_Career_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (10, N'101', N'Harsha Maddula', N'/slk-hub/Images/temp_image2.png', N'VP & Head Strategic Programs', N'2020', 1, 1, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_Career_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (11, N'102', N'Armaan Suhail', N'/slk-hub/Images/temp_image3.png', N'Fresher from JCE, Mysore', N'2001', 1, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_Career_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (12, N'102', N'Armaan Suhail', N'/slk-hub/Images/temp_image3.png', N'Lead – BPM Practice', N'2005', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_Career_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (13, N'102', N'Armaan Suhail', N'/slk-hub/Images/temp_image3.png', N'CBU Head', N'2010', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_Career_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (14, N'102', N'Armaan Suhail', N'/slk-hub/Images/temp_image3.png', N'Head – Industry Solutions', N'2016', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_Career_Growth] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (15, N'102', N'Armaan Suhail', N'/slk-hub/Images/temp_image3.png', N'VP & Head Strategic Programs', N'2020', 1, 1, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Employee_Career_Growth] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee_External_Experience] ON 
GO
INSERT [dbo].[Employee_External_Experience] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (1, N'100', N'Maya Shenoy', N'/slk-hub/Images/temp_image1.png', N'Fresher from JCE, Mysore', N'2001', 1, 0, CAST(N'2020-12-02T08:31:47.790' AS DateTime))
GO
INSERT [dbo].[Employee_External_Experience] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (2, N'100', N'Maya Shenoy', N'/slk-hub/Images/temp_image1.png', N'Lead – BPM Practice', N'2005', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_External_Experience] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (3, N'100', N'Maya Shenoy', N'/slk-hub/Images/temp_image1.png', N'CBU Head', N'2010', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_External_Experience] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (4, N'100', N'Maya Shenoy', N'/slk-hub/Images/temp_image1.png', N'Head – Industry Solutions', N'2016', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_External_Experience] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (5, N'100', N'Maya Shenoy', N'/slk-hub/Images/temp_image1.png', N'VP & Head Strategic Programs', N'2020', 1, 1, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_External_Experience] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (6, N'101', N'Harsha Maddula', N'/slk-hub/Images/temp_image2.png', N'Fresher from JCE, Mysore', N'2001', 1, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_External_Experience] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (7, N'101', N'Harsha Maddula', N'/slk-hub/Images/temp_image2.png', N'Lead – BPM Practice', N'2005', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_External_Experience] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (8, N'101', N'Harsha Maddula', N'/slk-hub/Images/temp_image2.png', N'CBU Head', N'2010', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_External_Experience] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (9, N'101', N'Harsha Maddula', N'/slk-hub/Images/temp_image2.png', N'Head – Industry Solutions', N'2016', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_External_Experience] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (10, N'101', N'Harsha Maddula', N'/slk-hub/Images/temp_image2.png', N'VP & Head Strategic Programs', N'2020', 1, 1, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_External_Experience] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (11, N'102', N'Armaan Suhail', N'/slk-hub/Images/temp_image3.png', N'Fresher from JCE, Mysore', N'2001', 1, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_External_Experience] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (12, N'102', N'Armaan Suhail', N'/slk-hub/Images/temp_image3.png', N'Lead – BPM Practice', N'2005', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_External_Experience] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (13, N'102', N'Armaan Suhail', N'/slk-hub/Images/temp_image3.png', N'CBU Head', N'2010', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_External_Experience] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (14, N'102', N'Armaan Suhail', N'/slk-hub/Images/temp_image3.png', N'Head – Industry Solutions', N'2016', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_External_Experience] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (15, N'102', N'Armaan Suhail', N'/slk-hub/Images/temp_image3.png', N'VP & Head Strategic Programs', N'2020', 1, 1, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Employee_External_Experience] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee_Journey_Path] ON 
GO
INSERT [dbo].[Employee_Journey_Path] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (1, N'100', N'Maya Shenoy', N'../.././Images/temp_image1.png', N'Fresher from JCE, Mysore', N'2001', 1, 0, CAST(N'2020-12-02T08:31:47.790' AS DateTime))
GO
INSERT [dbo].[Employee_Journey_Path] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (2, N'100', N'Maya Shenoy', N'../.././Images/temp_image1.png', N'Lead – BPM Practice', N'2005', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_Journey_Path] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (3, N'100', N'Maya Shenoy', N'../.././Images/temp_image1.png', N'CBU Head', N'2010', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_Journey_Path] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (4, N'100', N'Maya Shenoy', N'../.././Images/temp_image1.png', N'Head – Industry Solutions', N'2016', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_Journey_Path] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (5, N'100', N'Maya Shenoy', N'../.././Images/temp_image1.png', N'VP & Head Strategic Programs', N'2020', 1, 1, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_Journey_Path] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (6, N'101', N'Harsha Maddula', N'../.././Images/temp_image2.png', N'Fresher from JCE, Mysore', N'2001', 1, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_Journey_Path] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (7, N'101', N'Harsha Maddula', N'../.././Images/temp_image2.png', N'Lead – BPM Practice', N'2005', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_Journey_Path] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (8, N'101', N'Harsha Maddula', N'../.././Images/temp_image2.png', N'CBU Head', N'2010', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_Journey_Path] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (9, N'101', N'Harsha Maddula', N'../.././Images/temp_image2.png', N'Head – Industry Solutions', N'2016', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_Journey_Path] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (10, N'101', N'Harsha Maddula', N'../.././Images/temp_image2.png', N'VP & Head Strategic Programs', N'2020', 1, 1, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_Journey_Path] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (11, N'102', N'Armaan Suhail', N'../.././Images/temp_image3.png', N'Fresher from JCE, Mysore', N'2001', 1, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_Journey_Path] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (12, N'102', N'Armaan Suhail', N'../.././Images/temp_image3.png', N'Lead – BPM Practice', N'2005', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_Journey_Path] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (13, N'102', N'Armaan Suhail', N'../.././Images/temp_image3.png', N'CBU Head', N'2010', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_Journey_Path] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (14, N'102', N'Armaan Suhail', N'../.././Images/temp_image3.png', N'Head – Industry Solutions', N'2016', 0, 0, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
INSERT [dbo].[Employee_Journey_Path] ([ID], [Employee_Id], [Employee_Name], [Image], [Title], [JourneyYear], [Highlight], [Star], [Create_Date]) VALUES (15, N'102', N'Armaan Suhail', N'../.././Images/temp_image3.png', N'VP & Head Strategic Programs', N'2020', 1, 1, CAST(N'2020-12-02T08:31:47.793' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Employee_Journey_Path] OFF
GO
SET IDENTITY_INSERT [dbo].[Ethos_Culture] ON 
GO
INSERT [dbo].[Ethos_Culture] ([Ethos_Culture_Id], [Name], [Doc_Path], [Culture_Type], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (1, N'video 1', N'/slk-hub/Videos/sample_video.mp4', N'Innovation', CAST(N'2020-12-12T00:00:00.000' AS DateTime), CAST(N'2020-01-12T00:00:00.000' AS DateTime), 12)
GO
INSERT [dbo].[Ethos_Culture] ([Ethos_Culture_Id], [Name], [Doc_Path], [Culture_Type], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (2, N'video 2', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Innovation', CAST(N'2020-12-12T00:00:00.000' AS DateTime), CAST(N'2020-01-12T00:00:00.000' AS DateTime), 12)
GO
INSERT [dbo].[Ethos_Culture] ([Ethos_Culture_Id], [Name], [Doc_Path], [Culture_Type], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (3, N'video 3', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Innovation', CAST(N'2020-12-12T00:00:00.000' AS DateTime), CAST(N'2020-01-12T00:00:00.000' AS DateTime), 12)
GO
INSERT [dbo].[Ethos_Culture] ([Ethos_Culture_Id], [Name], [Doc_Path], [Culture_Type], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (4, N'video 4', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Innovation', CAST(N'2020-12-12T00:00:00.000' AS DateTime), CAST(N'2020-01-12T00:00:00.000' AS DateTime), 12)
GO
INSERT [dbo].[Ethos_Culture] ([Ethos_Culture_Id], [Name], [Doc_Path], [Culture_Type], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (5, N'video 1', N'/slk-hub/Videos/sample_video.mp4', N'Unique', CAST(N'2020-03-12T00:00:00.000' AS DateTime), CAST(N'2020-04-12T00:00:00.000' AS DateTime), 23)
GO
INSERT [dbo].[Ethos_Culture] ([Ethos_Culture_Id], [Name], [Doc_Path], [Culture_Type], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (6, N'video 2', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Unique', CAST(N'2020-03-12T00:00:00.000' AS DateTime), CAST(N'2020-04-12T00:00:00.000' AS DateTime), 23)
GO
INSERT [dbo].[Ethos_Culture] ([Ethos_Culture_Id], [Name], [Doc_Path], [Culture_Type], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (7, N'video 3', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Unique', CAST(N'2020-03-12T00:00:00.000' AS DateTime), CAST(N'2020-04-12T00:00:00.000' AS DateTime), 23)
GO
INSERT [dbo].[Ethos_Culture] ([Ethos_Culture_Id], [Name], [Doc_Path], [Culture_Type], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (8, N'video 4', N'/slk-hub/Videos/sample_video.mp4', N'Unique', CAST(N'2020-03-12T00:00:00.000' AS DateTime), CAST(N'2020-04-12T00:00:00.000' AS DateTime), 23)
GO
INSERT [dbo].[Ethos_Culture] ([Ethos_Culture_Id], [Name], [Doc_Path], [Culture_Type], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (9, N'video 1', N'/slk-hub/Videos/sample_video.mp4', N'Fun', CAST(N'2020-03-12T00:00:00.000' AS DateTime), CAST(N'2020-04-12T00:00:00.000' AS DateTime), 23)
GO
INSERT [dbo].[Ethos_Culture] ([Ethos_Culture_Id], [Name], [Doc_Path], [Culture_Type], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (10, N'video 2', N'/slk-hub/Videos/sample_video.mp4', N'Fun', CAST(N'2020-03-12T00:00:00.000' AS DateTime), CAST(N'2020-04-12T00:00:00.000' AS DateTime), 23)
GO
INSERT [dbo].[Ethos_Culture] ([Ethos_Culture_Id], [Name], [Doc_Path], [Culture_Type], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (11, N'video 3', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Fun', CAST(N'2020-03-12T00:00:00.000' AS DateTime), CAST(N'2020-04-12T00:00:00.000' AS DateTime), 23)
GO
INSERT [dbo].[Ethos_Culture] ([Ethos_Culture_Id], [Name], [Doc_Path], [Culture_Type], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (12, N'video 4', N'/slk-hub/Videos/sample-mp4-file.mp4', N'Fun', CAST(N'2020-03-12T00:00:00.000' AS DateTime), CAST(N'2020-04-12T00:00:00.000' AS DateTime), 23)
GO
SET IDENTITY_INSERT [dbo].[Ethos_Culture] OFF
GO
SET IDENTITY_INSERT [dbo].[Evolution_Offices_Documents] ON 
GO
INSERT [dbo].[Evolution_Offices_Documents] ([Doc_ID], [Name], [Year], [Doc_Path], [Create_Date], [Last_View_Date], [Total_Views], [Description]) VALUES (1, N'The Beginning', 2010, N'/slk-hub/Videos/sample-mp4-file.mp4', CAST(N'2020-01-12T00:00:00.000' AS DateTime), CAST(N'2020-09-12T00:00:00.000' AS DateTime), 150, N'An acquisition by SLK of a niche Digital Creative Experience Company Based on CA, USA')
GO
INSERT [dbo].[Evolution_Offices_Documents] ([Doc_ID], [Name], [Year], [Doc_Path], [Create_Date], [Last_View_Date], [Total_Views], [Description]) VALUES (2, N'Vyalikaval', 2010, N'/slk-hub/Videos/sample-mp4-file.mp4', CAST(N'2020-01-12T00:00:00.000' AS DateTime), CAST(N'2020-09-12T00:00:00.000' AS DateTime), 150, N'An acquisition by SLK of a niche Digital Creative Experience Company Based on CA, USA')
GO
INSERT [dbo].[Evolution_Offices_Documents] ([Doc_ID], [Name], [Year], [Doc_Path], [Create_Date], [Last_View_Date], [Total_Views], [Description]) VALUES (3, N'Niran Arcade', 2010, N'/slk-hub/Videos/sample-mp4-file.mp4', CAST(N'2020-01-12T00:00:00.000' AS DateTime), CAST(N'2020-09-12T00:00:00.000' AS DateTime), 150, N'An acquisition by SLK of a niche Digital Creative Experience Company Based on CA, USA')
GO
INSERT [dbo].[Evolution_Offices_Documents] ([Doc_ID], [Name], [Year], [Doc_Path], [Create_Date], [Last_View_Date], [Total_Views], [Description]) VALUES (4, N'Vacuum House', 2010, N'/slk-hub/Videos/sample-mp4-file.mp4', CAST(N'2020-01-12T00:00:00.000' AS DateTime), CAST(N'2020-09-12T00:00:00.000' AS DateTime), 150, N'An acquisition by SLK of a niche Digital Creative Experience Company Based on CA, USA')
GO
INSERT [dbo].[Evolution_Offices_Documents] ([Doc_ID], [Name], [Year], [Doc_Path], [Create_Date], [Last_View_Date], [Total_Views], [Description]) VALUES (5, N'SLK 1, Yelahanka', 2010, N'/slk-hub/Videos/sample-mp4-file.mp4', CAST(N'2020-01-12T00:00:00.000' AS DateTime), CAST(N'2020-09-12T00:00:00.000' AS DateTime), 150, N'An acquisition by SLK of a niche Digital Creative Experience Company Based on CA, USA')
GO
SET IDENTITY_INSERT [dbo].[Evolution_Offices_Documents] OFF
GO
SET IDENTITY_INSERT [dbo].[Evolution_Strategic_Focus] ON 
GO
INSERT [dbo].[Evolution_Strategic_Focus] ([Strategic_Id], [Description], [Year], [Doc_Path], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (1, N'Establish SLK Delivery Engine Acquire First Customer', 2010, N'/slk-hub/Videos/sample-mp4-file.mp4', CAST(N'2020-01-12T00:00:00.000' AS DateTime), CAST(N'2020-09-12T00:00:00.000' AS DateTime), 150)
GO
INSERT [dbo].[Evolution_Strategic_Focus] ([Strategic_Id], [Description], [Year], [Doc_Path], [Create_Date], [Last_View_Date], [Total_Views]) VALUES (2, N'Scale Across Customers Large Programs  CMM Certification', 2010, N'/slk-hub/Videos/sample-mp4-file.mp4', CAST(N'2020-01-12T00:00:00.000' AS DateTime), CAST(N'2020-09-12T00:00:00.000' AS DateTime), 150)
GO
SET IDENTITY_INSERT [dbo].[Evolution_Strategic_Focus] OFF
GO
SET IDENTITY_INSERT [dbo].[Impact] ON 
GO
INSERT [dbo].[Impact] ([Impact_id], [CustomerId], [CustomerLogo], [Solution], [SLK_Champion], [Title], [Type], [Keywords], [ImpactType], [Impact_Year]) VALUES (1, N'1', N'.././Images/emerson1.png', N'Inflation Model', N'Nagesh KP', N'Case Study: Inflation Model', N'Type: New Solution/Application', N'Procurement,Forecast,Data Analysis,Reports,Under Estimation', N'Simple', N'2001')
GO
INSERT [dbo].[Impact] ([Impact_id], [CustomerId], [CustomerLogo], [Solution], [SLK_Champion], [Title], [Type], [Keywords], [ImpactType], [Impact_Year]) VALUES (2, N'1', N'.././Images/emerson1.png', N'Product Configurator', N'Vijay KC, Zikriyar Khan, Vinayak Kamath, Niranjan', N'Case Study: Product Configurator', N'Type: New Solution/Application', N'Business Engineering,Complex Data Modelling,Complex Algorithms,BOM,Digital,Solution Standardization', N'Simple', N'2001')
GO
INSERT [dbo].[Impact] ([Impact_id], [CustomerId], [CustomerLogo], [Solution], [SLK_Champion], [Title], [Type], [Keywords], [ImpactType], [Impact_Year]) VALUES (3, N'1', N'.././Images/emerson1.png', N'Symphony', N'SN Adiga', N'Case Study: Symphony', N'Type: Transition/Stabilize/Reengineer', N'Competitive Challenge,Business Critical,Transition from Bad Shape,Prove SLK Ability,Stabilize,Reengineer', N'Complex', N'2001')
GO
SET IDENTITY_INSERT [dbo].[Impact] OFF
GO
SET IDENTITY_INSERT [dbo].[Learnings] ON 
GO
INSERT [dbo].[Learnings] ([Learning_Id], [Name], [Year], [Doc_Path], [Create_Date], [Last_View_Date], [Total_Views], [Description]) VALUES (1, N'Big Block', 2010, N'/slk-hub/Videos/sample-mp4-file.mp4', CAST(N'2020-01-12T00:00:00.000' AS DateTime), CAST(N'2020-09-12T00:00:00.000' AS DateTime), 100, N'An acquisition by SLK of a niche Digital Creative Experience Company Based on CA, USA')
GO
INSERT [dbo].[Learnings] ([Learning_Id], [Name], [Year], [Doc_Path], [Create_Date], [Last_View_Date], [Total_Views], [Description]) VALUES (2, N'Data Mining', 2008, N'/slk-hub/Videos/sample-mp4-file.mp4', CAST(N'2020-01-12T00:00:00.000' AS DateTime), CAST(N'2020-09-12T00:00:00.000' AS DateTime), 150, N'An acquisition by SLK of a niche Digital Creative Experience Company Based on CA, USA')
GO
SET IDENTITY_INSERT [dbo].[Learnings] OFF
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
ALTER TABLE [dbo].[Customer_Project_Team] ADD  CONSTRAINT [DF_Customer_Project_Team_CustomerId]  DEFAULT ((0)) FOR [CustomerId]
GO
