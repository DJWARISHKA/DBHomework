CREATE TABLE [dbo].[Products]
(
	[id] INT PRIMARY KEY NOT NULL UNIQUE,
	[Name] VARCHAR (50),
	[Short_name] VARCHAR (20),
	[Vendor_code] INT,
	[Barcode] VARCHAR (30),
	[Price] MONEY NOT NULL,
	[Provider_id] INT NOT NULL,
	FOREIGN KEY([Provider_id]) REFERENCES [Providers]([id])
)
