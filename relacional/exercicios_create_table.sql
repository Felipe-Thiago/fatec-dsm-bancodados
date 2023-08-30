/*create database BDExercicios

Use BDExercicios
*/

/* exer001
create table tbl_livros(
livro_id int not null,
titulo varchar(200) not null,
autor varchar(100) not null,
ano_publicado int not null,
genero varchar(50) not null,
Constraint PK_livro Primary Key(livro_id)
)

create table tbl_emprestimos(
emprestimo_id int not null,
data_emprestimo date not null,
data_devolucao date not null,
livro_id int not null,
Constraint PK_emprestimo Primary Key(emprestimo_id),
Constraint FK_Livro Foreign Key(livro_id)
references tbl_livros(livro_id)
)
*/

/*
create table tbl_estados(
	estado_id int not null,
	nome varchar(100) not null,
	sigla varchar(2) not null,
	regiao varchar(50) not null,
	populacao int
	constraint pk_estado primary key(estado_id)
)

create table tbl_cidades(
	cidade_id int not null,
	nome varchar(100) not null,
	estado_id int not null
	constraint pk_cidades primary key(cidade_id),
	constraint fk_cidades foreign key(estado_id)
	references tbl_estados(estado_id)
)

alter table tbl_cidades
drop constraint FK__tbl_cidad__estad__07C12930

alter table tbl_cidades
add constraint fk_estados foreign key(estado_id)
references tbl_estados(estado_id)

alter table tbl_cidades
add populacao int, area_km2 decimal(10,2) not null

alter table tbl_emprestimos
add status varchar(20) not null
*/

/*
create table tbl_diretores(
diretor_id int not null,
nome varchar(100) not null,
data_nascimento date not null,
email varchar(150) not null,
telefone varchar(20) not null,
constraint pk_diretor primary key(diretor_id)
)

create table tbl_departamentos(
departamento_id int not null,
nome varchar(200) not null,
localizacao varchar(150) not null,
descricao text,
diretor_id int not null,
constraint pk_departamento primary key(departamento_id),
constraint fk_departamento foreign key(diretor_id)
references tbl_diretores(diretor_id)
)

alter table tbl_departamentos
drop constraint fk_departamento

alter table tbl_departamentos
add constraint fk_diretores foreign key(diretor_id)
references tbl_diretores(diretor_id)
*/

/*
create table tbl_times(
time_id int not null,
nome varchar(200) not null,
cidade varchar(100) not null,
fundacao date not null,
tecnico varchar(150) not null,
constraint pk_time primary key(time_id)
)

create table tbl_jogadores(
jogador_id int not null,
nome varchar(100) not null,
posicao varchar(50) not null,
idade int not null,
time_id int not null,
constraint pk_jogador primary key(jogador_id),
constraint fk_time foreign key(time_id)
references tbl_times(time_id)
)
*/

/*
create table tbl_autores(
	autor_id int not null,
	nome varchar(100) not null,
	data_nasc date not null,
	nacionalidade varchar(50) not null,
	genero varchar(50) not null,
	constraint pk_autor primary key(autor_id)
)

alter table tbl_livros
add editora varchar(100) not null

alter table tbl_livros
add constraint fk_autor foreign key(autor_id)
references tbl_autores(autor_id)
*/

/*
alter table tbl_livros
drop column autor;
*/


/*
insert into tbl_livros values(1, 'Modelagem de Banco de Dados', 2020, 'educacao', 'editora fatec', 1)

insert into tbl_autores values(1, 'Professor Jones', '01-01-2001', 'Brasil', 'Educação')

insert into tbl_autores values(2, 'Professora Angelina', '02-02-2002', 'Brasil', 'Educação')
insert into tbl_livros values(2, 'Desenvolvimento Web', 2021, 'Educação', 'Editora Fatec', 2)

update tbl_livros set genero='Educação' where genero='educacao'
update tbl_livros set editora='Editora Fatec' where editora='editora fatec'

insert into tbl_autores values(3, 'Professor Túlio', '03-03-2003', 'RJ', 'Comédia')
insert into tbl_livros values(3, 'Sistemas Operacionais', 2022, 'Comédia', 'Editora Fatec', 3)

insert into tbl_livros values(4, 'Design Digital', 2021, 'Educação', 'Editora Fatec', 2)
*/

/* Exercício 1/5
select * from tbl_livros;
select * from tbl_autores;

insert into tbl_autores values(4, 'Professora Andréia', '04-04-2004', 'EUA', 'Educação')
insert into tbl_livros values(5, 'Engenharia de Software', 2022, 'Educação', 'Editora Splice', 4)

insert into tbl_autores values(5, 'Professor Piva', '05-05-2005', 'Brasil', 'Linguagens')
insert into tbl_livros values(6, 'Python', 2023, 'Linguagens', 'Editora Py', 5)

insert into tbl_autores values(6, 'Professor Ricardo', '06-06-2006', 'EUA', 'Mistério')
insert into tbl_livros values(7, 'Redes', 1970, 'Mistério', 'Editora Cisco', 6)

insert into tbl_autores values(7, 'Professor Faltante', '01-01-2000', 'Japão', 'Mistério')

insert into tbl_autores values(8, 'Professora Cristiane', '07-07-2007', 'Brasil', 'Educação')
insert into tbl_livros values(8, 'Engenharia de Software II', 1983, 'Educação', 'Editora Fatec', 8)

insert into tbl_autores values(9, 'Professora Maria', '08-08-2008', 'Brasil', 'Lógica')
insert into tbl_livros values(9, 'Desenvolvimento Web II', 2023, 'Lógica', 'Editora Fatec', 9)

insert into tbl_autores values(10, 'Professora Ana Carolina', '09-09-2009', 'Brasil', 'Matemática')
insert into tbl_livros values(10, 'Matemática p/ Computação', 1940, 'Matemática', 'Editora Fatec', 10)
*/

/*Exercicio 1.2
select * from tbl_emprestimos;
select * from tbl_livros;

insert into tbl_emprestimos values(1, '30-08-2023', '05-09-2023', 1, 'Ativo')

insert into tbl_emprestimos values(2, '31-08-2023', '06-09-2023', 2, 'Cancelado')
insert into tbl_emprestimos values(3, '01-09-2023', '07-09-2023', 1, 'Pendente')
insert into tbl_emprestimos values(4, '02-09-2023', '08-09-2023', 3, 'Ativo')
insert into tbl_emprestimos values(5, '30-08-2023', '05-09-2023', 4, 'Pendente')
insert into tbl_emprestimos values(6, '02-09-2023', '08-09-2023', 5, 'Cancelado')
insert into tbl_emprestimos values(7, '01-09-2023', '07-09-2023', 8, 'Ativo')
insert into tbl_emprestimos values(8, '03-09-2023', '10-09-2023', 6, 'Ativo')
insert into tbl_emprestimos values(9, '13-09-2023', '20-09-2023', 9, 'Reservado')
insert into tbl_emprestimos values(10, '20-09-2023', '27-09-2023', 9, 'Reservado')
*/

/*Exercício 2
select * from tbl_estados;
select * from tbl_cidades;

insert into tbl_estados values(1, 'São Paulo', 'SP', 'Sudeste', 100)
insert into tbl_estados values(2, 'Rio de Janeiro', 'RJ', 'Sudeste', 120)
insert into tbl_estados values(3, 'Minas Gerais', 'MG', 'Sudeste', 110)
insert into tbl_estados values(4, 'Amazonas', 'AM', 'Norte', 90)
insert into tbl_estados values(5, 'Santa Catarina', 'SC', 'Sul', 80)
insert into tbl_estados values(6, 'Distrito Federal', 'DF', 'Centro-Oeste', 40)
insert into tbl_estados values(7, 'Bahia', 'BA', 'Nordeste', 60)
insert into tbl_estados values(8, 'Acre', 'AC', 'Norte', 30)
insert into tbl_estados values(9, 'Sergipe', 'SE', 'Nordeste', 50)
insert into tbl_estados values(10, 'Paraná', 'PA', 'Sul', 70)

insert into tbl_cidades values(1, 'Votorantim', 1, 80, 180)
insert into tbl_cidades values(2, 'Sorocaba', 1, 120, 230)
insert into tbl_cidades values(3, 'Rio de Janeiro', 2, 2200, 250)
insert into tbl_cidades values(4, 'Manaus', 4, 1300, 200)
insert into tbl_cidades values(5, 'Brasília', 6, 2400, 250)
insert into tbl_cidades values(6, 'Curitiba', 10, 1100, 210)
insert into tbl_cidades values(7, 'Belo Horizonte', 3, 1100, 260)
insert into tbl_cidades values(8, 'Florianóplis', 5, 1105, 190)
insert into tbl_cidades values(9, 'Aracaju', 9, 2200, 210)
insert into tbl_cidades values(10, 'Angra dos Reis', 2, 2200, 220)
*/