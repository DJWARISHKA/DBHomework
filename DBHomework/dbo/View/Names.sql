CREATE VIEW [dbo].[Names]
	AS 
		SELECT  [Prod].[Name] AS [Product],
				[Prov].[Name] AS [Provider],
				[Stor].[Name] AS [Storage]
		FROM [dbo].[Products] AS [Prod]
		JOIN [dbo].[Providers] AS [Prov] ON [Prod].[Provider_id] = [Prov].[id]
		JOIN [dbo].[Inventory] AS [Inv] ON [Inv].[Product_id] = [Prod].[id]
		JOIN [dbo].[Storages] AS [Stor] ON [Inv].[Storage_id] = [Stor].[id]
