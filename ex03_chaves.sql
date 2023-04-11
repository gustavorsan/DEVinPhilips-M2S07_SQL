/* usuario escola*/
ALTER TABLE professores
ADD CONSTRAINT pk_professores PRIMARY KEY (id);


ALTER TABLE estudantes
ADD CONSTRAINT pk_estudantes PRIMARY KEY (matricula);


ALTER TABLE cursos
ADD CONSTRAINT pk_cursos PRIMARY KEY (codigo);