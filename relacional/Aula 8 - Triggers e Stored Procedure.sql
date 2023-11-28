create trigger trg_PreventCategoriaDelection
on Categoria
instead of delete
as
begin
	if exists (select 1 from Produto where produto.categoriaID in (select deleted.categoriaid from deleted))
	begin
	raiserror('Não é possível excluir categorias associadas a produtos.', 16, 1)
	rollback transaction
	end
	else
		delete from Categoria where Categoria.CategoriaID in (select deleted.categoriaID from deleted)
end



select * from Categoria;

delete from Categoria where CategoriaID = 1

insert into Categoria(CategoriaID, NomeCategoria) values (13, 'Games');

delete from Categoria where CategoriaID = 13;




create table LogPreco(
	ProdutoID int,
	NovoPreco decimal(10,2),
	DataAlteracao date
);


create trigger trg_LogPrecoAlterado
on Produto
after update
as
begin
	insert into LogPreco(ProdutoID, NovoPreco, DataAlteracao)
	select produtoID, preco, GETDATE()
	from inserted
end


update Produto set Preco = 4100 where ProdutoID = 1

select * from LogPreco;





create trigger trg_LimitePreco
on produto
instead of insert 
as
begin
	if exists (select 1 from inserted where preco > 10000)
	begin
		raiserror ('O preço do produto não pode exceder R$10.000.', 16, 1)
		rollback transaction
	end
	else
		insert into Produto(ProdutoID, NomeProduto, CategoriaID, Preco)
		select produtoID, nomeproduto, categoriaid, preco
		from inserted
end

drop trigger trg_LimitePreco


insert into Produto values (14, 'Ultrabook', 8, 15800)

select * from Produto;











create proc consulta_produto
as
select * from produto
where NomeProduto like '%a%';


exec consulta_produto;




create procedure InserirNovoProduto
	@IDProd INT,
	@Nome nvarchar(50),
	@CategoriaID int,
	@Preco decimal(10,2)

as
begin
	insert into Produto(ProdutoID, NomeProduto, CategoriaID, Preco)
	values(@IDProd, @Nome, @CategoriaID, @Preco)
end


exec InserirNovoProduto 14, 'SmartWatch', 1, 2200

select * from Produto;




create procedure AtualizarPrecoProduto
	@ProdutoID int,
	@NovoPreco decimal(10,2)

as
begin
	update Produto
	set Preco = @NovoPreco
	where ProdutoID = @ProdutoID
end


select * from Produto;

exec AtualizarPrecoProduto 14, 2500




create procedure ListarProdutosPorCategoria
	@Categoria NVARCHAR(50)
as
begin
	select ProdutoID, nomeproduto, preco
	from Produto
	where CategoriaID = (select CategoriaID from Categoria
						where NomeCategoria = @Categoria)
end


exec ListarProdutosPorCategoria 'Roupas'