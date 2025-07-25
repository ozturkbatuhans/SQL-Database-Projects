USE [Bier]
GO
/****** Object:  Table [dbo].[Bier]    Script Date: 20/11/2024 09:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bier](
	[BierNr] [int] IDENTITY(1,1) NOT NULL,
	[Naam] [nvarchar](100) NULL,
	[BrouwerNr] [int] NULL,
	[SoortNr] [int] NULL,
	[Alcohol] [real] NULL,
 CONSTRAINT [aaaaaBier_PK] PRIMARY KEY NONCLUSTERED 
(
	[BierNr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brouwer]    Script Date: 20/11/2024 09:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brouwer](
	[BrouwerNr] [int] IDENTITY(1,1) NOT NULL,
	[BrNaam] [nvarchar](50) NULL,
	[Adres] [nvarchar](50) NULL,
	[PostCode] [smallint] NULL,
	[Gemeente] [nvarchar](50) NULL,
	[Omzet] [int] NULL,
	[test1] [nvarchar](20) NULL,
 CONSTRAINT [aaaaaBrouwers_PK] PRIMARY KEY NONCLUSTERED 
(
	[BrouwerNr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Soort]    Script Date: 20/11/2024 09:22:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Soort](
	[SoortNr] [int] IDENTITY(1,1) NOT NULL,
	[Soort] [nvarchar](50) NULL,
 CONSTRAINT [aaaaaSoorten_PK] PRIMARY KEY NONCLUSTERED 
(
	[SoortNr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bier] ADD  CONSTRAINT [DF__Bier__BrouwerN__07020F21]  DEFAULT ((0)) FOR [BrouwerNr]
GO
ALTER TABLE [dbo].[Bier] ADD  CONSTRAINT [DF__Bier__SoortNr__07F6335A]  DEFAULT ((0)) FOR [SoortNr]
GO
ALTER TABLE [dbo].[Bier] ADD  CONSTRAINT [DF__Bier__Alcohol__08EA5793]  DEFAULT ((0)) FOR [Alcohol]
GO
ALTER TABLE [dbo].[Brouwer] ADD  DEFAULT ((0)) FOR [PostCode]
GO
ALTER TABLE [dbo].[Brouwer] ADD  DEFAULT ((0)) FOR [Omzet]
GO
ALTER TABLE [dbo].[Bier]  WITH CHECK ADD  CONSTRAINT [Bier_FK00] FOREIGN KEY([BrouwerNr])
REFERENCES [dbo].[Brouwer] ([BrouwerNr])
GO
ALTER TABLE [dbo].[Bier] CHECK CONSTRAINT [Bier_FK00]
GO
ALTER TABLE [dbo].[Bier]  WITH CHECK ADD  CONSTRAINT [Bier_FK01] FOREIGN KEY([SoortNr])
REFERENCES [dbo].[Soort] ([SoortNr])
GO
ALTER TABLE [dbo].[Bier] CHECK CONSTRAINT [Bier_FK01]
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BierNr'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BierNr'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BierNr'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BierNr'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BierNr'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'750' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BierNr'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BierNr'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BierNr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BierNr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BierNr'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'BierNr' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BierNr'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BierNr'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BierNr'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BierNr'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'BierNr' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BierNr'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Bier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BierNr'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BierNr'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'Naam'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'Naam'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'Naam'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'Naam'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'Naam'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'7155' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'Naam'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'Naam'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'Naam'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Naam' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'Naam'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'Naam'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'Naam'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'Naam'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Naam' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'Naam'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Bier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'Naam'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'Naam'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BrouwerNr'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BrouwerNr'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BrouwerNr'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BrouwerNr'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BrouwerNr'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1170' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BrouwerNr'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BrouwerNr'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BrouwerNr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BrouwerNr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BrouwerNr'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'BrouwerNr' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BrouwerNr'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BrouwerNr'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BrouwerNr'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BrouwerNr'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'BrouwerNr' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BrouwerNr'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Bier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BrouwerNr'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'BrouwerNr'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'SoortNr'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'SoortNr'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'SoortNr'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'SoortNr'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'SoortNr'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'870' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'SoortNr'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'SoortNr'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'SoortNr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'SoortNr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'SoortNr'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'SoortNr' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'SoortNr'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'SoortNr'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'SoortNr'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'SoortNr'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'SoortNr' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'SoortNr'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Bier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'SoortNr'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'SoortNr'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'Alcohol'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'Alcohol'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'Alcohol'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'Alcohol'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'Alcohol'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'870' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'Alcohol'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'Alcohol'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'Alcohol'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'Alcohol'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'Alcohol'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Alcohol' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'Alcohol'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'Alcohol'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'Alcohol'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'Alcohol'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Alcohol' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'Alcohol'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Bier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'Alcohol'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier', @level2type=N'COLUMN',@level2name=N'Alcohol'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'13/05/98 14:32:14' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'25/02/02 17:30:19' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Bier' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'1217' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Bier'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'BrouwerNr'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'BrouwerNr'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'BrouwerNr'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'BrouwerNr'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'BrouwerNr'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'1170' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'BrouwerNr'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'BrouwerNr'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'BrouwerNr' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'BrouwerNr'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'BrouwerNr'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'BrouwerNr'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'BrouwerNr'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'BrouwerNr' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'BrouwerNr'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Brouwers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'BrouwerNr'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'BrouwerNr'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'BrNaam'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'BrNaam'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'BrNaam'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'BrNaam'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'BrNaam'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'2370' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'BrNaam'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'BrNaam'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'BrNaam'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'BrNaam' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'BrNaam'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'BrNaam'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'BrNaam'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'BrNaam'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'BrNaam' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'BrNaam'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Brouwers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'BrNaam'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'BrNaam'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Adres'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Adres'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Adres'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Adres'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Adres'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'2610' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Adres'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Adres'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Adres'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Adres' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Adres'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Adres'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Adres'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Adres'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Adres' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Adres'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Brouwers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Adres'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Adres'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'PostCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'PostCode' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Brouwers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Gemeente'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Gemeente'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Gemeente'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Gemeente'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Gemeente'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'2445' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Gemeente'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Gemeente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Gemeente'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Gemeente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Gemeente'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Gemeente'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Gemeente'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Gemeente'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Gemeente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Gemeente'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Brouwers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Gemeente'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Gemeente'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Omzet'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Omzet'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Omzet'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Omzet'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Omzet'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Omzet'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Omzet'
GO
EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Omzet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Omzet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Omzet'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Omzet' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Omzet'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Omzet'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Omzet'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Omzet'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Omzet' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Omzet'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Brouwers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Omzet'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer', @level2type=N'COLUMN',@level2name=N'Omzet'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'13/05/98 14:26:06' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'29/10/00 11:19:23' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Brouwers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'119' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Brouwer'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort', @level2type=N'COLUMN',@level2name=N'SoortNr'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort', @level2type=N'COLUMN',@level2name=N'SoortNr'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort', @level2type=N'COLUMN',@level2name=N'SoortNr'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort', @level2type=N'COLUMN',@level2name=N'SoortNr'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort', @level2type=N'COLUMN',@level2name=N'SoortNr'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'870' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort', @level2type=N'COLUMN',@level2name=N'SoortNr'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort', @level2type=N'COLUMN',@level2name=N'SoortNr'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'SoortNr' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort', @level2type=N'COLUMN',@level2name=N'SoortNr'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort', @level2type=N'COLUMN',@level2name=N'SoortNr'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort', @level2type=N'COLUMN',@level2name=N'SoortNr'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort', @level2type=N'COLUMN',@level2name=N'SoortNr'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'SoortNr' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort', @level2type=N'COLUMN',@level2name=N'SoortNr'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Soorten' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort', @level2type=N'COLUMN',@level2name=N'SoortNr'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort', @level2type=N'COLUMN',@level2name=N'SoortNr'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort', @level2type=N'COLUMN',@level2name=N'Soort'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort', @level2type=N'COLUMN',@level2name=N'Soort'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort', @level2type=N'COLUMN',@level2name=N'Soort'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort', @level2type=N'COLUMN',@level2name=N'Soort'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort', @level2type=N'COLUMN',@level2name=N'Soort'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'4590' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort', @level2type=N'COLUMN',@level2name=N'Soort'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort', @level2type=N'COLUMN',@level2name=N'Soort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort', @level2type=N'COLUMN',@level2name=N'Soort'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Soort' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort', @level2type=N'COLUMN',@level2name=N'Soort'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort', @level2type=N'COLUMN',@level2name=N'Soort'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort', @level2type=N'COLUMN',@level2name=N'Soort'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort', @level2type=N'COLUMN',@level2name=N'Soort'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Soort' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort', @level2type=N'COLUMN',@level2name=N'Soort'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'Soorten' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort', @level2type=N'COLUMN',@level2name=N'Soort'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort', @level2type=N'COLUMN',@level2name=N'Soort'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'13/05/98 14:10:49' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'29/10/00 11:19:31' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Soorten' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'38' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Soort'
GO
