
-- CRUD operation by store procedure 
------ 

create procedure SP_SetName
@FirstName nvarchar(30),
@LastName nvarchar(20),
@ID int output
as
begin

     declare @Persons table 
	 (
	 ID int identity(1,1) primary key,
	 FirstName nvarchar(30) not null,
	 LastName nvarchar(20) not null
	)


	begin try

		insert into @Persons (FirstName,LastName)
		values (@FirstName,@LastName)

		      set @ID =SCOPE_IDENTITY();
		      return @@ROWCOUNT;
	end try
	begin catch

	    print 'Error occurred '
	end catch

end


---- another example


create procedure SP_AddNewStudent
	@Fullname nvarchar(50),
	@NewID int output

as
	begin


		   begin try
					create Table #Students  
					(
						ID int identity(1,1) primary Key,
						Fullname nvarchar(50) not null
					)
			end try
			begin catch
				
			end catch
			
			begin try
				insert into #Students(FullName) 
				values (@Fullname)
			end try
			begin catch 
				print 'error 2'
			end catch

			set @NewID = SCOPE_IDENTITY();

			return @@ROWCOUNT;
	end


-----------------------------------------------------------------
--------			execution process					---------
-----------------------------------------------------------------


---- E-1
Declare @Return_RowEffected tinyint ;
Declare @PersionID int;

exec @Return_RowEffected= SP_SetName 
							@FirstName = 'Salah',
							@LastName = 'Abd-hamid',
							@ID = @PersionID output

select @Return_RowEffected as result , @PersionID



-- E-2

exec @Return_RowEffected = SP_AddNewStudent
								@Fullname = 'Sabri Zekkour',
								@NewID = @PersionID output



select @Return_RowEffected as RowEffected, @PersionID as ID


---------------------------------
--- reomve Store procedure

-- syntax : Drop procedure [schema].[procedure name]

-- Exmp:

	DROP PROCEDURE dbo.sp_AddNewEmployee 


--------------------------------
-- Procedure help us to get information about particular store procedure
--

exec sp_helptext SP_AddNewStudent
