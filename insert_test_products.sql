
--SELECT TOP (1000) [Id]
--      ,[NomenclatureNumber]
--      ,[Name]
--      ,[ProductTypeId]
--      ,[Description]
--  FROM [CoffeeStore].[dbo].[Products]

--SELECT TOP (1000) [Id]
--      ,[Name]
--  FROM [CoffeeStore].[dbo].[ProductTypes]

declare @ID1 uniqueidentifier = newid()
declare @ID2 uniqueidentifier = newid()
declare @ID3 uniqueidentifier = newid()

insert into [dbo].[Products] (Id, NomenclatureNumber, Name, ProductTypeId, Description)
values (@ID1, '0001-1200', 'Sunshine Mexico', '07A6DA15-2899-48C6-A98E-13365F850AE0', 'Mexican Arabica with the fruit notes'),
		(@ID2, '0020-1445', 'Barista FN-150', '581308E0-F949-416C-BC4F-8DA39CBC9130', 'Smart coffee machine for the home usage'),
		(@ID3, '0001-1320', 'Sunshine Columbia', '07A6DA15-2899-48C6-A98E-13365F850AE0', 'Columbian magic with the chocolate notes')