USE [rebill]
GO
/****** Object:  Table [dbo].[bill]    Script Date: 2021/2/25 21:11:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[explain] [varchar](20) NOT NULL,
	[money] [varchar](20) NOT NULL,
	[createtime] [varchar](20) NOT NULL,
	[remark] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[bill] ON 

INSERT [dbo].[bill] ([id], [explain], [money], [createtime], [remark]) VALUES (11, N'3', N'3', N'3', N'3')
INSERT [dbo].[bill] ([id], [explain], [money], [createtime], [remark]) VALUES (12, N'4', N'4', N'4', N'4')
SET IDENTITY_INSERT [dbo].[bill] OFF
