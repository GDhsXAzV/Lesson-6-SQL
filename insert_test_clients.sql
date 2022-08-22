--------------------------------------------------------------
-- Вставка тест клиеннтов
--------------------------------------------------------------

declare @client1 uniqueidentifier = newid()
declare @client2 uniqueidentifier = newid()

insert into [dbo].[Clients] (Id ,Name ,Surname ,PhoneNumber ,Email ,DeliveryAddress)
	     values (@client1, 'Ivanov', 'Ivan',8904654711, 'example@mail.com', 'Moscow'),
				(@client2, 'Petrov', 'Petr',89058764433, 'example2@mail.com', 'Saint-P.')