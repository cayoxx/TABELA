CREATE DATABASE empresaa_1e;

CREATE TABLE departamento (
   cod_dep integer PRIMARY KEY,
   nome_dep varchar(50)
   );
   
CREATE TABLE funcionario (
  cod_func integer PRIMARY KEY,
  cod_dep integer,
  nome_func varchar(100),
  nasc_func date,
  sala_func numeric(10,2),
  FOREIGN KEY(cod_dep) REFERENCES departamento(cod_dep)
  );
    
CREATE TABLE dependente (
   cod_depen integer PRIMARY KEY,
   cod_func integer,
   nome_depen varchar(100),
   FOREIGN KEY(cod_func) REFERENCES funcionario(cod_func)
   );