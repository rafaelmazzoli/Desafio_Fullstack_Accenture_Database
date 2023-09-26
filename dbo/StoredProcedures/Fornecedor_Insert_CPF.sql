CREATE PROCEDURE [dbo].[Fornecedor_Insert_Cpf]
	@Nome nvarchar(64),
	@Email nvarchar(256),
	@Cpf nvarchar(14),
	@Cep nvarchar(8),
	@Rg nvarchar(32),
	@Data_Nascimento Date
AS
BEGIN
	INSERT INTO Fornecedores (
		Nome,
		Email,
		Cnpj_Cpf,
		Cep,
		Rg,
		Data_Nascimento
	)
	OUTPUT inserted.*
	VALUES (
		@Nome,
		@Email,
		@Cpf,
		@Cep,
		@Rg,
		@Data_Nascimento
	);
END