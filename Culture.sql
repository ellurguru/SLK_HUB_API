USE [SLK_HUB_DEV]
GO

/****** Object:  Table [dbo].[Ethos_Culture]    Script Date: 12/2/2020 12:48:29 PM ******/
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


