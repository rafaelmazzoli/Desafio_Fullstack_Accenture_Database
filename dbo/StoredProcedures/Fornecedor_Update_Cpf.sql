CREATE PROCEDURE [dbo].[Fornecedor_Update_Cpf]
	@Id int,
	@Nome nvarchar(64),
	@Email nvarchar(256),
	@Cpf nvarchar(14),
	@Cep nvarchar(8),
	@Rg nvarchar(32),
	@Data_Nascimento Date
AS
BEGIN
	UPDATE Fornecedores SET
		Nome = @Nome,
		Email = @Email,
		Cnpj_Cpf = @Cpf,
		Cep = @Cep,
		Rg = @Rg,
		Data_Nascimento = @Data_Nascimento
	OUTPUT inserted.*
	WHERE Id = @Id;
END