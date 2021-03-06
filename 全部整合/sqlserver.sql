USE [.net集合]
GO
/****** Object:  Table [dbo].[Goods]    Script Date: 2021/3/5 13:12:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Goods](
	[Stock] [nchar](10) NULL,
	[GoodName] [nchar](10) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[price] [int] NULL,
	[mprice] [int] NULL,
	[num] [int] NULL,
	[TYPE] [int] NULL,
 CONSTRAINT [PK_Goods] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[member]    Script Date: 2021/3/5 13:12:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[member](
	[mId] [int] IDENTITY(1,1) NOT NULL,
	[mName] [varchar](20) NULL,
	[mphone] [int] NULL,
 CONSTRAINT [PK_member] PRIMARY KEY CLUSTERED 
(
	[mId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeInfo]    Script Date: 2021/3/5 13:12:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeInfo](
	[TypeId] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nchar](10) NULL,
 CONSTRAINT [PK_TypeInfo] PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 2021/3/5 13:12:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserName] [nchar](10) NULL,
	[UserPwd] [nchar](10) NULL,
	[Picture] [nchar](100) NULL,
	[Sex] [nchar](10) NULL,
	[Hobby] [nchar](10) NULL,
	[TypeId] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Goods] ON 

INSERT [dbo].[Goods] ([Stock], [GoodName], [Id], [price], [mprice], [num], [TYPE]) VALUES (N'-1        ', N'地方        ', 1005, 87, 45, 42, 1)
INSERT [dbo].[Goods] ([Stock], [GoodName], [Id], [price], [mprice], [num], [TYPE]) VALUES (N'1         ', N'java      ', 1008, 567, 435, 122, 1)
INSERT [dbo].[Goods] ([Stock], [GoodName], [Id], [price], [mprice], [num], [TYPE]) VALUES (N'1         ', N'请问        ', 2003, 65, 12, 998, 1)
INSERT [dbo].[Goods] ([Stock], [GoodName], [Id], [price], [mprice], [num], [TYPE]) VALUES (N'888       ', N'请问        ', 2004, 546, 64, NULL, NULL)
INSERT [dbo].[Goods] ([Stock], [GoodName], [Id], [price], [mprice], [num], [TYPE]) VALUES (N'-1        ', N' 为        ', 2005, 897, 123, 554, NULL)
SET IDENTITY_INSERT [dbo].[Goods] OFF
SET IDENTITY_INSERT [dbo].[member] ON 

INSERT [dbo].[member] ([mId], [mName], [mphone]) VALUES (1, N'张三', 123)
INSERT [dbo].[member] ([mId], [mName], [mphone]) VALUES (2, N'李四', 455)
INSERT [dbo].[member] ([mId], [mName], [mphone]) VALUES (3, N'王五', 213)
SET IDENTITY_INSERT [dbo].[member] OFF
SET IDENTITY_INSERT [dbo].[TypeInfo] ON 

INSERT [dbo].[TypeInfo] ([TypeId], [TypeName]) VALUES (1, N'老师        ')
INSERT [dbo].[TypeInfo] ([TypeId], [TypeName]) VALUES (2, N'学生        ')
SET IDENTITY_INSERT [dbo].[TypeInfo] OFF
INSERT [dbo].[User] ([UserName], [UserPwd], [Picture], [Sex], [Hobby], [TypeId]) VALUES (N'大大啊       ', N'1         ', NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([UserName], [UserPwd], [Picture], [Sex], [Hobby], [TypeId]) VALUES (N'1         ', N'1         ', NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([UserName], [UserPwd], [Picture], [Sex], [Hobby], [TypeId]) VALUES (N'1         ', N'1         ', NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([UserName], [UserPwd], [Picture], [Sex], [Hobby], [TypeId]) VALUES (N'1         ', N'1         ', NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([UserName], [UserPwd], [Picture], [Sex], [Hobby], [TypeId]) VALUES (N'大大啊       ', N'1         ', NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([UserName], [UserPwd], [Picture], [Sex], [Hobby], [TypeId]) VALUES (N'大大啊       ', N'1         ', NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([UserName], [UserPwd], [Picture], [Sex], [Hobby], [TypeId]) VALUES (N'大大啊       ', N'1         ', NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([UserName], [UserPwd], [Picture], [Sex], [Hobby], [TypeId]) VALUES (N'大大啊       ', N'1         ', N'Form1.cs                                                                                            ', NULL, NULL, NULL)
INSERT [dbo].[User] ([UserName], [UserPwd], [Picture], [Sex], [Hobby], [TypeId]) VALUES (N'大大啊       ', N'1         ', N'WIN_20191113_21_30_11_Pro.jpg                                                                       ', NULL, NULL, NULL)
INSERT [dbo].[User] ([UserName], [UserPwd], [Picture], [Sex], [Hobby], [TypeId]) VALUES (N'大大啊       ', N'1         ', N'WIN_20191113_21_30_11_Pro.jpg                                                                       ', N'女         ', N'跳舞        ', NULL)
INSERT [dbo].[User] ([UserName], [UserPwd], [Picture], [Sex], [Hobby], [TypeId]) VALUES (N'大大啊       ', N'1         ', N'WIN_20191119_13_21_50_Pro.jpg                                                                       ', N'女         ', N'唱歌跳舞      ', 1)
INSERT [dbo].[User] ([UserName], [UserPwd], [Picture], [Sex], [Hobby], [TypeId]) VALUES (N'大大啊       ', N'1         ', N'                                                                                                    ', N'女         ', N'          ', 1)
