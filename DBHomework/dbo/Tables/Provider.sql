CREATE TABLE [dbo].[Providers] (
[id] INT PRIMARY KEY NOT NULL UNIQUE IDENTITY(1,1),
[Name] VARCHAR (100) NOT NULL,
[Telephone] VARCHAR (15),
[Email] VARCHAR (30),
[Adress] VARCHAR (100),
[Director] VARCHAR (30),
);
