use FBD;

/* parte 1 */
create table Setor(
	cod_setor int identity(1,1) not null, /* parte 3 */
	nome_setor varchar(30) not null,
	constraint pk_setor primary key (cod_setor)
)
/* fim parte 1*/

/* parte 2 */
create table Funcionario(
	nrmatricula int identity(1,1) not null, /* parte 3 */
	primeiro_nome varchar(20) not null,
	ultimo_nome varchar(50),
	email varchar(200),
	telefone varchar(20),
	data_admissao date not null,
	salario float not null,
	cod_setor int not null,
	constraint pk_funcionario primary key (nrmatricula),
	foreign key (cod_setor) references setor(cod_setor) /* parte 3 */
)
/* fim parte 2*/


select * from setor;
select * from funcionario;

/* parte 4 */
insert into setor(nome_setor)
values ('Administração');

insert into setor(nome_setor)
values ('Financeiro');

insert into setor(nome_setor)
values ('Recursos Humanos');

insert into setor(nome_setor)
values ('Diretoria');

insert into setor(nome_setor)
values ('Produção');
/* fim parte 4 */

/* parte 5 */
insert into funcionario(primeiro_nome, ultimo_nome, email, telefone, data_admissao, salario, cod_setor)
values ('Alessandra', 'Alves', 'aleal1234@email.com', '00 99900-0000', '01/01/2020', 800, 1)

insert into funcionario(primeiro_nome, ultimo_nome, email, telefone, data_admissao, salario, cod_setor)
values ('Beatriz', 'Barbosa', 'bia000barbosa@email.com.br', '00 99123-1221', '14/04/2008', 4500, 4)

insert into funcionario(primeiro_nome, ultimo_nome, email, telefone, data_admissao, salario, cod_setor)
values ('Caique', 'Castro', 'emaildocaique@email.com', '00 99891-9119', '24/06/2023', 400, 5)

insert into funcionario(primeiro_nome, ultimo_nome, email, telefone, data_admissao, salario, cod_setor)
values ('Daniel', 'Dores', 'doresdodaniel@email.com.br', '00 98966-1001', '06/11/2011', 1200, 3)

insert into funcionario(primeiro_nome, email, data_admissao, salario, cod_setor)
values ('Elisete', 'elisete@email.com', '04/05/2012', 1100, 5)

insert into funcionario(primeiro_nome, email, telefone, data_admissao, salario, cod_setor)
values ('Felipe', 'felipe1405email@email.com', '00 99991-1341', '12/09/2022', 900, 2)

insert into funcionario(primeiro_nome, ultimo_nome, email, telefone, data_admissao, salario, cod_setor)
values ('Gabriela', 'Gonçalves', 'gabigonça123@email.com', '00 99009-0009', '08/09/2018', 850, 1)

insert into funcionario(primeiro_nome, email, telefone, data_admissao, salario, cod_setor)
values ('Henrique', 'henryhehehemail@email.com', '00 99778-0987', '30/03/2020', 900, 2)

/* fim parte 5 */

/*adaptações

update funcionario set ultimo_nome='Elise' where nrmatricula=5;
update funcionario set ultimo_nome='Freitas' where nrmatricula=6;
update funcionario set ultimo_nome='Hobbs' where nrmatricula=8;
update funcionario set telefone='00 90913-0472' where nrmatricula=5;

alter table funcionario alter column ultimo_nome varchar(50) not null;
alter table funcionario alter column email varchar(200) not null;
alter table funcionario alter column telefone varchar(20) not null;
 
 fim adaptações */

/* parte 6 */
select distinct cod_setor from funcionario;

select (ultimo_nome + ', ' + convert(varchar, cod_setor)) as 'Empregado e Setor' from funcionario; 

