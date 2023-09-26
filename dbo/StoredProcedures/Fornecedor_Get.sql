CREATE PROCEDURE [dbo].[Fornecedor_Get]
	@Id int
AS
BEGIN
	SELECT * FROM Fornecedores WHERE Id = @Id;
END;