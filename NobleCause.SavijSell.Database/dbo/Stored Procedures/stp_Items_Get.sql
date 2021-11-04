CREATE  PROCEDURE [dbo].[stp_Items_Get]  --INSERT PROC NAME HERE
AS
/* ****************************************************************************
Change History
*******************************************************************************
DATE        CHANGED BY      REASON			DESCRIPTION
2021-10-09	Savij Coder		Script Created	Gets all items (will change later)
*******************************************************************************
*/
BEGIN
	BEGIN TRY
		SET NOCOUNT ON;
		SELECT	i.ItemId
				,i.UserId
				,i.Title
				,i.[Description]
				,i.[Image]
				,i.PostalCode
				,i.AskingPrice
				,i.CreatedDate
		FROM	Items i WITH (NOLOCK)
		WHERE	i.IsActive = 1
				AND i.IsSold = 0
     
	END TRY
	BEGIN CATCH
 
	DECLARE @Error_Message VARCHAR(5000)
	DECLARE @Error_Severity INT
	DECLARE @Error_State INT
 
	SELECT @Error_Message = ERROR_MESSAGE()
	SELECT @Error_Severity = ERROR_SEVERITY()
	SELECT @Error_State = ERROR_STATE()
 
	RAISERROR (@Error_Message, @Error_Severity, @Error_State)
 
	END CATCH
END