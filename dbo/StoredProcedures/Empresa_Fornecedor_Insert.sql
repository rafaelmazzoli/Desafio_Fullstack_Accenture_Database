CREATE PROCEDURE [dbo].[Empresa_Fornecedor_Insert]
	@Id_Empresa int,
	@Id_Fornecedor int
AS
BEGIN
	INSERT INTO Empresas_Fornecedores (Id_Empresa, Id_Fornecedor)
	OUTPUT inserted.*
	VALUES (@Id_Empresa, @Id_Fornecedor);
END