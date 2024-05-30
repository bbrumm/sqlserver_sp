ALTER PROCEDURE ListHello
AS
BEGIN
	DECLARE
		@loopCounter INT;
	SET @loopCounter = 1;
	
	WHILE (@loopCounter <= 10)
	BEGIN
		PRINT 'Hello';
		SET @loopCounter = @loopCounter + 1;
	END;
END;

EXECUTE ListHello;