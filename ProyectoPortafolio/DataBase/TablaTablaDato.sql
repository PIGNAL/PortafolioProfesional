USE [Portafolio]
GO

/****** Object:  Table [dbo].[TablaDato]    Script Date: 19/11/2018 01:44:50 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[TablaDato](
	[Relacion] [varchar](20) NOT NULL,
	[Valor] [varchar](20) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Orden] [int] NOT NULL,
 CONSTRAINT [PK_TablaDato] PRIMARY KEY CLUSTERED 
(
	[Relacion] ASC,
	[Valor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[TablaDato] ADD  CONSTRAINT [DF_TablaDato_Orden]  DEFAULT ((1)) FOR [Orden]
GO


