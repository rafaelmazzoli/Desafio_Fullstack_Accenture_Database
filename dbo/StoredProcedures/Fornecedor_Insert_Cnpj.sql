CREATE PROCEDURE [dbo].[Fornecedor_Insert_Cnpj]
	@Nome nvarchar(64),
	@Email nvarchar(256),
	@Cnpj nvarchar(14),
	@Cep nvarchar(8)
AS
BEGIN
	INSERT INTO Fornecedores (
		Nome,
		Email,
		Cnpj_Cpf,
		Cep
	)
	OUTPUT inserted.*
	VALUES (
		@Nome,
		@Email,
		@Cnpj,
		@Cep
	);
END