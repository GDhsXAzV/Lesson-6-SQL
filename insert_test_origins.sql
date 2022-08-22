
--SELECT TOP (1000) [Id]
--      ,[Name]
--  FROM [CoffeeStore].[dbo].[Origins]

    
declare @ID1 uniqueidentifier = newid()
declare @ID2 uniqueidentifier = newid()

insert into [dbo].[Origins] (Id ,Name)
values (@ID1, 'Mexico'),
		(@ID2, 'Columbia')