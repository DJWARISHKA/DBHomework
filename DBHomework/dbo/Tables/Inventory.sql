CREATE TABLE [dbo].[Inventory]
(
	[Storage_id] INT NOT NULL,
	[Product_id] INT NOT NULL,
	[Count] INT DEFAULT 0 NOT NULL,
	[Reserve] INT DEFAULT 0 NOT NULL,
	FOREIGN KEY([Storage_id]) REFERENCES [Storages]([id]) ON DELETE CASCADE,
	FOREIGN KEY([Product_id]) REFERENCES [Products]([id]) ON DELETE CASCADE
)
