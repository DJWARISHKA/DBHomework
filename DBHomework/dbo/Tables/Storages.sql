CREATE TABLE [dbo].[Storages]
(
	[id] INT PRIMARY KEY NOT NULL UNIQUE,
	[Name] VARCHAR (50) NOT NULL,
	[Adress] VARCHAR (100) NOT NULL	,
	[Responsible] VARCHAR (30),
	[Telephone] VARCHAR (15) NOT NULL
)
