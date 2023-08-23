/* alter table cidade
drop constraint PK__Cidade__9ED2CA965FE327C5;


insert into tbl_teste (codigo, nome) values ('1', 'Felipe');

select * from tbl_teste;
*/

/*
alter table estado
add primary key(cdestado);

alter table cidade
add foreign key (cdestado) references estado(cdestado);
*/
/*
insert into estado values ('SP', 'São Paulo');
*/
/*
alter table cidade
add constraint pk_codcidade primary key (codcidade);

insert into Cidade values ('1', 'Voto', 'SP');

insert into Cidade(Codcidade, Nomecidade, cdestado) values ('2', 'Soro', 'SP');

select * from cidade;

select * from estado;
*/
/*
insert into cidade (codcidade, nomecidade, cdestado) values ('3', 'Itu', 'NN');

Insert into cidade(codcidade, nomecidade, cdestado) values('4', 'Itapira', 'NN');

insert into estado values ('NN', 'Não cadastrado');
*/
/*
insert into estado values ('RJ', 'Rio de Janeiro');
insert into cidade(codcidade, nomecidade, cdestado) values('5', 'Rio de Janeiro', 'RJ'); 
insert into estado values ('MG', 'Minas Gerais');
insert into cidade(codcidade, nomecidade, cdestado) values('6', 'Belo Horizonte', 'MG'); 


insert into estado values ('ES', 'Espírito Santo');
insert into cidade(codcidade, nomecidade, cdestado) values('7', 'Vitória', 'ES'); 
insert into estado values('PR', 'Paraná');
insert into cidade(codcidade, nomecidade, cdestado) values('8', 'Curitiba', 'PR');
insert into estado values('SC', 'Santa Catarina');
insert into cidade(codcidade, nomecidade, cdestado) values('9', 'Florianópolis', 'SC');
insert into estado values ('RS', 'Rio Grande do Sul');
insert into cidade(codcidade, nomecidade, cdestado) values('10', 'Porto Alegre', 'RS'); 
*/

/*
update Cidade set Nomecidade='Sorocaba' where nomecidade='Soro';
update cidade set Nomecidade='Votorantim' where Nomecidade='Voto';

update cidade set cdestado='SP' where cdestado='NN';
*/

delete from cidade
where nomecidade = 'Itapira';