


declare @rowString varchar(255);
declare @row tinyint = 1;
declare @Column tinyint = 1;
declare @Result tinyint;
declare @Headerstring varchar(255) = char(9);


while (@Column < 11)
	begin
		set @Headerstring = @Headerstring + CAST(@Column as varchar) + char(9);

		set @Column = @Column +1;
	end

print @Headerstring;

while @row<= 10
	begin
			set @Column = 1;
			set @rowString = cast(@row as varchar)+ char(9);
			
				while @Column <= 10
					begin

						set @Result = @row * @Column;
						set @rowString = @rowString + CAST(@Result as varchar) + CHAR(9);
						set @Column = @Column + 1;

					end 

				print @rowString;
				set @row = @row + 1;
	end
