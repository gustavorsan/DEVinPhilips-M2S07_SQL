/* usuario escola*/
update cursos set ead = 'S' where 
id_professor  in (select id from professores where upper(nacionalidade) <> 'BRASILEIRO');

UPDATE estudantes set media_geral = 9.5  where matricula = 3;

delete from cursos where id_professor not in (select id from professores );