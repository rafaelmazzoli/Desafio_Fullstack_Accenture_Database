CREATE PROCEDURE [dbo].[Fornecedor_Update_Cnpj]
	@Id int,
	@Nome nvarchar(64),
	@Email nvarchar(256),
	@Cnpj nvarchar(14),
	@Cep nvarchar(8)
AS
BEGIN
	UPDATE Fornecedores SET
		Nome = @Nome,
		Email = @Email,
		Cnpj_Cpf = @Cnpj,
		Cep = @Cep
	OUTPUT inserted.*
	WHERE Id = @Id;
END