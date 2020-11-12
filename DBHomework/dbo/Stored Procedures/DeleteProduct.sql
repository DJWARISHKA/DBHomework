CREATE PROCEDURE [dbo].[DeleteProduct]
	@product_id int
AS
BEGIN
	DELETE [dbo].[Products]
	WHERE @product_id = [dbo].[Products].[id]
	--Inventory has cascade deeting
END;
RETURN 0
