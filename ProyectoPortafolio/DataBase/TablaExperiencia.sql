USE [Portafolio]
GO

/****** Object:  Table [dbo].[Experiencia]    Script Date: 19/11/2018 01:35:01 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Experiencia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Usuario_id] [int] NOT NULL,
	[Tipo] [tinyint] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Titulo] [varchar](50) NOT NULL,
	[Desde] [varchar](10) NOT NULL,
	[Hasta] [varchar](10) NOT NULL,
	[Descripcion] [text] NULL,
 CONSTRAINT [PK_Experiencia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Experiencia] ADD  CONSTRAINT [DF_Experiencia_Tipo]  DEFAULT ((1)) FOR [Tipo]
GO

ALTER TABLE [dbo].[Experiencia]  WITH CHECK ADD  CONSTRAINT [FK_Experiencia_Usuario] FOREIGN KEY([Usuario_id])
REFERENCES [dbo].[Usuario] ([id])
GO

ALTER TABLE [dbo].[Experiencia] CHECK CONSTRAINT [FK_Experiencia_Usuario]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1 Trabajo 2 Estudios' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Experiencia', @level2type=N'COLUMN',@level2name=N'Tipo'
GO