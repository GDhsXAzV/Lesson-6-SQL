--Id	Name	Surname	PhoneNumber	Email	DeliveryAddress
--D0EB567C-5E54-4CFC-BCBB-82C6074CCB6C	Petrov	Petr	89058764433	example2@mail.com	Moscow
--BFC4E325-69E0-4D56-B452-F5D835B1426D	Ivanov	Ivan	8904654711	example@mail.com	Saint-P.

--products
--Id	NomenclatureNumber	Name	ProductTypeId	Description
--29BBCABF-579D-4187-B881-29F6A96955D3	0001-1200	Sunshine Mexico	07A6DA15-2899-48C6-A98E-13365F850AE0	Mexican Arabica with the fruit notes
--2333A3BF-418F-492D-93CE-331A0AC64EF8	0001-1320	Sunshine Columbia	07A6DA15-2899-48C6-A98E-13365F850AE0	Columbian magic with the chocolate notes
--C33A31C9-0625-485B-9601-450F7E325B93	0020-1445	Barista FN-150	581308E0-F949-416C-BC4F-8DA39CBC9130	Smart coffee machine for the home usage



declare @order1 uniqueidentifier = newid()
declare @order2 uniqueidentifier = newid()

insert into [dbo].[Orders] (Id ,ClientId, OrderStatus, CreatedDate, ModifiedDate)
values (@order1, 'D0EB567C-5E54-4CFC-BCBB-82C6074CCB6C', 2, cast('2022-01-01 12:01:24.0000000' as datetime2(7)), cast('2022-01-01 12:02:33.0000000' as datetime2(7))),
	   (@order2, 'BFC4E325-69E0-4D56-B452-F5D835B1426D', 2, cast('2022-02-02 12:02:35.0000000' as datetime2(7)), cast('2022-02-02 12:02:56.0000000' as datetime2(7)))

insert into [dbo].[OrderDetails] (Id ,OrderId, ProductId, Amount, Sum)

values (newid(), @order1, '29BBCABF-579D-4187-B881-29F6A96955D3', 5, 9000.00),
	   (newid(), @order2, 'C33A31C9-0625-485B-9601-450F7E325B93', 1, 3000.00)