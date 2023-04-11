/* usuario sys ou com acesso a criar schema*/
CREATE USER escola IDENTIFIED BY escola DEFAULT TABLESPACE users ;
-- Permissão para Criação de View Materalizada
GRANT CREATE MATERIALIZED VIEW TO escola;
-- Permissão para Criação de Tabelas
GRANT CREATE TABLE TO escola;
-- Permissão para Recriação Consultas Globais
GRANT GLOBAL QUERY REWRITE TO escola;
-- Permissão para Acesso a qualquer tabela
GRANT SELECT ANY TABLE TO escola;
-- Permissão para Acesso a qualquer View
grant create view to escola;
-- Permissão para aumentar para qualquer tamanho a tablespace
GRANT UNLIMITED TABLESPACE TO escola;
--Dar permissão para o usuario criar Database Link;
grant create DATABASE LINK to escola;
-- Permissão para uso de Sessão
grant create session to escola;
-- Permissão para conexão
grant connect, resource to escola;
alter user escola quota 0m on system;
alter user escola quota 0m on users;
GRANT debug any procedure TO escola;
grant debug connect session TO escola;
GRANT SELECT ON USER_TAB_COLUMNS TO escola;
GRANT SELECT ON V_$SESSION TO escola;

/* usuario escola*/
create table professores (
 id INTEGER GENERATED ALWAYS AS IDENTITY,
 nome varchar2(60),
 sobrenome varchar2(60),
 email varchar2(60),
 data_nascimento date,
 nacionalidade varchar2(20),
 materia varchar2(20)
);

create table estudantes (
 matricula INTEGER GENERATED ALWAYS AS IDENTITY,
 nome varchar2(60),
 sobrenome varchar2(60),
 email varchar2(60),
 data_nascimento date,
 nacionalidade varchar2(20),
 materia varchar2(20),
 media_geral number(16,6)
);

create table cursos (
 codigo INTEGER GENERATED ALWAYS AS IDENTITY,
 nome varchar2(60),
 presencial varchar2(1) DEFAULT 'N',
 id_professor INTEGER,
 max_alunos INTEGER
);