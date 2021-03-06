USE [SLK_HUB_DEV]
GO
/****** Object:  Table [dbo].[Employee_Journey_Path]    Script Date: 12/3/2020 9:35:11 AM ******/
DROP TABLE [dbo].[Employee_Journey_Path]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 12/3/2020 9:35:11 AM ******/
DROP TABLE [dbo].[Customers]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 12/3/2020 9:35:11 AM ******/
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
/****** Object:  Table [dbo].[Employee_Journey_Path]    Script Date: 12/3/2020 9:35:12 AM ******/
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
SET IDENTITY_INSERT [dbo].[Customers] ON 
GO
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (1, N'Emerson', N'Emerson', 2000, N'www.emerson.com', N'www.leaderemerson.com', N'www.productemerson.com', N'www.financeemerson.com', N'.././Images/Emerson.jpg', N'Emerson', CAST(N'2013-09-09T00:00:00.000' AS DateTime), CAST(N'2020-08-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (2, N'Fifth Third Bank', N'Fifth Third Bank', 2003, N'www.fifththirdbank.com', N'www.leaderfifththirdbank.com', N'www.productfifththirdbank.com', N'www.financefifththirdbank.com', N'.././Images/Fifth_Third.png', N'Fifth Third', CAST(N'2020-11-24T04:48:51.813' AS DateTime), CAST(N'2020-11-24T04:48:51.813' AS DateTime))
GO
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (3, N'M & T Bank', N'M & T Bank', 2006, N'www.mtbank.com', N'www.leadermtbank.com', N'www.productmtbank.com', N'www.financemtbank.com', N'.././Images/MTBank.jpg', N'M&T Bank', CAST(N'2020-11-24T04:48:51.823' AS DateTime), CAST(N'2020-11-24T04:48:51.823' AS DateTime))
GO
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (4, N'Regions Bank', N'Regions Bank', 2006, N'www.regionsbank.com', N'www.leaderregionsbank.com', N'www.productRegionsbank.com', N'www.financeRegionsbank.com', N'.././Images/Regions.jpg', N'Regions', CAST(N'2020-11-24T04:48:51.823' AS DateTime), CAST(N'2020-11-24T04:48:51.823' AS DateTime))
GO
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (5, N'First Tennessee', N'First Tennessee', 2019, N'www.voya.com', N'www.leaderVoya.com', N'www.productVoya.com', N'www.financeVoya.com', N'.././Images/Emerson.jpg', N'First Tennessee', CAST(N'2020-11-24T04:48:51.823' AS DateTime), CAST(N'2020-11-24T04:48:51.823' AS DateTime))
GO
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (6, N'FIS Worldpay', N'FIS Worldpay', 2000, N'www.FISWorldpay.com', N'www.leaderFISWorldpay.com', N'www.productFIS Worldpay.com', N'www.financeFIS Worldpay.com', N'.././Images/FIS.jpg', N'FIS Worldpay', CAST(N'2013-09-09T00:00:00.000' AS DateTime), CAST(N'2020-08-29T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (7, N'Bank of Oklahoma', N'Bank of Oklahoma', 2003, N'www.BankofOklahoma.com', N'www.leaderBankofOklahoma.com', N'www.productBankofOklahoma.com', N'www.financeBankofOklahoma.com', N'.././Images/Fifth_Third.png', N'Bank of Oklahoma', CAST(N'2020-11-24T04:48:51.813' AS DateTime), CAST(N'2020-11-24T04:48:51.813' AS DateTime))
GO
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (8, N'Modine', N'Modine', 2006, N'www.Modine.com', N'www.leaderModine.com', N'www.productModine.com', N'www.financeModine.com', N'.././Images/Modine.jpg', N'Modine', CAST(N'2020-11-24T04:48:51.823' AS DateTime), CAST(N'2020-11-24T04:48:51.823' AS DateTime))
GO
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (9, N'Voya', N'Voya', 2006, N'www.Voya.com', N'www.leaderVoya.com', N'www.productVoya.com', N'www.financeVoya.com', N'.././Images/Voya.png', N'Voya', CAST(N'2020-11-24T04:48:51.823' AS DateTime), CAST(N'2020-11-24T04:48:51.823' AS DateTime))
GO
INSERT [dbo].[Customers] ([Cust_Id], [Cust_Name], [Cust_Desc], [Year_Of_Engagement], [Website_Link], [Leadership_Team_Link], [Products_Link], [Financials_Link], [Logo_Path], [Cust_Industry], [Create_Date], [Update_Date]) VALUES (10, N'CNA', N'CNA', 2019, N'www.CNA.com', N'www.leaderCNA.com', N'www.productCNA.com', N'www.financeCNA.com', N'.././Images/CNA.jpg', N'CNA', CAST(N'2020-11-24T04:48:51.823' AS DateTime), CAST(N'2020-11-24T04:48:51.823' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Customers] OFF
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
