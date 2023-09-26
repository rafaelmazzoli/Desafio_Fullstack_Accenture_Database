CREATE PROCEDURE [dbo].[Empresa_Insert]
	@Nome_Fantasia nvarchar(55),
	@Cnpj nvarchar(14),
	@Cep nvarchar(8)
AS
BEGIN
	INSERT INTO Empresas (Nome_Fantasia, Cnpj, Cep)
	OUTPUT inserted.*
	VALUES (@Nome_Fantasia, @Cnpj, @Cep);
END