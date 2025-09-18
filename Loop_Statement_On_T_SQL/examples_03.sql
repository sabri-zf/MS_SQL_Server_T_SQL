
--- Nested While Loop

Declare @row tinyint = 1;
Declare @column tinyint;

Declare @Result tinyint;



while (@row <= 10)
begin

   set @column = 1;

		 while @column <= 10
			 begin
					set @Result = @row * @column;
						print cast(@row as varchar)+ ' + ' + cast(@column as varchar) + ' = ' + cast(@Result as varchar);

						set @column = @column +1;
			 end

			 set @row = @row +1;

			 print '*******************************************************'
			 print ''

end


