/*use BDTeste;

create table tbl_clientes(
codigo int identity(1,1) primary key,
nome varchar(100),
uf varchar(2)
);

select * from tbl_clientes;

insert into tbl_clientes (nome, uf)
values ('Nicholas', 'RS');


insert into tbl_clientes (nome, uf)
values ('Leticia', 'SP');


insert into tbl_clientes (nome, uf)
values ('João', 'MS');


select * from tbl_clientes;
select IDENT_CURRENT('tbl_clientes');

select IDENT_CURRENT('tbl_clientes') as Utimo_registro;
*/

/*
select * from tbl_diretores;

insert into tbl_diretores (diretor_id, nome, data_nascimento, email, telefone)
values (1, 'Alessandro Alves', '21-11-1973','alessandro.alves73@email.com', '15 99887-7665');



insert into tbl_diretores (diretor_id, nome, data_nascimento, email, telefone)
values (2, 'Beatriz Bueno', '13-09-1992', 'beatriz92bueno@email.com', '11 99443-3221');

insert into tbl_diretores (diretor_id, nome, data_nascimento, email, telefone)
values (3, 'Carlos Castro', '18-04-1984', 'castro04brother@email.com', '22 99112-2334');

insert into tbl_diretores (diretor_id, nome, data_nascimento, email, telefone)
values (4, 'Daniele Dias', '01-01-1990', '1990dias0101@email.com', '15 99455-6677');

insert into tbl_diretores (diretor_id, nome, data_nascimento, email, telefone)
values (5, 'Eduardo Eric', '31-12-1979', 'eduardo123@email.com', '14 99889-1234');

insert into tbl_diretores (diretor_id, nome, data_nascimento, email, telefone)
values (6, 'Fernanda Franco', '20-04-1999', 'fer1234fer@email.com.br', '11 12345-1234');

insert into tbl_diretores (diretor_id, nome, data_nascimento, email, telefone)
values (7, 'Gustavo Godoy', '09-09-2001', 'gustavo200001@email.com', '15 99999-0000');

insert into tbl_diretores (diretor_id, nome, data_nascimento, email, telefone)
values (8, 'Helena Hill', '01-04-2000', 'helenariu@email.com.br', '01 00000-1111');

insert into tbl_diretores (diretor_id, nome, data_nascimento, email, telefone)
values (9, 'Italo Inácio', '17-05-1978', 'italoitalo@email.com.br', '19 99911-9191');

insert into tbl_diretores(diretor_id, nome, data_nascimento, email, telefone)
values (10, 'Júlia J.', '28-08-2003', 'juliiaaaaa@email.com', '15 00998-0990');
*/

/*

select * from tbl_departamentos;
select * from tbl_diretores;

insert into tbl_departamentos(departamento_id, nome, localizacao, descricao, diretor_id)
values (1, 'Armazém', 'Subterraneo', '', 1);
update tbl_departamentos set nome='administrativo' where nome='Armazém'

insert into tbl_departamentos(departamento_id, nome, localizacao, diretor_id)
values(2, 'Departamento B', '2º andar', 2);



insert into tbl_departamentos(departamento_id, nome, localizacao, descricao, diretor_id)
values(3, 'Departamento C', '1º andar', 'ccccccccccc', 3);

insert into tbl_departamentos(departamento_id, nome, localizacao, descricao, diretor_id)
values(4, 'Departamento D', 'Térreo', 'dddddddddd', 4);

insert into tbl_departamentos(departamento_id, nome, localizacao, descricao, diretor_id)
values(5, 'Departamento E', '1º andar', 'eeeeeeeeeee', 5);

insert into tbl_departamentos(departamento_id, nome, localizacao, descricao, diretor_id)
values (6, 'Departamento F', '3º andar', 'ffffffffffffffffffff', 6);

insert into tbl_departamentos(departamento_id, nome, localizacao, descricao, diretor_id)
values (7, 'Departamento G', '3º andar', 'ggggggggggggggggggggggggggggggggggggggggggggggggg', 7);

insert into tbl_departamentos(departamento_id, nome, localizacao, descricao, diretor_id)
values (8, 'Departamento H', '1º andar', 'hhhhhhhh', 8);

insert into tbl_departamentos(departamento_id, nome, localizacao, descricao, diretor_id)
values (9, 'Departamento I', '2º andar', 'iiiiih', 9);

insert into tbl_departamentos(departamento_id, nome, localizacao, diretor_id)
values (10, 'Departamento J', 'Subterraneo', 10);
*/

/*
select * from tbl_times;
select * from tbl_jogadores;

insert into tbl_times(time_id, nome, cidade, fundacao, tecnico)
values (1, 'Armênia', 'Alumínio', '01-01-2001', 'Antônio A.');

insert into tbl_times(time_id, nome, cidade, fundacao, tecnico)
values (2, 'Brasil', 'Brasilia', '19-12-1998', 'Bruno B.');

insert into tbl_times(time_id, nome, cidade, fundacao, tecnico)
values (3, 'China', 'Chapecó', '21-02-1993', 'Carlos C.');

insert into tbl_times(time_id, nome, cidade, fundacao, tecnico)
values (4, 'Dinamarca', 'Diadema', '04-07-2007', 'Danilo D.');

insert into tbl_times(time_id, nome, cidade, fundacao, tecnico)
values (5, 'Estados Unidos', 'Embu-Guaçu', '28-02-2014', 'Emílio E.');

insert into tbl_times(time_id, nome, cidade, fundacao, tecnico)
values (6, 'França', 'Fernandópolis', '07-10-2001', 'Fernando F.');

insert into tbl_times(time_id, nome, cidade, fundacao, tecnico)
values (7, 'Guatemala', 'Goiânia', '08-08-2009', 'Gabriel G.');

insert into tbl_times(time_id, nome, cidade, fundacao, tecnico)
values (8, 'Holanda', 'Horizontina', '19-11-1994', 'Henrique H.');

insert into tbl_times(time_id, nome, cidade, fundacao, tecnico)
values (9, 'Itália', 'Ibiúna', '02-01-1999', 'Irineu I.');

insert into tbl_times(time_id, nome, cidade, fundacao, tecnico)
values (10, 'Japão', 'Jaboticabal', '10-06-2020', 'Jones J.');
*/

/*
select * from tbl_jogadores;

insert into tbl_jogadores(jogador_id, nome, posicao, idade, time_id)
values (1, 'A. Alves', 'Middle', 23, 10);

insert into tbl_jogadores(jogador_id, nome, posicao, idade, time_id)
values (2, 'B. Bastos', 'Top', 28, 9);

insert into tbl_jogadores(jogador_id, nome, posicao, idade, time_id)
values (3, 'C. Cunha', 'Middle', 19, 8);

insert into tbl_jogadores(jogador_id, nome, posicao, idade, time_id)
values (4, 'D. Dias', 'Bot', 24, 7);

insert into tbl_jogadores(jogador_id, nome, posicao, idade, time_id)
values (5, 'E. Elias', 'Adc', 20, 6);

insert into tbl_jogadores(jogador_id, nome, posicao, idade, time_id)
values (6, 'F. Freitas', 'Jungle', 21, 5);

insert into tbl_jogadores(jogador_id, nome, posicao, idade, time_id)
values (7, 'G. Goes', 'Top', 31, 4);

insert into tbl_jogadores(jogador_id, nome, posicao, idade, time_id)
values (8, 'H. Honda', 'Jungle', 27, 3);

insert into tbl_jogadores(jogador_id, nome, posicao, idade, time_id)
values (9, 'I. Iglesias', 'Middle', 20, 2);

insert into tbl_jogadores(jogador_id, nome, posicao, idade, time_id)
values (10, 'J. Joestar', 'Bot', 29, 1);
*/

select * from tbl_autores;
select * from tbl_cidades;
select * from tbl_departamentos;
select * from tbl_diretores;
select * from tbl_emprestimos;
select * from tbl_estados;
select * from tbl_jogadores;
select * from tbl_times;
select * from tbl_livros;