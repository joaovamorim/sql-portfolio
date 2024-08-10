-- Tabela Estado

CREATE TABLE Estado
(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL,
    UF CHAR(2) NOT NULL
);

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
    
-- Tabela Municipio

CREATE TABLE Municipio
(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    Estado_ID INT NOT NULL,
    Nome VARCHAR(80) NOT NULL,
    CodIBGE INT NOT NULL,
    CONSTRAINT FK_Municipio_Estado1_Idx FOREIGN KEY (Estado_ID)
		REFERENCES Estado (ID)
);

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
    
-- Tabela Cliente

CREATE TABLE Cliente
(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(80) NOT NULL,
    CPF CHAR(11) NOT NULL,
    Celular  CHAR(11),
    EndLogradouro VARCHAR(100) NOT NULL,
    EndNumero VARCHAR(10) NOT NULL,
    EndMunicipio INT NOT NULL,
    EndCEP CHAR(8),
    Municipio_ID INT NOT NULL,
    CONSTRAINT FK_Cliente_Municipio1_Idx FOREIGN KEY (Municipio_ID)
		REFERENCES Municipio (ID)
);

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
     
-- Tabela ContaReceber

CREATE TABLE ContaReceber
(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    Cliente_ID INT NOT NULL,
    CONSTRAINT FK_ContaReceber_Cliente_Idx FOREIGN KEY (Cliente_ID)
		REFERENCES Cliente (ID),
    FaturaVendaID INT,
    DataConta DATE NOT NULL,
    DataVencimento DATE NOT NULL,
    Valor DECIMAL(18,2),
    Situacao ENUM('1', '2', '3')
);

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