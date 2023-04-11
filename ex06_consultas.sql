/* usuario escola*/
--Busque os cursos que possuem número máximo de alunos maior do que 30 e que sejam presenciais.
select 
 *
from
 cursos 
 where 
   max_alunos > 30
   and ead = 'N';

-- Busque os professores nascidos na América do Sul.
select 
 *
from 
professores 
where 
 nacionalidade in ('BRASILEIRO','VENEZUELANO','COLOMBIANO','PERUANO','ARGETINO');
--Busque os alunos cujos nomes comecem com a letra J.
select 
*
from
alunos 
 where
  upper(nome) like 'J%';
--Busque os alunos com a média geral maior do que 7, ordenando do maior para o menor.
select 
*
from
alunos 
 where
  media_geral > 7
  order by media_geral desc;
--Busque por todos os cursos ministrados por professoras.
select 
*
from cursos
where 
 id_professor in (select id from professores where genero = 'F');

--Busque por todos os alunos que estão matriculados em cursos EAD.
select 
a.*
from 
alunos  a inner join cursos c
 on a.matricula = c.matricula_aluno
where
 c.ead = 'S';