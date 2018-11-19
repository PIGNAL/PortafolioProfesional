USE [Portafolio]
GO

/****** Object:  Table [dbo].[Ciudad]    Script Date: 19/11/2018 01:33:22 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Ciudad](
	[id] [int] NOT NULL,
	[Nombre] [varchar](60) NOT NULL,
	[CodigoPostal] [int] NOT NULL,
	[Provincia_id] [int] NOT NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Ciudad]  WITH CHECK ADD  CONSTRAINT [FK_Ciudad_Provincia] FOREIGN KEY([Provincia_id])
REFERENCES [dbo].[Provincia] ([id])
GO

ALTER TABLE [dbo].[Ciudad] CHECK CONSTRAINT [FK_Ciudad_Provincia]
GO