create database berryBite;

use berryBite;

create table cadastro(
idCadastro int primary key auto_increment,
razaoSocial varchar(50),
cnpj varchar(20) constraint chkcnpj check (cnpj like '%.%.%/%-%'), 
email varchar(50) constraint chkemail check (email like '%@%'),
cep char(10) constraint chkcep check (cep like '%-%'), 
telefone varchar(15),
quantidade_de_estufa int);

create table Umidade(
idUmidade int primary key auto_increment,
umidade float);



create table Temperatura(
idTemperatura int primary key auto_increment,
temperatura float);


create table Blocos(
idBlocos int primary key auto_increment);
-- FK umidade e Fk temperatura


create table calculadora(
id int primary key auto_increment,
lucro_ultimo_mes int ,
 media_de_producao_kg int,
 valor_morango_kg int,
 perdas_por_temperatura_kg int,
 perdas_por_irrigacao_kg int,
 custo_operacional int,
 custo_irrigacao int);

 
 insert into cadastro values(
 null,'safra','12.345.678/0001-90','safra@safra.com','04918-200',11992776547,3),
 (null,'beryb','12.350.678/0002-10','bbbery@bbbery.com','01548-300',11988765436,2);
 
 insert into umidade values(
 null,64),
 (null,34);
 
 insert into temperatura values(
 null,27),
 (null,25);
 
 
 insert into calculadora values(
 null,19000,2500,25,150,90,250,300),
 (null,20000,2600,25,125,85,250,280);
 
 select * from cadastro where idCadastro = 1;
 
 select * from calculadora;
 
 select cep,cnpj from cadastro where idCadastro=2;
 
 select * from calculadora where lucro_ultimo_mes >=20000;
 
 select * from calculadora where valor_morango_kg != 30;
 
update Umidade set  umidade = 70 where idUmidade = 2; 

select * from umidade;

update calculadora set  custo_operacional= 400 where  id = 1;
 
select * from calculadora;
 
 desc cadastro;
