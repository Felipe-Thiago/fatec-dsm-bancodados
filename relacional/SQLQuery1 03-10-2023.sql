use fbd;

select Funcionario.primeiro_nome, Funcionario.salario, Setor.nome_setor
from Funcionario, Setor;


select Funcionario.primeiro_nome, Funcionario.salario, Setor.nome_setor
from Funcionario, Setor
where Funcionario.cod_setor = Setor.cod_setor

select f.primeiro_nome, f.salario, s.nome_setor
from Funcionario f, Setor s
where f.cod_setor = s.cod_setor;

select f.primeiro_nome, f.salario, s.nome_setor
from Funcionario f
inner join Setor s on f.cod_setor = s.cod_setor;


select c.nome_cliente, p.num_pedido
from cliente c
inner join pedido p on c.Cod_cliente = p.cod_cliente;

select * from cliente;
select * from pedido;


select c.Nome_cliente, p.num_pedido
from cliente c
left outer join pedido p on c.Cod_cliente = p.cod_cliente

select c.nome_cliente, p.num_pedido
from cliente c
left outer join pedido p on c.Cod_cliente = p.cod_cliente
where p.cod_cliente is null /* ou not null */


/*insert into Setor (nome_setor) values ('Marketing'); */

select f.primeiro_nome, f.salario, s.nome_setor
from Funcionario f
right outer join Setor s on f.cod_setor = s.cod_setor;

select f.primeiro_nome, f.salario, s.nome_setor
from Funcionario f
right outer join Setor s on f.cod_setor = s.cod_setor
where f.cod_setor is null;


select c.nome_cliente, p.num_pedido
from cliente c
full outer join pedido p on c.Cod_cliente = p.cod_cliente;

select f.primeiro_nome, f.salario, s.nome_setor
from Funcionario f
full outer join Setor s on f.cod_setor = s.cod_setor;


select f.primeiro_nome, f.salario, s.nome_setor
from Funcionario f
full outer join Setor s on f.cod_setor = s.cod_setor
where f.cod_setor is null or s.cod_setor is null;

select c.nome_cliente, p.num_pedido
from cliente c
full outer join pedido p on c.Cod_cliente = p.cod_cliente
where c.Cod_cliente is null or p.cod_cliente is null;


select f.primeiro_nome, f.salario, s.nome_setor
from Funcionario f
cross join Setor s
order by f.primeiro_nome;

select c.nome_cliente, p.num_pedido
from cliente c
cross join pedido p
order by c.Nome_cliente;



select MIN(salario_fixo) as 'menor salario', MAX(salario_fixo) as 'maior salario'
from vendedor;

select SUM (quantidade) as 'quantidade total'
from item_pedido
where cod_produto = 3;


select AVG(salario_fixo) as MEDIA_SALARIO
from vendedor;

select COUNT(*) as 'vendedores que ganham 2,5k'
from vendedor 
where salario_fixo > 2500;


select num_pedido, total_produtos = COUNT(*)
from item_pedido
group by num_pedido;


select num_pedido, total_produtos = COUNT(*)
from item_pedido
where quantidade > 5
group by num_pedido
having COUNT(*) > 1;


select * from produto
where descricao = 'alface';

/*
update produto
set Valor_unitario = 4.00
where descricao = 'alface';
*/

update produto
set Valor_unitario = Valor_unitario * 1.025
where Valor_unitario <
	(select AVG(valor_unitario)
	from produto
	where Unidade = 'KG');

delete from vendedor
where faixa_comissao is null;

select * from vendedor;