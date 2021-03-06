USE [gestion_db]
GO
/****** Object:  Table [dbo].[Appartenir]    Script Date: 21/02/2022 9:39:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appartenir](
	[code_categories] [int] NOT NULL,
	[numeros] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorie]    Script Date: 21/02/2022 9:39:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorie](
	[code_categorie] [int] NOT NULL,
	[description] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[code_categorie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chambres]    Script Date: 21/02/2022 9:39:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chambres](
	[numero] [int] NOT NULL,
	[numero_tel] [int] NOT NULL,
	[codes] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[numero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Classe]    Script Date: 21/02/2022 9:39:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classe](
	[nombre_etoile] [int] NOT NULL,
	[caracteristique] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[nombre_etoile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 21/02/2022 9:39:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[code_client] [int] NOT NULL,
	[nom] [varchar](255) NOT NULL,
	[prenom] [varchar](255) NOT NULL,
	[adresse] [varchar](255) NOT NULL,
	[ville] [varchar](255) NOT NULL,
	[code_postal] [int] NOT NULL,
	[pays] [varchar](255) NOT NULL,
	[telephone] [int] NOT NULL,
	[e_mail] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[code_client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Concerner]    Script Date: 21/02/2022 9:39:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Concerner](
	[num_consommation] [int] NOT NULL,
	[code_preste] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consommations]    Script Date: 21/02/2022 9:39:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consommations](
	[num_consommation] [int] NOT NULL,
	[date_consommation] [date] NOT NULL,
	[heure_consommation] [time](7) NOT NULL,
	[code_clients] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[num_consommation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotels]    Script Date: 21/02/2022 9:39:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotels](
	[code] [int] NOT NULL,
	[nom] [varchar](255) NOT NULL,
	[adresse] [varchar](255) NOT NULL,
	[CPH] [int] NOT NULL,
	[telephone] [int] NOT NULL,
	[nombre_etoiles] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Offrir]    Script Date: 21/02/2022 9:39:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offrir](
	[code_preste] [int] NOT NULL,
	[codes] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prestation]    Script Date: 21/02/2022 9:39:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prestation](
	[code_prest] [int] NOT NULL,
	[designation_prest] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[code_prest] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservation]    Script Date: 21/02/2022 9:39:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservation](
	[num_reservation] [int] NOT NULL,
	[date_debut] [date] NOT NULL,
	[date_fin] [date] NOT NULL,
	[date_paye_arrhes] [date] NOT NULL,
	[code_clients] [int] NOT NULL,
	[numeros] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[num_reservation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tarifier]    Script Date: 21/02/2022 9:39:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarifier](
	[code_categories] [int] NOT NULL,
	[nombre_etoiles] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Appartenir]  WITH CHECK ADD FOREIGN KEY([code_categories])
REFERENCES [dbo].[Categorie] ([code_categorie])
GO
ALTER TABLE [dbo].[Appartenir]  WITH CHECK ADD FOREIGN KEY([numeros])
REFERENCES [dbo].[Chambres] ([numero])
GO
ALTER TABLE [dbo].[Chambres]  WITH CHECK ADD FOREIGN KEY([codes])
REFERENCES [dbo].[Hotels] ([code])
GO
ALTER TABLE [dbo].[Concerner]  WITH CHECK ADD FOREIGN KEY([code_preste])
REFERENCES [dbo].[Prestation] ([code_prest])
GO
ALTER TABLE [dbo].[Concerner]  WITH CHECK ADD FOREIGN KEY([num_consommation])
REFERENCES [dbo].[Consommations] ([num_consommation])
GO
ALTER TABLE [dbo].[Consommations]  WITH CHECK ADD FOREIGN KEY([code_clients])
REFERENCES [dbo].[Clients] ([code_client])
GO
ALTER TABLE [dbo].[Hotels]  WITH CHECK ADD FOREIGN KEY([nombre_etoiles])
REFERENCES [dbo].[Classe] ([nombre_etoile])
GO
ALTER TABLE [dbo].[Offrir]  WITH CHECK ADD FOREIGN KEY([code_preste])
REFERENCES [dbo].[Prestation] ([code_prest])
GO
ALTER TABLE [dbo].[Offrir]  WITH CHECK ADD FOREIGN KEY([codes])
REFERENCES [dbo].[Hotels] ([code])
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD FOREIGN KEY([code_clients])
REFERENCES [dbo].[Clients] ([code_client])
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD FOREIGN KEY([numeros])
REFERENCES [dbo].[Chambres] ([numero])
GO
ALTER TABLE [dbo].[Tarifier]  WITH CHECK ADD FOREIGN KEY([code_categories])
REFERENCES [dbo].[Categorie] ([code_categorie])
GO
ALTER TABLE [dbo].[Tarifier]  WITH CHECK ADD FOREIGN KEY([nombre_etoiles])
REFERENCES [dbo].[Classe] ([nombre_etoile])
GO
