ALTER PROCEDURE ShowOrdersWithinDateRange
	@startDate DATE,
	@endDate DATE
AS
BEGIN
	IF @startDate > @endDate
		PRINT 'Invalid entry: the start date is after the end date.';
	ELSE
		SELECT OrderID, CustomerID, OrderDate
		FROM Sales.Orders
		WHERE OrderDate BETWEEN @startDate AND @endDate;
END;



EXECUTE ShowOrdersWithinDateRange @startDate='2013-04-15', @endDate='2013-05-10';

EXECUTE ShowOrdersWithinDateRange @startDate='2014-04-15', @endDate='2013-05-10';
