--  [dbo].[ProductTypes]
--  Id	Name
--07A6DA15-2899-48C6-A98E-13365F850AE0	Coffee (beans)
--7BC6906C-4C17-4B0E-9808-7F99A9E8F74D	Coffee (ground)
--581308E0-F949-416C-BC4F-8DA39CBC9130	Coffee machine

-- Проверка Хранимки sp_listOfSoldGoods
declare @from datetime = cast('2022-01-01 00:00:00.0000000' as datetime2(7))
declare @to datetime = cast('2022-12-31 23:59:59.0000000' as datetime2(7))

exec [dbo].[sp_listOfSoldGoods] @from, @to, '07A6DA15-2899-48C6-A98E-13365F850AE0'


-- Проверка представления vw_ClientsActivity
select * from vw_ClientsActivity