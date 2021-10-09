CREATE PROCEDURE [dbo].[stp_Users_GetByEmail]
	@Email		VARCHAR(255)
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT TOP 1 UserId, FirstName, LastName, Email, Password, PostalCode, UserName, Active AS IsActive, IsConfirmed, CreatedDate, ModifiedDate
	FROM Users
	WHERE Email = @Email
	
END
