select * from item_pedido;

select num_pedido, cod_produto, quantidade
from item_pedido
where quantidade = 45;
/*
select * from funcionario;
select * from setor;

insert into setor(nome_setor)
values ('TI');

insert into setor(nome_setor)
values ('Compras');


insert into funcionario(primeiro_nome, ultimo_nome, email, telefone, data_admissao, salario, cod_setor)
values ('Isabel', 'Inácio', 'isabelemailisabel@email.com', '00 99912-0993', '21-10-2013', 900, 6)

insert into funcionario(primeiro_nome, ultimo_nome, email, telefone, data_admissao, salario, cod_setor)
values ('Júlio', 'Jordão', 'julio@email.com.br', '00 99012-3456', '12-05-2015', 800, 7)
*/

select nrmatricula, primeiro_nome, ultimo_nome, cod_setor from Funcionario where cod_setor = 1;

select primeiro_nome, salario from Funcionario where salario < 900;

select primeiro_nome, salario
from Funcionario
where salario between 850 and 1100;

select cod_produto, descricao
from produto
where valor_unitario between 0.32 and 2.00;

select primeiro_nome, salario, cod_setor
from Funcionario
where primeiro_nome like '%ss%';

select primeiro_nome, salario, cod_setor
from Funcionario
where primeiro_nome like 'G%';

select cod_produto, descricao, unidade
from produto
where unidade like 'K%';

select primeiro_nome, salario, cod_setor
from Funcionario
where primeiro_nome like 'Jú%';

select primeiro_nome, salario, cod_setor
from Funcionario
where ultimo_nome like '%alves';

select primeiro_nome, salario, cod_setor
from Funcionario
where ultimo_nome like '%alves%';

select primeiro_nome, salario, cod_setor
from Funcionario
where primeiro_nome like 'a_________';

select primeiro_nome, salario, cod_setor
from Funcionario
where primeiro_nome like '______a';

select primeiro_nome, salario, cod_setor
from Funcionario
where primeiro_nome like '_a_';

select primeiro_nome, salario, cod_setor
from Funcionario
where primeiro_nome like '%a_';

select primeiro_nome, salario, cod_setor
from Funcionario
where primeiro_nome like '_a%';

select primeiro_nome, salario, cod_setor
from Funcionario
where primeiro_nome like '______';

select primeiro_nome, salario, cod_setor
from Funcionario
where primeiro_nome like '_______%';

select primeiro_nome, salario, cod_setor
from Funcionario
where primeiro_nome like '%_____%';

select nome_vendedor
from vendedor
where faixa_comissao in ('A', 'B');

select primeiro_nome, salario, cod_setor
from Funcionario
where cod_setor in (1, 2);

select * from Funcionario f
where cod_setor not in(1, 2, 3);

select * from cliente
where IE is not null;

select primeiro_nome, salario, cod_setor
from Funcionario
where email is not null;

select nrmatricula, ultimo_nome, salario
from Funcionario
where salario > 1000 and nrmatricula >= 3;

select * from Funcionario
where salario > 2500 or cod_setor = 1;

select descricao
from produto
where Unidade = 'M' and Valor_unitario = 1.05;

select descricao
from produto
where Unidade = 'UN' and Valor_unitario = 4;

select nome_vendedor, salario_fixo
from vendedor
order by nome_vendedor;

select * from Funcionario
where cod_setor not in(4, 5)
order by cod_setor desc;

select * from Funcionario
where cod_setor not in(4, 5)
