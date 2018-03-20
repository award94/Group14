USE [Zoo]
GO

/****** Object:  Table [dbo].[PRODUCT]    Script Date: 3/20/2018 11:28:12 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PRODUCT](
	[ID] [int] NOT NULL,
	[Name] [varchar](15) NOT NULL,
	[Quantity] [int] NULL,
	[OnOrder] [int] NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[Description] [varchar](30) NULL,
 CONSTRAINT [PK__Product__3214EC279B0C590A] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

