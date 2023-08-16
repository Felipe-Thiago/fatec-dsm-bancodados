/*create database BDTeste

use BDTeste

create table Cliente(
Cod_Cli int not null,
Nome_Cli varchar(40) not null,
End_Cli varchar(30) not null,
Bai_Cli varchar(20) not null,
Cid_Cli varchar(20) not null,
Uf_Cli char(3) not null,
Tel_Cli varchar(15) null,
Constraint PK_Cliente Primary Key(Cod_Cli)
)


create table NotaFiscal(
Num_Nota int not null,
Cod_Cli int not null,
Serie_Nota varchar(10) not null,
Emissao_Nota smalldatetime null,
Vtot_Nota SmallMoney not null,
Constraint PK_NotaFiscal Primary Key(Num_Nota),
Constraint FK_Cliente Foreign Key(Cod_Cli)
References Cliente(Cod_Cli)
)


Create table Cidade(
Codcidade varchar(2) not null,
Nomecidade varchar(4)
)

Create table Empregado(
Nrmatricula int,
Nome varchar(50),
Data_demissao datetime,
Salario float
)

Create table estado(
cdestado varchar(2) not null,
Nomeestado varchar(30)
)



alter table cidade
add primary key (codcidade);

alter table cidade
add cdestado char(2) not null,
teste varchar(1) null;

alter table cidade
drop column teste;

alter table cidade
alter column cdestado varchar(2);
*/