create database centro_cirurgico;
show databeses;
use centro_cirurgico;
create table painel(
cod 		   int primary key auto_increment,
nome_completo  varchar(100),
telefone_para_contato         varchar(20),
horario_marcado          varchar(20),
tipo_de_serviço   varchar(5),
valor   varchar(5),
situacao   varchar(5)
);
show tables;
desc painel;

insert into painel(
	nome_completo,
	telefone_para_contato,
	horario_marcado,
	tipo_de_serviço,
	valor,
	situacao,
	saida_prevista )
	select * from painel;
