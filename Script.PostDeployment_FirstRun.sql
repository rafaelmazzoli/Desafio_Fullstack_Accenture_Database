IF NOT EXISTS (SELECT TOP 1 1 FROM Empresas)
BEGIN
	INSERT INTO Empresas (Nome_Fantasia, Cnpj, Cep)
	VALUES
		('Rafael e Tânia Entulhos ME', '44750116000113', '08761470'),
		('Mariah e Helena Gráfica Ltda', '07782128000101', '45652520'),
		('Jéssica e Francisco Eletrônica Ltda', '21262824000100', '92320250'),
		('Iago e Lucca Restaurante Ltda', '77219320000161', '64077855');

	INSERT INTO Fornecedores (Nome, Cnpj_Cpf, Cep, Email, Rg, Data_Nascimento)
	VALUES
		('Mariana e Vitória Limpeza ME', '56181800000100', '68909888', 'auditoria@marianaevitorialimpezame.com.br', null, null),
		('Heloise Juliana Barbosa', '27148993075', '72855861', 'heloise_juliana_barbosa@tcotecnologia.com.br', '156895924', '1994-06-24'),
		('Luna e Osvaldo Telecom ME', '23746323000124', '68906972', 'marketing@lunaeosvaldotelecomme.com.br', null, null),
		('Pietro Filipe Henrique dos Santos', '66991050008', '65602030', 'pietrofilipedossantos@dddrin.com.br', '174950846', '1982-07-15');

	
	INSERT INTO Empresas_Fornecedores (Id_Empresa, Id_Fornecedor)
	VALUES
		(1, 1),
		(1, 2),
		(2, 3),
		(3, 4),
		(4, 4);
END