/*
use FBD;

create table Cidade(
codcidade int identity(1,1) not null primary key,
nomecidade varchar(40),
cdestado varchar(2)
);

create table Empregado(
Nrmatricula int identity(1,1) primary key,
nome varchar(50),
data_admissao datetime,
salario float
);
*/

/*
insert into Cidade(nomecidade, cdestado)
values ('Votorantim', 'SP');

insert into Cidade(nomecidade, cdestado)
values('Sorocaba', 'SP');

insert into Cidade(nomecidade, cdestado)
values('Campinas', 'SP');

insert into Cidade(nomecidade, cdestado)
values('Belo Horizonte', 'MG');

insert into Cidade(nomecidade, cdestado)
values('Rio de Janeiro', 'RJ');
*/

/*
select * from Empregado;

insert into Empregado(nome, data_admissao, salario)
values('Felipe Thiago', '31/01/2022', 1758.61);

insert into Empregado(nome, data_admissao, salario)
values('Leonardo Nunes', '01/02/2023', 600);

insert into Empregado(nome, data_admissao, salario)
values('Wilson Bonilha', '04/03/2022', 800);

insert into Empregado(nome, data_admissao, salario)
values('Pedro Elias', '02/03/2022', 1150);

insert into Empregado(nome, data_admissao, salario)
values('José Silva', '12/04/2021', 2140.50);
*/

select * from cidade;

/* suprime informações repetidas */
select distinct cdestado from cidade; 


select cdestado, nomecidade from cidade;

/* Define nomes para o nome da coluna sem ser o padrão */
select 'Código do Cliente', cod_cliente, 'Nome do Cliente', nome_cliente from cliente;

select 'cod_cliente' as 'Código do Cliente', nome_cliente as 'Nome do Cliente' from cliente;

/* Realiza uma soma a uma coluna do tipo int e atribui o resultado a uma nova coluna */
select nome, salario, salario + 300 aumento_salario from empregado;

/* Concatena valores */
select 'Funcionario: ' + nome + '; Salário: ' + CONVERT(VARCHAR, salario), salario, nome from empregado;