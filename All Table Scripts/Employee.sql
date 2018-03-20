USE [Zoo]
GO

/****** Object:  Table [dbo].[EMPLOYEE]    Script Date: 3/20/2018 11:27:35 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EMPLOYEE](
	[Fname] [varchar](15) NOT NULL,
	[Mname] [varchar](15) NULL,
	[Lname] [varchar](15) NOT NULL,
	[ID] [int] NOT NULL,
	[Title] [int] NOT NULL,
	[Hire_Date] [date] NOT NULL,
	[Street] [varchar](25) NULL,
	[City] [varchar](10) NULL,
	[Zip] [varchar](5) NULL,
	[State] [varchar](20) NULL,
	[Email] [varchar](30) NOT NULL,
	[Phone#] [int] NOT NULL,
	[Gender] [char](1) NOT NULL,
	[Store] [int] NULL,
	[Attraction] [int] NULL,
 CONSTRAINT [PK__EMPLOYEE__3214EC2795A9DA09] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[EMPLOYEE]  WITH CHECK ADD  CONSTRAINT [FK_EmpTitleType] FOREIGN KEY([Title])
REFERENCES [dbo].[TITLE_TYPE] ([ID])
GO

ALTER TABLE [dbo].[EMPLOYEE] CHECK CONSTRAINT [FK_EmpTitleType]
GO

ALTER TABLE [dbo].[EMPLOYEE]  WITH CHECK ADD  CONSTRAINT [FK_EmpWorksAtAtt] FOREIGN KEY([Attraction])
REFERENCES [dbo].[ATTRACTION] ([ID])
GO

ALTER TABLE [dbo].[EMPLOYEE] CHECK CONSTRAINT [FK_EmpWorksAtAtt]
GO

ALTER TABLE [dbo].[EMPLOYEE]  WITH CHECK ADD  CONSTRAINT [FK_EmpWorksInStore] FOREIGN KEY([Store])
REFERENCES [dbo].[STORE] ([ID])
GO

ALTER TABLE [dbo].[EMPLOYEE] CHECK CONSTRAINT [FK_EmpWorksInStore]
GO

ALTER TABLE [dbo].[EMPLOYEE]  WITH CHECK ADD  CONSTRAINT [CK_EMPLOYEE.Gender] CHECK  (([Gender]='M' OR [Gender]='F'))
GO

ALTER TABLE [dbo].[EMPLOYEE] CHECK CONSTRAINT [CK_EMPLOYEE.Gender]
GO

