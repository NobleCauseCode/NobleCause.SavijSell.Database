CREATE PROCEDURE [dbo].[stp_Users_Get]
	@UserId		INT
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT UserId, FirstName, LastName, Email, PostalCode, UserName, Active AS IsActive, IsConfirmed, CreatedDate, ModifiedDate
	FROM Users
	WHERE UserId = @UserId
	
END
