CREATE FUNCTION EhEspecial (@Especial bit)
RETURNS int
WITH EXECUTE AS CALLER
AS
BEGIN
	DECLARE @Ret INT	
    SELECT @Ret = IIF(@Especial = 1, 1, 0)
	RETURN @Ret
END;
GO

SET STATISTICS IO ON;  

SELECT * FROM ClienteMvp WHERE dbo.EhEspecial(ClienteEspecial) = 1