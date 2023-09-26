CREATE PROCEDURE [dbo].[Empresa_Forenecedor_Delete]
@Id int
AS
BEGIN
	DELETE FROM Empresas_Fornecedores
	OUTPUT deleted.*
	WHERE Id = @Id;
END