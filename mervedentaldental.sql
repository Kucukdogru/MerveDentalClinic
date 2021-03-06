USE [MerveDentalDental]
GO
/****** Object:  Table [dbo].[AP00]    Script Date: 13.11.2020 21:18:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AP00](
	[aid] [int] IDENTITY(1,1) NOT NULL,
	[pid] [nvarchar](11) NULL,
	[drid] [nvarchar](11) NULL,
	[date] [datetime] NULL,
 CONSTRAINT [PK_AP00] PRIMARY KEY CLUSTERED 
(
	[aid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AU00]    Script Date: 13.11.2020 21:18:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AU00](
	[auid] [int] NOT NULL,
	[auname] [nvarchar](20) NULL,
 CONSTRAINT [PK_AU00] PRIMARY KEY CLUSTERED 
(
	[auid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CL00]    Script Date: 13.11.2020 21:18:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CL00](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[cname] [nvarchar](50) NULL,
	[caddress] [nvarchar](max) NULL,
	[ctel] [nvarchar](11) NULL,
 CONSTRAINT [PK_CL00] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DR00]    Script Date: 13.11.2020 21:18:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DR00](
	[drid] [nvarchar](11) NOT NULL,
	[auid] [int] NULL,
	[drname] [nvarchar](15) NULL,
	[drsurname] [nvarchar](15) NULL,
	[drbranch] [nvarchar](30) NULL,
 CONSTRAINT [PK_DR00_Doctor] PRIMARY KEY CLUSTERED 
(
	[drid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DR01]    Script Date: 13.11.2020 21:18:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DR01](
	[cdrid] [int] IDENTITY(1,1) NOT NULL,
	[cid] [int] NULL,
	[drid] [nvarchar](11) NULL,
	[startdate] [date] NULL,
	[finishdate] [date] NULL,
 CONSTRAINT [PK_DR01] PRIMARY KEY CLUSTERED 
(
	[cdrid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DS00]    Script Date: 13.11.2020 21:18:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DS00](
	[did] [int] IDENTITY(1,1) NOT NULL,
	[dname] [nvarchar](10) NULL,
	[dstate] [nvarchar](30) NULL,
	[is_about] [bit] NULL,
 CONSTRAINT [PK_PT00_OtherDiseases] PRIMARY KEY CLUSTERED 
(
	[did] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DS01]    Script Date: 13.11.2020 21:18:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DS01](
	[ds_pt_id] [int] NOT NULL,
	[did] [int] NULL,
	[pid] [int] NULL,
 CONSTRAINT [PK_DS01] PRIMARY KEY CLUSTERED 
(
	[ds_pt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PT00]    Script Date: 13.11.2020 21:18:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PT00](
	[pid] [nvarchar](11) NOT NULL,
	[pname] [nvarchar](20) NULL,
	[psurname] [nvarchar](20) NULL,
 CONSTRAINT [PK_PT00_Patient] PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PT01]    Script Date: 13.11.2020 21:18:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PT01](
	[eid] [int] IDENTITY(1,1) NOT NULL,
	[pid] [nvarchar](11) NULL,
	[drid] [nvarchar](11) NULL,
	[edate] [datetime] NULL,
	[decision] [nvarchar](20) NULL,
 CONSTRAINT [PK_PT01] PRIMARY KEY CLUSTERED 
(
	[eid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PT02]    Script Date: 13.11.2020 21:18:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PT02](
	[tid] [int] IDENTITY(1,1) NOT NULL,
	[pid] [nvarchar](11) NULL,
	[drid] [nvarchar](11) NULL,
	[tname] [nvarchar](30) NULL,
	[tdate] [datetime] NULL,
	[tsession] [nvarchar](15) NULL,
 CONSTRAINT [PK_PTDR_Treatment] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AP00] ON 

INSERT [dbo].[AP00] ([aid], [pid], [drid], [date]) VALUES (1, N'2662626262', N'165161632', CAST(N'2018-12-25T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[AP00] OFF
INSERT [dbo].[DR00] ([drid], [auid], [drname], [drsurname], [drbranch]) VALUES (N'165161632', NULL, N'Merve', N'YILMAZ', N'Endodonti')
INSERT [dbo].[DR00] ([drid], [auid], [drname], [drsurname], [drbranch]) VALUES (N'6565635365', NULL, N'Merve', N'KÜÇÜKDOĞRU', N'Ortodonti')
SET IDENTITY_INSERT [dbo].[DS00] ON 

INSERT [dbo].[DS00] ([did], [dname], [dstate], [is_about]) VALUES (1, N'Tansiyon', N'Yüksek Tansiyon', NULL)
INSERT [dbo].[DS00] ([did], [dname], [dstate], [is_about]) VALUES (2, N'Şeker', N'Düşük Şeker', NULL)
INSERT [dbo].[DS00] ([did], [dname], [dstate], [is_about]) VALUES (3, N'Panik Atak', N'Orta', NULL)
SET IDENTITY_INSERT [dbo].[DS00] OFF
INSERT [dbo].[PT00] ([pid], [pname], [psurname]) VALUES (N'26262626', N'Merve', N'KÜÇÜK')
INSERT [dbo].[PT00] ([pid], [pname], [psurname]) VALUES (N'48307472724', N'Merve', N'KÜÇÜKDOĞRU')
INSERT [dbo].[PT00] ([pid], [pname], [psurname]) VALUES (N'48489625252', N'Ayşe', N'KUTLU')
SET IDENTITY_INSERT [dbo].[PT01] ON 

INSERT [dbo].[PT01] ([eid], [pid], [drid], [edate], [decision]) VALUES (1, N'2662626262', N'165161632', CAST(N'2018-12-25T00:00:00.000' AS DateTime), N'Kanal')
INSERT [dbo].[PT01] ([eid], [pid], [drid], [edate], [decision]) VALUES (2, N'48307472724', N'165161632', CAST(N'2019-02-12T22:09:00.000' AS DateTime), N'Dolgu')
SET IDENTITY_INSERT [dbo].[PT01] OFF
SET IDENTITY_INSERT [dbo].[PT02] ON 

INSERT [dbo].[PT02] ([tid], [pid], [drid], [tname], [tdate], [tsession]) VALUES (1, N'2662626262', N'165161632', N'Kanal', CAST(N'2018-10-24T00:00:00.000' AS DateTime), N'5')
SET IDENTITY_INSERT [dbo].[PT02] OFF
ALTER TABLE [dbo].[AP00]  WITH CHECK ADD  CONSTRAINT [FK_AP00_DR00] FOREIGN KEY([drid])
REFERENCES [dbo].[DR00] ([drid])
GO
ALTER TABLE [dbo].[AP00] CHECK CONSTRAINT [FK_AP00_DR00]
GO
ALTER TABLE [dbo].[AP00]  WITH CHECK ADD  CONSTRAINT [FK_AP00_PT00] FOREIGN KEY([pid])
REFERENCES [dbo].[PT00] ([pid])
GO
ALTER TABLE [dbo].[AP00] CHECK CONSTRAINT [FK_AP00_PT00]
GO
ALTER TABLE [dbo].[DR00]  WITH CHECK ADD  CONSTRAINT [FK_DR00_AU00] FOREIGN KEY([auid])
REFERENCES [dbo].[AU00] ([auid])
GO
ALTER TABLE [dbo].[DR00] CHECK CONSTRAINT [FK_DR00_AU00]
GO
ALTER TABLE [dbo].[DR01]  WITH CHECK ADD  CONSTRAINT [FK_DR01_CL00] FOREIGN KEY([cid])
REFERENCES [dbo].[CL00] ([cid])
GO
ALTER TABLE [dbo].[DR01] CHECK CONSTRAINT [FK_DR01_CL00]
GO
ALTER TABLE [dbo].[DR01]  WITH CHECK ADD  CONSTRAINT [FK_DR01_DR00] FOREIGN KEY([drid])
REFERENCES [dbo].[DR00] ([drid])
GO
ALTER TABLE [dbo].[DR01] CHECK CONSTRAINT [FK_DR01_DR00]
GO
ALTER TABLE [dbo].[PT01]  WITH CHECK ADD  CONSTRAINT [FK_PT01_DR00] FOREIGN KEY([drid])
REFERENCES [dbo].[DR00] ([drid])
GO
ALTER TABLE [dbo].[PT01] CHECK CONSTRAINT [FK_PT01_DR00]
GO
ALTER TABLE [dbo].[PT01]  WITH CHECK ADD  CONSTRAINT [FK_PT01_PT00] FOREIGN KEY([pid])
REFERENCES [dbo].[PT00] ([pid])
GO
ALTER TABLE [dbo].[PT01] CHECK CONSTRAINT [FK_PT01_PT00]
GO
ALTER TABLE [dbo].[PT02]  WITH CHECK ADD  CONSTRAINT [FK_PTDR02_Treatment_DR00_Doctor] FOREIGN KEY([drid])
REFERENCES [dbo].[DR00] ([drid])
GO
ALTER TABLE [dbo].[PT02] CHECK CONSTRAINT [FK_PTDR02_Treatment_DR00_Doctor]
GO
ALTER TABLE [dbo].[PT02]  WITH CHECK ADD  CONSTRAINT [FK_PTDR02_Treatment_PT00_Patient] FOREIGN KEY([pid])
REFERENCES [dbo].[PT00] ([pid])
GO
ALTER TABLE [dbo].[PT02] CHECK CONSTRAINT [FK_PTDR02_Treatment_PT00_Patient]
GO
