CREATE PROCEDURE [dbo].[Empresa_Update]
@Id int,
@Nome_Fantasia nvarchar(55),
@Cnpj nvarchar(14),
@Cep nvarchar(8)
AS
BEGIN
	UPDATE Empresas SET
		Nome_Fantasia = @Nome_Fantasia,
		Cnpj = @Cnpj,
		Cep = @Cep
	OUTPUT inserted.*
	WHERE Id = @Id;
END