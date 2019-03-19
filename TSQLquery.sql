/* This is a comment */

PRINT 'Hello World!'

DECLARE @myVariable INT
SET @myVariable = 60
PRINT @myVariable

DECLARE @var1 INT, @var2 INT
SET @var1 = 3
SET @var2 = 5

PRINT 'I have ' + CONVERT(varchar(50),@var1) + ' dollars...' + CHAR(13)
PRINT CHAR(9) + 'indented'

PRINT CHAR(13)
PRINT 'Variable 1 = ' + CONVERT(VARCHAR(50),@var1) + CHAR(13)

PRINT 'Variable 2 = ' + CONVERT(VARCHAR(50),@var2) + CHAR(13)



IF @var1 < @var2
	BEGIN
		PRINT 'Variable 1 is less than Variable 2'
	END
ELSE IF @var1 > @var2
	BEGIN
		PRINT  'Variable 2 is less than Variable 1'
	END
ELSE
	BEGIN
		PRINT  'Variable 1 is equal to Variable 2'
	END












