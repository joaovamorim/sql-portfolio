-- Criando a VIEW

CREATE OR REPLACE VIEW VW_Contas_Nao_Pagas
AS
SELECT	ct.ID AS ID_Conta,
		cl.Nome AS Nome_Cliente,
        cl.CPF AS CPF_Cliente,
        ct.DataVencimento AS DataVencimento_Conta,
        ct.Valor AS Valor_Conta
FROM	ContaReceber ct 
JOIN 	Cliente cl ON ct.Cliente_ID = cl.ID
WHERE 	Situacao = 1;


-- Consultando a VIEW

SELECT	*
FROM	VW_Contas_Nao_Pagas;