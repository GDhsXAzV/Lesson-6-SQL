USE [CoffeeStore]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-------------------------------------------------------------------------------------------------------------------------------
-- Хранимая процедура списка купленных товаров с группировкой по продукту и сортировкой от наиболее часто покупаемых
-------------------------------------------------------------------------------------------------------------------------------

CREATE OR ALTER PROCEDURE [dbo].[sp_listOfSoldGoods]
	@dateFrom DATETIME,
	@dateTo DATETIME,
	@productTypeId UNIQUEIDENTIFIER
AS
BEGIN
	SET NOCOUNT ON;

	SELECT
		[dbo].[Products].[Id] AS [ProductId],
		SUM([dbo].[OrderDetails].[Amount]) AS [TotalAmount]

	INTO #tmp
	FROM [dbo].[Orders]
	INNER JOIN [dbo].[OrderDetails]
		ON [dbo].[OrderDetails].[OrderId] = [dbo].[Orders].[Id]
	INNER JOIN [dbo].[Products]
		ON [dbo].[Products].[Id] = [dbo].[OrderDetails].[ProductId]

	WHERE [dbo].[Products].[ProductTypeId] = @productTypeId
		AND [dbo].[Orders].[OrderStatus] = 2
		AND [dbo].[Orders].[ModifiedDate] BETWEEN @dateFrom AND @dateTo
		
	GROUP BY [dbo].[Products].[Id]

	SELECT 
		ProductId, 
		[dbo].[Products].[Name],
		TotalAmount
		
		from #tmp		
		INNER JOIN [dbo].[Products]
			ON [dbo].[Products].[Id] = #tmp.ProductId

		ORDER BY TotalAmount DESC
END
