USE [Portafolio]
GO

/****** Object:  Table [dbo].[Habilidad]    Script Date: 19/11/2018 01:35:46 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Habilidad](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Usuario_id] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Dominio] [int] NOT NULL,
 CONSTRAINT [PK_Habilidad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Habilidad] ADD  CONSTRAINT [DF_Habilidad_Dominio]  DEFAULT ((0)) FOR [Dominio]
GO

ALTER TABLE [dbo].[Habilidad]  WITH CHECK ADD  CONSTRAINT [FK_Habilidad_Usuario] FOREIGN KEY([Usuario_id])
REFERENCES [dbo].[Usuario] ([id])
GO

ALTER TABLE [dbo].[Habilidad] CHECK CONSTRAINT [FK_Habilidad_Usuario]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hasta el 10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Habilidad', @level2type=N'COLUMN',@level2name=N'Dominio'
GO
