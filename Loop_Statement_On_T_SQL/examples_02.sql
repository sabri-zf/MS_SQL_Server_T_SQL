

declare @Reption_Time_To_Login tinyint =1;
declare @explcitly_Repit_Login tinyint= 4;
declare @runtimeProgram int;

set @runtimeProgram = 10

while (@runtimeProgram <> 0)
begin

          if(@Reption_Time_To_Login >=@explcitly_Repit_Login)
		  begin 
		      print '------------------------------------'
				print 'your times of login, has been done'
			  print '------------------------------------'

				break;
		  end

		  print 'you are remaining to you, just ('+ cast((@explcitly_Repit_Login - @Reption_Time_To_Login) as varchar) +') time attempt(s)'
		  set @Reption_Time_To_Login = @Reption_Time_To_Login +1;
 
end