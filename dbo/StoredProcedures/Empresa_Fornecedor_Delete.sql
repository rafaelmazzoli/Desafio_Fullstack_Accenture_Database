CREATE PROCEDURE [dbo].[Empresa_Fornecedor_Delete]
@Id int
AS
BEGIN
	DELETE FROM Empresas_Fornecedores
	OUTPUT deleted.*
	WHERE Id = @Id;
END