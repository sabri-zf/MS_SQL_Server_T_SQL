

-- using throw exception to handling error occurred 

declare @StorgeQuantilty int ;

set @StorgeQuantilty = -5;


begin try

     -- loggin the error and trow it to catch statement to handle it;
		if (@StorgeQuantilty < 0)
				throw 50001,'ingative quantity into storge wrong',1;

	 print 'error doesnot ouccrred';
end try

begin catch
  -- print the error deatils
		select 
		ERROR_NUMBER(),
		ERROR_MESSAGE()
end catch