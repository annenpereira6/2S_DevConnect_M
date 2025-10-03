--DDL 
USE db_escola_T


CREATE TABLE tb_usario(

  INT             IDENTITY    (1,1)    PRIMARY KEY

nome_completo - NVARCHAR    (255)        NOT NULL
nome_usuario -  NVARCHAR    (50)  UNIQUE NOT NULL
email -         NVARCHAR    (255) UNIQUE NOT NULL
senha -         NVARCHAR    (50)         NOT NULL
foto_perfil -   NVARCHAR    (150)        NULL
);

SELECT * FROM tb_usuario

CREATE TABLE tb_publicação(

id_publicação - INT IDENTITY (1,1) PRIMARY KEY
id_usuario -    INT IDENTITY       FOREIGN KEY

descrição -      NVARCHAR     (255)  NOT NULL
imagem_url-      NVARCHAR     (150)  NULL
data_publicação- DATE         (150)  NOT NULL
);

SELECT * FROM tb_publicação

CREATE TABLE tb_curtida(
id_curtida -     INT IDENTITY (1,1) PRIMARY KEY
id_usuario -     INT IDENTITY       FOREIGN KEY NOT NULL
id_publicação -  INT IDENTITY       FOREIGN KEY NOT NULL
FOREIGN KEY   REFERENCES tb_curtida(id)
);

SELECT * FROM tb_curtida

CREATE TABLE tb_comentario(
id_comentario -  INT    IDENTITY  (1,1)  PRIMARY KEY
usuario  -      NVARCHAR          (200)   NOT NULL
publicacao -    NVARCHAR          (200)   NOT NULL
texto -         NVARCHAR          (200)   NOT NULL
data_comentario - DATE            (150)   NOT NULL

);

SELECT * FROM tb_comentario

CREATE TABLE tb_seguidor(
PK1,FK1- usuario_seguirid - NVARCHAR () NOT NULL
PK2,FK2- usuario_seguidoid - NVARCHAR () NOT NULL

);

SELECT * FROM tb_comentario




