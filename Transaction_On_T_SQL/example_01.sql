

-- Try executing out transaction on T_SQL to Transfare money to  Tow Accounts 
-------


select * from Accounts
-- +--------------+-------------+
-- + Account ID   +  Balance    +
-- +--------------+-------------+
-- |      1       |   450       |
-- |--------------+-------------+
-- |      2       |   350       |
-- +--------------+-------------+


begin transaction 

	Declare @HowMuchAmount decimal(10,2) = 100.50;
		begin try

		 -- Withdraw from Account ID = 1
		  update Accounts set Balance = Balance - @HowMuchAmount where AccountID = 1;
		  -- dipesit to Account ID = 2
		  update Accounts set Balance = Balance + @HowMuchAmount where AccountID = 2;

		  --- Login whole operation happened
		  insert into Transactions (FromAccount,ToAccount,Date,Amount)
		  values (1,2,GETDATE(),@HowMuchAmount)

		 -- commit transaaction on login to re-update operation for any event happend
			commit;
		 end try

		 begin catch
		 -- return whole data like what it was in past
			rollback;
		 --- catch any error occurred
		 end catch

go


select * from Accounts
-- +--------------+-------------+
-- + Account ID   +  Balance    +
-- +--------------+-------------+
-- |      1       |   349.50    |  
-- |--------------+-------------+
-- |      2       |   450.50    |
-- +--------------+-------------+


select * from Transactions