CREATE PROCEDURE [dbo].[Empresa_Forenecedor_Update]
@Id int,
@Id_Empresa int,
@Id_Fornecedor int
AS
BEGIN
	UPDATE Empresas_Fornecedores SET
		@Id_Empresa = @Id_Empresa,
		@Id_Fornecedor = @Id_Fornecedor
	OUTPUT inserted.*
	WHERE Id = @Id;
END