CREATE TYPE Prods AS TABLE
		([Name] VARCHAR (50),
		[Short_name] VARCHAR (20),
		[Vendor_code] INT,
		[Barcode] VARCHAR (30),
		[Price] MONEY NOT NULL);
GO

CREATE PROCEDURE [dbo].[AddProvider]
	@Name VARCHAR (100),
	@Telephone VARCHAR (15),
	@Email VARCHAR (30),
	@Adress VARCHAR (100),
	@Director VARCHAR (30),
	@Products Prods READONLY
AS
BEGIN
	INSERT INTO [dbo].[Providers] 
		VALUES (@Name, @Telephone, @Email, @Adress, @Director)

	DECLARE @provider_id INT;

	SELECT TOP 1 @provider_id = [dbo].[Providers].[id] 
	FROM [dbo].[Providers]
	ORDER BY [dbo].[Providers].[id] DESC

	INSERT INTO [dbo].[Products] ([Name],[Short_name],[Vendor_code],[Barcode],[Price],[Provider_id])
		SELECT *, @provider_id FROM @Products
END;
RETURN 0
