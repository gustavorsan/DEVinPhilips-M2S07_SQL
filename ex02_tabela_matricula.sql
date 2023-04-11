/* usuario escola*/
create table matriculas (
 id INTEGER GENERATED ALWAYS AS IDENTITY,
 codigo_curso INTEGER,
 matricula_aluno varchar2(60),
 media_aluno number(16,6)
);
