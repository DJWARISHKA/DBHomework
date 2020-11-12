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
		VALUES (NEWID(), @Name, @Telephone, @Email, @Adress, @Director)

	DECLARE @provider_id INT;

	SELECT @provider_id = LAST([dbo].[Providers].[id])
	FROM [dbo].[Providers]

	INSERT INTO [dbo].[Products]
		SELECT NEWID(), *, @provider_id FROM @Products
END;
RETURN 0
