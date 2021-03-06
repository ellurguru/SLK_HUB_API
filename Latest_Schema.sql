USE [SLK_HUB_DEV]
GO
/****** Object:  Table [dbo].[Approval_Manager]    Script Date: 11/18/2020 12:23:27 PM ******/
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
/****** Object:  Table [dbo].[Categories]    Script Date: 11/18/2020 12:23:28 PM ******/
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
/****** Object:  Table [dbo].[Customer_Documents]    Script Date: 11/18/2020 12:23:28 PM ******/
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
/****** Object:  Table [dbo].[Customer_Journey]    Script Date: 11/18/2020 12:23:28 PM ******/
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
/****** Object:  Table [dbo].[Customer_Project_Team]    Script Date: 11/18/2020 12:23:28 PM ******/
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
/****** Object:  Table [dbo].[Customer_Projects]    Script Date: 11/18/2020 12:23:28 PM ******/
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
/****** Object:  Table [dbo].[Customers]    Script Date: 11/18/2020 12:23:28 PM ******/
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
/****** Object:  Table [dbo].[Employee_Journey_Path]    Script Date: 11/18/2020 12:23:29 PM ******/
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
/****** Object:  Table [dbo].[Evolution_Offices_Documents]    Script Date: 11/18/2020 12:23:29 PM ******/
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
/****** Object:  Table [dbo].[Evolution_Strategic_Focus]    Script Date: 11/18/2020 12:23:29 PM ******/
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
/****** Object:  Table [dbo].[Impact]    Script Date: 11/18/2020 12:23:29 PM ******/
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
/****** Object:  Table [dbo].[Learnings]    Script Date: 11/18/2020 12:23:29 PM ******/
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
/****** Object:  Table [dbo].[Stotefiles]    Script Date: 11/18/2020 12:23:29 PM ******/
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
/****** Object:  Table [dbo].[Subcategory]    Script Date: 11/18/2020 12:23:29 PM ******/
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
