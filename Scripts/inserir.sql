-- Inserindo dados na tabela Estado

INSERT INTO Estado
	(Nome, UF)
VALUES
	('São Paulo', 'SP');

INSERT INTO Estado
	(Nome, UF)
VALUES
	('Rio de Janeiro', 'RJ');

INSERT INTO Estado
	(Nome, UF)
VALUES
	('Rio Grande do Sul', 'RS');
    
    
-- Inserindo dados na Tabela Municipio

INSERT INTO Municipio 
	(Estado_ID, Nome, CodIBGE)
VALUES
	(1, 'São José dos Campos', 3549904);
    
INSERT INTO Municipio 
	(Estado_ID, Nome, CodIBGE)
VALUES
	(3, 'Gramado', 4309100);
    
INSERT INTO Municipio 
	(Estado_ID, Nome, CodIBGE)
VALUES
	(2, 'Resende', 3304201);
    
    
-- Inserindo dados na Tabela Cliente

INSERT INTO Cliente
	(Nome,
	 CPF, 
     Celular, 
     EndLogradouro, 
	 EndNumero,
     EndMunicipio,
     EndCEP,
     Municipio_ID)
VALUES
	('Luiz Gomes de Souza',
	 '24367876534',
	 '12998547865',
     'R. Santo Expedito',
     '735',
	 3549904,
     12260040,
     2);
     
INSERT INTO Cliente
	(Nome,
	 CPF, 
     Celular, 
     EndLogradouro, 
	 EndNumero,
     EndMunicipio,
     EndCEP,
     Municipio_ID)
VALUES
	('Paulo Roberto Oliveira',
	 '86734578698',
	 '54997864534',
     'R Vinte e Dois',
     '674',
	 4309100,
     13356765,
     3);
     
INSERT INTO Cliente
	(Nome,
	 CPF, 
     Celular, 
     EndLogradouro, 
	 EndNumero,
     EndMunicipio,
     EndCEP,
     Municipio_ID)
VALUES
	('João Pedro da Silva',
	 '78945378623',
	 '24998346789',
     'R. das Palmeiras',
     '845',
	 3304201,
     12004567,
     4);
     
     
-- Inserindo dados na Tabela ContaReceber

INSERT INTO ContaReceber
	(Cliente_ID,
     DataConta,
     DataVencimento,
     Valor,
     Situacao)
VALUES
	(2,
     '2023-05-24',
     '2023-06-05',
	 159.99,
     3);
     
INSERT INTO ContaReceber
	(Cliente_ID,
     DataConta,
     DataVencimento,
     Valor,
     Situacao)
VALUES
	(3,
     '2023-12-22',
     '2024-01-15',
	 672.99,
     1);
     
INSERT INTO ContaReceber
	(Cliente_ID,
     DataConta,
     DataVencimento,
     Valor,
     Situacao)
VALUES
	(1,
     '2024-02-08',
     '2024-03-11',
	 3799.99,
     1);