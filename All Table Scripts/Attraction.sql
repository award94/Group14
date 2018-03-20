USE [Zoo]
GO

/****** Object:  Table [dbo].[ATTRACTION]    Script Date: 3/20/2018 11:22:50 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ATTRACTION](
	[ID] [int] NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Open_closed] [bit] NOT NULL,
	[Open_closed_date] [date] NOT NULL,
	[Manager] [int] NOT NULL,
	[Manager_date] [date] NOT NULL,
	[Description] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ATTRACTION]  WITH CHECK ADD  CONSTRAINT [FK_AttractionManagedBy] FOREIGN KEY([Manager])
REFERENCES [dbo].[EMPLOYEE] ([ID])
GO

ALTER TABLE [dbo].[ATTRACTION] CHECK CONSTRAINT [FK_AttractionManagedBy]
GO

