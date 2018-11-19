USE [Portafolio]
GO

/****** Object:  Table [dbo].[Testimonio]    Script Date: 19/11/2018 01:44:42 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Testimonio](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Usuario_id] [int] NOT NULL,
	[IP] [varchar](50) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Comentario] [text] NOT NULL,
	[Fecha] [varchar](10) NOT NULL,
	[IdEstado] [int] NOT NULL,
 CONSTRAINT [PK_Testimonio] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Testimonio]  WITH CHECK ADD  CONSTRAINT [FK_Testimonio_Usuario] FOREIGN KEY([Usuario_id])
REFERENCES [dbo].[Usuario] ([id])
GO

ALTER TABLE [dbo].[Testimonio] CHECK CONSTRAINT [FK_Testimonio_Usuario]
GO


