/*
create view ProdutosCaros as
select NomeProduto, Preco
from Produto
where Preco > 1000;
*/

select * from ProdutosCaros;

/*
create view ProdutosMaisCarosPorCategoria as
select Categoria.NomeCategoria, Produto.NomeProduto, Produto.Preco
from Categoria
inner join Produto on Categoria.CategoriaID = Produto.CategoriaID
where Produto.Preco = (select MAX(Preco) from Produto as p
	where p.CategoriaID = Categoria.CategoriaID);
*/

select * from ProdutosMaisCarosPorCategoria;

--Exemplo 1 declara��o de variavel - declare / set
declare @MinPreco decimal(10, 2);
set @MinPreco = 100;

select nomeProduto, Preco
from Produto
where Preco >= @MinPreco;

--Exemplo 2 declara��o de variavel - declare / select
declare @TotalPedidos int;

select @TotalPedidos = COUNT(*)
from Pedido;

print 'O total de pedidos � ' + cast(@TotalPedidos as nvarchar(10));

--Exemplo 3 declaracao de variavel - declare / set m�dia
declare @MediaPreco decimal(10, 2);

set @MediaPreco = (
	select AVG(Preco)
	from Produto
	where CategoriaID = 1
);

print 'A m�dia do pre�o na categoria de eletr�nicos � ' + cast(@MediaPreco as nvarchar(10));


--Exemplo 4 com TOP - declare e select pra ter o produto mais caro
declare @ProdutoMaisCaro nvarchar(50);

select top 1 @ProdutoMaisCaro = NomeProduto
from Produto
order by Preco desc;

print 'O produto mais caro �: ' + @ProdutoMaisCaro;

--top :)

select top 10 NomeProduto, Preco
from Produto
order by Preco desc;