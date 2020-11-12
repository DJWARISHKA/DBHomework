CREATE FUNCTION [dbo].[ProductCount]()
RETURNS @Result TABLE ([Count] INT, [Provider_id] INT)
AS
BEGIN

INSERT INTO @Result
SELECT SUM([Inv].[Count]), [Prod].[Provider_id]
FROM [dbo].[Products] AS [Prod]
		JOIN [dbo].[Inventory] AS [Inv] ON [Inv].[Product_id] = [Prod].[id]
GROUP BY  [Prod].[Provider_id]

RETURN
END;
