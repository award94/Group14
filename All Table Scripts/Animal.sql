USE [Zoo]
GO

/****** Object:  Table [dbo].[ANIMAL]    Script Date: 3/20/2018 11:22:40 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ANIMAL](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Species] [nvarchar](30) NOT NULL,
	[Taxology] [nvarchar](40) NOT NULL,
	[Birth Location] [nvarchar](50) NULL,
	[Birth Date] [date] NULL,
	[Status] [nvarchar](20) NOT NULL,
	[Status_date] [date] NOT NULL,
	[Gender] [char](1) NOT NULL,
	[Height] [decimal](18, 0) NULL,
	[Weight] [decimal](18, 0) NULL,
	[Health] [nvarchar](30) NULL,
	[Health_date] [date] NULL,
	[Attraction] [int] NOT NULL,
 CONSTRAINT [PK_Animal] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ANIMAL]  WITH CHECK ADD  CONSTRAINT [FK_AnimalLivesIn] FOREIGN KEY([Attraction])
REFERENCES [dbo].[ATTRACTION] ([ID])
GO

ALTER TABLE [dbo].[ANIMAL] CHECK CONSTRAINT [FK_AnimalLivesIn]
GO

