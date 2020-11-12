DECLARE @Product1 Prods
DECLARE @Product2 Prods
BEGIN
IF ((SELECT COUNT(1) FROM [dbo].[Storages]) = 0)
BEGIN
INSERT INTO [dbo].[Storages]
	VALUES (1, "Sklad 1", "Днепр", "Nick", "0990101");

INSERT INTO [dbo].[Storages]
	VALUES (2, "Sklad 2", "Киев", "Vlad", "0990102");
END;
	
IF ((SELECT COUNT(1) FROM [dbo].[Providers]) = 0)
BEGIN
INSERT INTO @Product1
	VALUES ("Chocolate", "Choco", 1234, "2990832", 11.99)

EXEC [dbo].[AddProvider] @Name = "AVK", @Telephone = "0502345", @Email = "WEDF@DF.UA",
	@Adress = "Днепр", @Director = "Тасельхоф", @Products = @Product1

INSERT INTO @Product2
	VALUES ("Apple", "Choco", 3429, "2990234", 16.32)

EXEC [dbo].[AddProvider] @Name = "Ферма", @Telephone = "0502345", @Email = "dfed@yhb.UA",
	@Adress = "Днепр", @Director = "Бонифатциевна", @Products = @Product2

EXEC [dbo].[AddInventory] 1, 1, 2
END;

END;