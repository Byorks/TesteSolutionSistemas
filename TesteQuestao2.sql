CREATE DATABASE teste2;
GO

USE teste2;
GO

CREATE TABLE Produtos (
	IDPRODUTO INT NOT NULL PRIMARY KEY ,
	NOME_PROD NVARCHAR(255),
	PRC_PROD DECIMAL,
);
GO

CREATE TABLE Cores (
	IDCOR INT NOT NULL PRIMARY KEY,
	NOME_COR NVARCHAR(255),
	PRC_COR DECIMAL,
	ID_PRODUTO INT FOREIGN KEY REFERENCES Produtos(IDPRODUTO),
);
GO

INSERT INTO Produtos (IDPRODUTO, NOME_PROD, PRC_PROD)
VALUES 
(1, 'Monitor LCD Samsung 740N', 750.00),
(2, 'Mouse Microsoft N', 40.00),
(3, 'Notebook Sony Vaio', 11320.34),
(4, NULL, 329.99);
GO

SELECT * FROM Produtos;


INSERT INTO Cores(IDCOR, NOME_COR, PRC_COR,ID_PRODUTO)
VALUES 
(1, 'Preto', 5.00, 1),
(2, 'Azul', 10.00, 1),
(3, 'Amarelo', 20.00, 2),
(4, 'Chumbo', 3.00, 4);
GO


SELECT * FROM Cores;

-- Elabore o comando SQL que retorne **:

-- 1 - Nome do Produto (NOME_PROD)
SELECT NOME_PROD FROM Produtos;


-- 2 - Pre�o do Produto (PRC_PROD + PRC_COR)
SELECT PRC_PROD FROM Produtos SELECT PRC_COR FROM Cores;

SELECT PRC_PROD, SUM(PRC_PROD) TOTAL FROM 
 (
  SELECT PRC_COR
  FROM Cores
  UNION ALL 
  SELECT PRC_PROD
  FROM Produtos
 )
 GROUP BY Produtos

-- Elabore o comando SQL que retorne **:
--�	Nome do Produto (NOME_PROD)
--�	Pre�o do Produto (PRC_PROD + PRC_COR)
--�	O Pre�o do Produto com um acr�scimo de 10%
--�	O Pre�o do Produto com um desconto de 10%
--�	Cor do Produto
--Este comando deve atender as seguintes premissas:
--�	Produtos com Nome nulo n�o devem ser retornados
--�	O pre�o do produto � composto do pre�o do produto mais o pre�o da cor, caso n�o haja cor para o produto, ele � composto apenas do pre�o do produto.
--�	Os produtos de menor pre�o devem ser exibidos antes dos produtos de maior pre�o.
--Obs: � apenas um comando sql que retorna os campos (em **) listados a partir das premissas acima.
