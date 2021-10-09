CREATE PROCEDURE [dbo].[stp_Users_Insert]
	@FirstName		VARCHAR(50)
	,@LastName		VARCHAR(50)
	,@Email			VARCHAR(255)
	,@Password		VARCHAR(MAX)
	,@PostalCode	VARCHAR(25)
	,@UserName		VARCHAR(15)
	
AS
BEGIN
	
	SET NOCOUNT ON;

	INSERT INTO Users
	(FirstName, LastName, Email, Password, PostalCode, UserName, Active, IsConfirmed, CreatedDate, ModifiedDate)
	VALUES
	(
		@FirstName
		,@LastName
		,@Email
		,@Password
		,@PostalCode
		,@UserName
		,1
		,0
		,GetDate()
		,GetDate()
	)
END
