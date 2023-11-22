select * from Produto;

--Exemplo 1 begin transaction / commit:
begin transaction;

update Produto
set Preco = Preco * 1.1;

commit;




--Exemplo 2 begin transaction / commit:
select c.CategoriaID, c.NomeCategoria, p.ProdutoID, p.NomeProduto, p.CategoriaID, p.Preco
from categoria c, Produto p
where c.CategoriaID = p.CategoriaID;

--inicia transação
begin transaction;

--insere novas categorias
insert into Categoria(CategoriaID, NomeCategoria)
values(11, 'Decoração'),
	(12, 'Automóveis');

--insere novos produtos nas novas categorias
insert into Produto(ProdutoID, NomeProduto, CategoriaID, Preco)
values(11, 'Vaso Decorativo', 11, 30),
	(12, 'Pneu de Carro', 12, 100);

--confirma a transação
commit;



--Exemplo 1 begin transaction / rollback:
select *
from Produto;

begin transaction;

--Inserindo dados incorretos
insert into Produto(ProdutoID, NomeProduto, CategoriaID, Preco)
values(11, 'Produto Errado', 100, 9999);

--detectou um erro, então desfaz as operações
rollback;


--Exemplo 2 begin transaction / rollback:
begin transaction;

--Atualização com erro
update Produto set CategoriaID = 100 where ProdutoID = 3;
if @@ERROR = 0
commit
else
rollback; --detectou um erro, então desfaz as operações
print 'Atualização na tabela Produto foi Cancelada';



--Exemplo 1 CASE - categorização de preços de produtos
select NomeProduto, Preco,
	case
		when preco < 100 then 'Barato'
		when preco >= 100 and preco < 1000 then 'Médio'
		else 'Caro'
	end as categoriaPreco
from Produto;

--Exemplo 2 CASE - definir desconto com base na categoria
select NomeProduto, CategoriaID, Preco,
	case CategoriaID
		when 1 then Preco * 0.9 --Categoria Eletrônicos (10% de desconto)
		when 2 then Preco * 0.95 --Categoria Roupas (5% de desconto)
		else Preco
	end as PrecoComDesconto
from Produto;

--Exemplo 4 CASE - Classificação condicional de pedidos
select PedidoID, DataPedido,
	case
		when dataPedido < '01-06-2023' then 'Antigo'
		else 'Novo'
	end as StatusPedido
from Pedido;





--Exemplo 1 IF ELSE - Inserção de dados condicional
declare @CategoriaDesejada INT = 1; --Categoria desejada
if @CategoriaDesejada = 1
begin
	insert into Produto(ProdutoID, NomeProduto, CategoriaID, Preco)
	values(13, 'Tablet', @CategoriaDesejada, 1500);
end;

select * from Produto;


--Exemplo 3 - IF ELSE - Exibição de categorias com ELSE
declare @CategoriaID INT = 1; --Categoria desejada
declare @NomeCategoria NVARCHAR(50);
if exists (select * from Categoria where CategoriaID = @CategoriaID)
begin
	select @NomeCategoria = NomeCategoria from Categoria
	where CategoriaID = @CategoriaID;
	print 'Nome da Categoria: ' + @NomeCategoria;
end
else
begin
	print 'Categoria não encontrada.';
end;




--Exemplo 1 WHILE
declare @Counter INT
set @Counter = 1

while @Counter <= 10
begin
	update Produto
	set Preco = Preco + 100
	where ProdutoID = @Counter
	set @Counter = @Counter + 1
end

select * from Produto;

--Exemplo 2 WHILE

declare @Counter INT
set @Counter = 1

while @Counter < = (select COUNT(*) from Produto)
begin
	declare @PrecoAtual decimal(10, 2)
	select @PrecoAtual = preco from Produto where ProdutoID = @Counter --Seleciona o preço do produto

	if @PrecoAtual > 1000
	begin
		update Produto
		set Preco = Preco * 1.1
		where ProdutoID = @Counter
	end

	set @Counter = @Counter + 1
end;

select * from Produto;