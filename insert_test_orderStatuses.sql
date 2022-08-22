--/****** Скрипт для команды SelectTopNRows из среды SSMS  ******/
--SELECT TOP (1000) [Id]
--      ,[Name]
--  FROM [CoffeeStore].[dbo].[OrderStatuses]


insert into [dbo].[OrderStatuses] (Id ,Name)
values (0, 'New'),
		(1, 'In progress'),
		(2, 'Finished'),
		(3, 'Canceled')