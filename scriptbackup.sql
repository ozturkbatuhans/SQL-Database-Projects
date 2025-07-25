USE [Bibliotheek]
GO
/****** Object:  Table [dbo].[Auteur]    Script Date: 02/12/2024 13:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auteur](
	[Auteur_id] [int] NOT NULL,
	[Naam] [varchar](30) NULL,
 CONSTRAINT [PK_Auteur] PRIMARY KEY CLUSTERED 
(
	[Auteur_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Boek]    Script Date: 02/12/2024 13:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Boek](
	[boek_id] [int] NOT NULL,
	[auteur_id] [int] NULL,
	[jaar] [smallint] NULL,
	[titel] [nvarchar](30) NULL,
	[cat_id] [int] NULL,
	[uitg_id] [int] NULL,
 CONSTRAINT [PK_Boeken] PRIMARY KEY CLUSTERED 
(
	[boek_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorie]    Script Date: 02/12/2024 13:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorie](
	[cat_id] [int] NOT NULL,
	[categorie] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Categorie] PRIMARY KEY CLUSTERED 
(
	[cat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Klant]    Script Date: 02/12/2024 13:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Klant](
	[klant_id] [int] NOT NULL,
	[klantnaam] [nvarchar](30) NULL,
	[plaats] [nvarchar](30) NULL,
 CONSTRAINT [PK_Klant] PRIMARY KEY CLUSTERED 
(
	[klant_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uitgever]    Script Date: 02/12/2024 13:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uitgever](
	[uitg_id] [int] NOT NULL,
	[uitgever] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Uitgever] PRIMARY KEY CLUSTERED 
(
	[uitg_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uitleen]    Script Date: 02/12/2024 13:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uitleen](
	[uitlnr] [int] NOT NULL,
	[boek_id] [int] NULL,
	[datum] [datetime] NULL,
	[klant_id] [int] NULL,
 CONSTRAINT [PK_Uitleen] PRIMARY KEY CLUSTERED 
(
	[uitlnr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Boek]  WITH CHECK ADD  CONSTRAINT [FK_Boeken_Auteur1] FOREIGN KEY([auteur_id])
REFERENCES [dbo].[Auteur] ([Auteur_id])
GO
ALTER TABLE [dbo].[Boek] CHECK CONSTRAINT [FK_Boeken_Auteur1]
GO
ALTER TABLE [dbo].[Boek]  WITH CHECK ADD  CONSTRAINT [FK_Boeken_Categorie] FOREIGN KEY([cat_id])
REFERENCES [dbo].[Categorie] ([cat_id])
GO
ALTER TABLE [dbo].[Boek] CHECK CONSTRAINT [FK_Boeken_Categorie]
GO
ALTER TABLE [dbo].[Boek]  WITH CHECK ADD  CONSTRAINT [FK_Boeken_Uitgever] FOREIGN KEY([uitg_id])
REFERENCES [dbo].[Uitgever] ([uitg_id])
GO
ALTER TABLE [dbo].[Boek] CHECK CONSTRAINT [FK_Boeken_Uitgever]
GO
ALTER TABLE [dbo].[Uitleen]  WITH CHECK ADD  CONSTRAINT [FK_Uitleen_Boeken] FOREIGN KEY([boek_id])
REFERENCES [dbo].[Boek] ([boek_id])
GO
ALTER TABLE [dbo].[Uitleen] CHECK CONSTRAINT [FK_Uitleen_Boeken]
GO
ALTER TABLE [dbo].[Uitleen]  WITH CHECK ADD  CONSTRAINT [FK_Uitleen_Klant] FOREIGN KEY([klant_id])
REFERENCES [dbo].[Klant] ([klant_id])
GO
ALTER TABLE [dbo].[Uitleen] CHECK CONSTRAINT [FK_Uitleen_Klant]
GO
