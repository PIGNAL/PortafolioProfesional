USE [Portafolio]
GO

/****** Object:  Table [dbo].[Usuario]    Script Date: 19/11/2018 01:41:03 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](100) NULL,
	[Email] [varchar](100) NOT NULL,
	[Password] [varchar](32) NOT NULL,
	[Direccion] [text] NULL,
	[Ciudad_id] [int] NULL,
	[Pais_id] [varchar](2) NULL,
	[Provincia_id] [int] NULL,
	[Telefono] [varchar](50) NULL,
	[Facebook] [varchar](100) NULL,
	[Twitter] [varchar](100) NULL,
	[YouTube] [varchar](100) NULL,
	[Foto] [varchar](50) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Ciudad] FOREIGN KEY([Ciudad_id])
REFERENCES [dbo].[Ciudad] ([id])
GO

ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Ciudad]
GO

ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Pais] FOREIGN KEY([Pais_id])
REFERENCES [dbo].[Pais] ([id])
GO

ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Pais]
GO

ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Provincia] FOREIGN KEY([Provincia_id])
REFERENCES [dbo].[Provincia] ([id])
GO

ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Provincia]
GO


