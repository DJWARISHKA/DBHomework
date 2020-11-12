CREATE PROCEDURE [dbo].[AddInventory]
	@storage_id int,
	@product_id int,
	@count int,
	@reserve int = 0
AS
BEGIN

IF ((SELECT COUNT(1) FROM [dbo].[Inventory] 
	WHERE [dbo].[Inventory].[Storage_id] = @storage_id 
		AND [dbo].[Inventory].[Product_id] = @product_id) = 0)

		INSERT INTO [dbo].[Inventory] 
		VALUES (@storage_id, @product_id, @count, @reserve)

	ELSE

		UPDATE [dbo].[Inventory] 
		SET [dbo].[Inventory].[Count] = [dbo].[Inventory].[Count] + @count,
			[dbo].[Inventory].[Reserve] = [dbo].[Inventory].[Reserve] + @reserve
		WHERE ([dbo].[Inventory].Storage_id = @storage_id 
			AND [dbo].[Inventory].[Product_id] = @product_id)

END;
RETURN 0
