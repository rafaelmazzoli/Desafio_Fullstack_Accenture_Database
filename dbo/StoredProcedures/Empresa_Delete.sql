CREATE PROCEDURE [dbo].[Empresa_Delete]
@Id int
AS
BEGIN
	DELETE FROM Empresas
	OUTPUT deleted.*
	WHERE Id = @Id;
END