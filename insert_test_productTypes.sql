--SELECT TOP (1000) [Id]
--      ,[Name]
--  FROM [CoffeeStore].[dbo].[ProductTypes]

declare @ID1 uniqueidentifier = newid()
declare @ID2 uniqueidentifier = newid()
declare @ID3 uniqueidentifier = newid()

insert into [dbo].[ProductTypes] (Id ,Name)
values (@ID1, 'Coffee (ground)'),
		(@ID2, 'Coffee (beans)'),
		(@ID3, 'Coffee machine')