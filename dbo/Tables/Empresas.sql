CREATE TABLE [dbo].[Empresas]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Nome_Fantasia] NVARCHAR(55) NOT NULL, 
    [Cnpj] NVARCHAR(14) NOT NULL, 
    [Cep] NVARCHAR(8) NOT NULL
)

GO

CREATE UNIQUE INDEX [IX_Empresas_Cnpj] ON [dbo].[Empresas] ([Cnpj])
