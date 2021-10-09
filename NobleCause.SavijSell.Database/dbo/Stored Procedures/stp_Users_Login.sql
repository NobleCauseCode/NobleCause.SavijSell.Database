CREATE PROCEDURE [dbo].[stp_Users_Login]
	@Email		VARCHAR(255)
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT [UserId]
      ,[FirstName]
      ,[LastName]
      ,[Email]
	  ,[Password]
      ,[PostalCode]
      ,[UserName]
      ,[Picture]
      ,[Active] AS IsActive
      ,[IsConfirmed]
      ,[CreatedDate]
      ,[ModifiedDate]
	FROM Users
	WHERE Email = @Email
	
END
