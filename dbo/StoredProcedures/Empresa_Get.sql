CREATE PROCEDURE [dbo].[Empresa_Get]
	@Id int
AS
BEGIN
	SELECT * FROM Empresas WHERE Id = @Id;
END;