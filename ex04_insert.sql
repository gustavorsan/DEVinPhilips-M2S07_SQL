/* usuario escola*/
insert into professores (nome,sobrenome,email,data_nascimento,nacionalidade,materia)
values 
('Sabrina','Antonella da Rosa','sabrinaantonelladarosa@expressoforte.com.br','11-fev-2004','BR','portugues'),
('Marcelo', 'Geraldo Novaes','marcelo_geraldo_novaes@br.inter.net','07-mar-2000','BR','matematica'),
('Rafael', 'Roberto Kaique Barros','rafael_roberto_barros@aclnet.com.br','07-jun-2004','BR','fisica')
;


insert into estudantes (nome,sobrenome,email,data_nascimento,nacionalidade,media_geral)
values 
('Lúcia','Daiane Letícia Monteiro','luciadaianemonteiro@ematelecom.com.br','11-fev-2009','BR',8.5),
('Emanuel','Igor das Neves','luciadaianemonteiro@ematelecom.com.br','11-jun-2004','BR',6.5),
('Analu', 'Alícia Mendes','analu_mendes@iquattro.com.br','11-fev-2009','BR',6.5)
;


insert into cursos (nome,presencial,id_professor,max_alunos)
values 
('Matematica','N',1,60),
('Portugues','N',3,60),
('Fisica','N',2,60),
;

insert into matriculas (codigo_curso,matricula_aluno,media_aluno)
values 
(3,1,9.5),
(1,1,8.5),
(3,2,7),
;