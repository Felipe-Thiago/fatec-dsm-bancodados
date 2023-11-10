/*
CREATE DATABASE SUBCONSULTA;
go
use SUBCONSULTA;

-- Criação das tabelas
CREATE TABLE Categoria (
    CategoriaID INT PRIMARY KEY,
    NomeCategoria NVARCHAR(50)
);

CREATE TABLE Produto (
    ProdutoID INT PRIMARY KEY,
    NomeProduto NVARCHAR(50),
    CategoriaID INT,
	Preco decimal(10,2),
    FOREIGN KEY (CategoriaID) REFERENCES Categoria(CategoriaID)
);

CREATE TABLE Pedido (
    PedidoID INT PRIMARY KEY,
    DataPedido DATE,
    ProdutoID INT,
    FOREIGN KEY (ProdutoID) REFERENCES Produto(ProdutoID)
);

-- Inserção de dados nas tabelas
INSERT INTO Categoria (CategoriaID, NomeCategoria)
VALUES
    (1, 'Eletrônicos'),
    (2, 'Roupas'),
    (3, 'Alimentos');

INSERT INTO Produto (ProdutoID, NomeProduto, CategoriaID, Preco)
VALUES
    (1, 'Smartphone', 1, 4000),
    (2, 'Camiseta', 2, 50);


INSERT INTO Pedido (PedidoID, DataPedido, ProdutoID)
VALUES
    (1, '2023-01-15', 1),
    (2, '2023-02-20', 2);
  
-- Tabela Categoria
INSERT INTO Categoria (CategoriaID, NomeCategoria)
VALUES
    (4, 'Móveis'),
    (5, 'Livros'),
    (6, 'Jogos'),
    (7, 'Cosméticos'),
    (8, 'Informatica'),
    (9, 'Esportes'),
    (10, 'Brinquedos');

-- Tabela Produto
INSERT INTO Produto (ProdutoID, NomeProduto, CategoriaID, Preco)
VALUES
    (3, 'Sofá', 4, 2000),
    (4, 'Livro de Romance', 5, 40),
    (5, 'Xbox', 6, 2500),
    (6, 'Perfume', 7, 80),
    (7, 'Laptop', 8, 7000),
    (8, 'Bola de Futebol', 9, 20),
    (9, 'Quebra-Cabeça', 10, 120),
    (10, 'Chapéu', 2, 200);

-- Tabela Pedido
INSERT INTO Pedido (PedidoID, DataPedido, ProdutoID)
VALUES
    (3, '2023-03-10', 5),
    (4, '2023-04-05', 2),
    (5, '2023-05-12', 7),
    (6, '2023-06-25', 1),
    (7, '2023-07-03', 10),
    (8, '2023-08-18', 3),
    (9, '2023-09-09', 8),
    (10, '2023-10-22', 4);
*/


--Exemplo 1 - ALL (como se fosse E): seleciona
select nomeProduto from Produto
where Preco > all (select Preco from Produto where NomeProduto = 'Chapéu');

--Exemplo 2 - ALL: 
select nomeproduto
from Produto
where Preco > all (select Preco from Produto
	where CategoriaID = (select CategoriaID from Categoria
			where NomeCategoria = 'Eletrônicos'));
--mostra todos os produtos que o preço for maior que o preço 

--Exemplo 3 (como se fosse OU):
select nomeproduto
from Produto
where Preco < any (select Preco from Produto where CategoriaID = 1);
--mostra todos os produtos que o preço for menor que ao menos 1 produto de categoria 1

--Exemplo 4 (como se fosse OU dnv) (igual ao any):
select nomeproduto
from Produto
where Preco < some (select Preco from Produto where CategoriaID = 1);
--mostra todos os produtos que o preço for menor que ao menos 1 produto de categoria 1

--Exemplo 5 - EXISTS:
select nomeproduto
from Produto
where exists (select * from Pedido
		where Pedido.ProdutoID = Produto.ProdutoID);
--mostra todos os produtos que contém ao menos 1 pedido

--Exemplo 6 - IN:
select nomeproduto
from Produto
where ProdutoID in (select ProdutoID from Pedido where PedidoID in (1, 3));

--Exemplo 7 - IN:
select nomeproduto
from Produto
where CategoriaID = (select CategoriaID from Categoria
		where NomeCategoria = 'Eletrônicos');

--Exemplo 8 - IN:
select nomeproduto
from Produto
where CategoriaID in(select ProdutoID from Pedido
		where YEAR(dataPedido) = 2023 and MONTH(dataPedido) = 1);

--Exemplo 9 - IN:
select nomecategoria
from Categoria
where CategoriaID in (select CategoriaID from Produto where Preco > 100);

--Exemplo 10 - NOT IN:
select nomeproduto
from Produto
where ProdutoID not in(select ProdutoID from Pedido);

--Exemplo 11 - IN:
select nomeproduto
from Produto
where ProdutoID in (select ProdutoID from Pedido);

--Exemplo 12 - IN:
select nomecategoria
from Categoria
where CategoriaID in (select CategoriaID from Produto group by CategoriaID having COUNT(*) >= 2);

--Exemplo 13 - IN:
select nomeproduto
from Produto
where CategoriaID in (select CategoriaID from Categoria	
		where NomeCategoria like 'E%');

--Exemplo 14 - IN:
select nomecategoria
from Categoria
where CategoriaID in (select CategoriaID from Produto where ProdutoID in
		(select ProdutoID from Pedido where YEAR(datapedido) = 2023));

--Exemplo 15 - MAX:
select nomeproduto
from Produto
where Preco = (select MAX(preco) from Produto);

--Exemplo 16 - NOT IN:
select nomeproduto
from Produto
where ProdutoID not in(select ProdutoID from Pedido 
		where YEAR(datapedido) = 2023 and MONTH(datapedido) = 1);

--Exemplo 17 - IN:
select p.pedidoID, p.datapedido
from Pedido p
where p.ProdutoID in (select ProdutoID from Produto where CategoriaID = 1);

--Exemplo 18 - JOIN ON / IN:
select pr.nomeproduto, c.nomecategoria
from Produto pr
join Categoria c on pr.CategoriaID = c.CategoriaID
where pr.ProdutoID in (select ProdutoID from Pedido);

--Exemplo 19:
select c.nomecategoria, (select COUNT(*) from Produto
		where CategoriaID = c.categoriaid) as numeroprodutos
		from Categoria c;

		--select c.nomecategoria from Categoria c;

--Exemplo 20 - IN:
select pr.nomeproduto
from Produto pr
where pr.ProdutoID in (select ProdutoID from Pedido where
MONTH(datapedido) = 2 and YEAR(datapedido) = 2023);



--Exemplo 21 - UNION:
select nomecategoria
from Categoria
where CategoriaID in (select CategoriaID from Produto where Preco > 1000)
union
select nomecategoria
from Categoria
where CategoriaID in (select Produto.CategoriaID from Produto
join Pedido on Produto.ProdutoID = Pedido.ProdutoID);


--Exemplo 22 - UNION ALL: (traz duplicado tb)
select nomeproduto
from Produto
where Preco < 100
union all
select nomeproduto
from Produto
where Preco > 1000;


--Exemplo 23 - INTERSECT:
select nomecategoria
from Categoria
where CategoriaID in (select CategoriaID from Produto where Preco > 1000)
INTERSECT
select nomecategoria
from Categoria
where CategoriaID in (select Produto.CategoriaID from Produto 
join Pedido on Produto.ProdutoID = Pedido.ProdutoID);


--Exemplo 24 - EXCEPT:
select nomecategoria
from Categoria
where CategoriaID in (select CategoriaID from Produto where Preco > 100)
EXCEPT
select nomecategoria
from Categoria
where CategoriaID in (select Produto.CategoriaID from Produto
join Pedido on Produto.ProdutoID = Pedido.ProdutoID);