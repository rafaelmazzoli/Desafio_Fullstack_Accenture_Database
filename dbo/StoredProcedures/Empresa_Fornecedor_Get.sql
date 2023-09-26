CREATE PROCEDURE [dbo].[Empresa_Fornecedor_Get]
	@Id int
AS
BEGIN
	SELECT * FROM Empresas_Fornecedores WHERE Id = @Id;
END;
