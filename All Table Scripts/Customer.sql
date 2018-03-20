USE [Zoo]
GO

/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 3/20/2018 11:27:23 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CUSTOMER](
	[ID] [int] NOT NULL,
	[Fname] [varchar](30) NOT NULL,
	[Mname] [varchar](30) NULL,
	[Lname] [varchar](30) NOT NULL,
	[StreetAddress] [varchar](50) NULL,
	[CityAddress] [varchar](30) NULL,
	[ZipAddress] [int] NULL,
	[StateAddress] [varchar](20) NULL,
	[Phone] [bigint] NULL,
	[Email] [varchar](50) NOT NULL,
	[MembershipType] [int] NOT NULL,
	[ExpirationDate] [date] NOT NULL,
 CONSTRAINT [PK__CUSTOMER__3214EC27DC155E22] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__CUSTOMER__3214EC26D3E0A994] UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CUSTOMER]  WITH CHECK ADD  CONSTRAINT [FK_MembershipType] FOREIGN KEY([MembershipType])
REFERENCES [dbo].[MEMBERSHIP_TYPE] ([ID])
GO

ALTER TABLE [dbo].[CUSTOMER] CHECK CONSTRAINT [FK_MembershipType]
GO

