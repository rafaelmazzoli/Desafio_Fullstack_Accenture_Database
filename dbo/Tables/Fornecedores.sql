CREATE TABLE [dbo].[Fornecedores]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Nome] NVARCHAR(64) NOT NULL, 
    [Email] NVARCHAR(256) NOT NULL, 
    [Cnpj_Cpf] NVARCHAR(14) NOT NULL, 
    [Cep] NVARCHAR(8) NOT NULL,
    [Rg] NVARCHAR(32) NULL,
    [Data_Nascimento] DATE NULL
)

GO

CREATE UNIQUE INDEX [IX_Fornecedores_Cnpj_Cpf] ON [dbo].[Fornecedores] ([Cnpj_Cpf])
