CREATE TABLE [dbo].[Empresas_Fornecedores]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Id_Empresa] INT NOT NULL, 
    [Id_Fornecedor] INT NOT NULL, 
    CONSTRAINT [FK_Empresas_Fornecedores_IdEmpresas] FOREIGN KEY ([Id_Empresa]) REFERENCES [Empresas]([Id]) ON DELETE CASCADE, 
    CONSTRAINT [FK_Empresas_Fornecedores_IdFonecedores] FOREIGN KEY ([Id_Fornecedor]) REFERENCES [Fornecedores]([Id]) ON DELETE CASCADE 
)

GO

CREATE UNIQUE INDEX [IX_Empresas_Fornecedores_Unique_Row] ON [dbo].[Empresas_Fornecedores] ([Id_Empresa], [Id_Fornecedor])
