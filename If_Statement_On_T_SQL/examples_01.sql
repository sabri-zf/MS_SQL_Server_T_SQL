
declare @str nvarchar(50) = 'Sabri';

if(LEN(@str) = 5)
begin
print 'yes, the string has been had 5 charchters';
end
else 
begin
print 'NO,Does not have Five Char'
end
go 


--- NESTED IF-ELSE STATEMENT

	DECLARE @MARK TINYINT = 80;

	IF (@MARK > 90)
		BEGIN
			 PRINT 'MARK GREATE THAN 90'
		END
	ELSE
		BEGIN
	 
			IF (@MARK = 90)
				BEGIN
					PRINT 'MARK IS EQUAL 90'
				END
			ELSE
				BEGIN
						   IF(@MARK < 90)
								BEGIN
									PRINT 'MARK LESS THAN 90';
								END
						   ELSE
								BEGIN
									PRINT 'NO RESULT APPEAREING';
								END
				END
		END
