CREATE PROCEDURE [dbo].[Fornecedor_Delete]
@Id int
AS
BEGIN
	DELETE FROM Fornecedores
	OUTPUT deleted.*
	WHERE Id = @Id;
END