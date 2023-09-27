/*
use fbd;

create table pessoa(
id_pessoa integer primary key,
nome varchar(20),
cpf varchar(14)
);

create table pessoa_fisica(
id_pessoa integer primary key,
nome varchar(20),
cpf varchar(14)
);

insert into pessoa values(1, 'Pedro Cabral', '12345678991');

insert into pessoa_fisica select id_pessoa, nome, cpf from pessoa;

select * from pessoa;

select * from pessoa_fisica;
*/


/* exercício 2 para entrega - Felipe Thiago da Silva*/
select * from Funcionario;

/* consulta 1 */ 
select primeiro_nome, ultimo_nome, salario from funcionario
where salario > 2500; /* opcao 1 (pedido da tarefa) */ 
select primeiro_nome, ultimo_nome, salario from funcionario
where salario > 1000; /* opcao 2 (adaptado) */ 

/* consulta 2 */ 
select primeiro_nome, ultimo_nome, cod_setor from Funcionario
where nrmatricula = 7;

/* consulta 3 */ 
select primeiro_nome, ultimo_nome, salario from Funcionario
where not(salario between 1500 and 3000); /* opcao 1 (pedido da tarefa) */
select primeiro_nome, ultimo_nome, salario from Funcionario
where salario < 900 or salario > 1200; /* opcao 2 (adaptado) */
select primeiro_nome, ultimo_nome, salario from Funcionario
where not(salario between 900 and 1200); /* opcao 3 (adaptado) */

/* consulta 4 */ 
select primeiro_nome, ultimo_nome, cod_setor, data_admissao from Funcionario
where data_admissao > '01-01-2009'
order by data_admissao; 

/* consulta 5 */ 
select * from Funcionario
where cod_setor in (3,6)
order by nrmatricula;

/* consulta 6 */ 
select primeiro_nome, ultimo_nome from Funcionario
where primeiro_nome like '_a%';

/* consulta 7 */ 
select primeiro_nome, ultimo_nome from Funcionario
where primeiro_nome like '%a%' and primeiro_nome like '%e%';

/* consulta 8 */ 
select * from Funcionario
where cod_setor = 2
order by primeiro_nome;

/* consulta 9 */ 
select * from Funcionario
where cod_setor in (2, 5);

/* consulta 10 */ 
select * from Funcionario
where salario > 2300 and cod_setor = 3; /* opcao 1 (pedido da tarefa) */ 
select * from Funcionario
where salario > 1000 and cod_setor = 3; /* opcao 2 (adaptado) */ 