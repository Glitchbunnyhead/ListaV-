-- Definir o tema e escrever um resumo
-- Levantar os requisitos funcionais
--  Modelagem Conceitual do BD (representa entidades)
-- Modelagem Lógica do BD (representa tabelas)
-- Criar o Script do BD (SQL)
-- Criar o projeto Java na IDE
--     1) Implementar o pacote de model
--     2)  Implementar o pacote de persistencia
--     3)  Implementar o pacote de apresentacao
-- Gravar um video apresentando tanto o codigo quanto executando os testes
-- SQL -> Linguagem padrao para criar, editar, excluir... estruturas em um BD
-- Mysql -> SGBD
-- root
CREATE DATABASE bd_java_mysql_2k_2025;

USE bd_java_mysql_2k_2025;

CREATE TABLE usuario(
	id_usuario BIGINT AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	email VARCHAR(30) NOT NULL UNIQUE,
	senha VARCHAR(15) NOT NULL,
	PRIMARY KEY(id_usuario)
);

CREATE TABLE endereco(
	id_endereco BIGINT PRIMARY KEY AUTO_INCREMENT,
	rua VARCHAR(150) NOT NULL,
	numero INT,
	cidade VARCHAR(150),
	estado VARCHAR(150),
	id_usuario BIGINT NOT NULL ,
	FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);



