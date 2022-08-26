/*
 * CRIAÇÃO DAS TABELAS (ENTIDADES E ATRIBUTOS) 
 */
CREATE TABLE "facilitadores" (
  "facilitador_id" serial PRIMARY KEY,
  "nome" varchar(100),
  "CPF" varchar(14),
  "genero" varchar(15),
  "data_nascimento" date,
  "telefone" varchar(50),
  "email" varchar(100),
  "frente" varchar(50),
  "turma_id" int,
  "facilitacao" varchar(50),
  "modulo_id" int,
  "curso_id" int
  
 -- CONSTRAINT fk_turma_id FOREIGN KEY (turma_id) REFERENCES turma (turma_id),
 -- CONSTRAINT fk_modulo_id FOREIGN KEY (modulo_id) REFERENCES modulo (modulo_id),
 -- CONSTRAINT fk_curso_id FOREIGN KEY (curso_id) REFERENCES cursos (turma_id)
  );

CREATE TABLE "turma" (
  "turma_id" serial PRIMARY KEY,
  "aluno_id" int,
  "facilitador_id" int,
  "nome_turma" varchar(50)
  
 -- CONSTRAINT fk_aluno_id FOREIGN KEY (aluno_id) REFERENCES alunos (aluno_id),
 -- CONSTRAINT fk_facilitador_id FOREIGN KEY (facilitador_id) REFERENCES facilitadores (facilitador_id),
);


/*
* INSERÇÃO DOS DADOS FACILITADORES 
*/
INSERT INTO facilitadores (nome, "CPF", genero, data_nascimento, telefone, email, frente, turma_id, facilitacao, modulo_id, curso_id) 
VALUES 
	('Andreia Gabrielly Olivia Drumond','374.745.875-05','Feminino','1945/07/19','(88) 98151-7771','andreia_gabrielly_drumond@nhrtaxiaereo.com','WebDev Full Stack', 01, 'Soft Skill',01,02),
	('Renan Edson Nascimento','851.862.451-78','Masculino','1973/08/25','(69) 98842-8159','renan_nascimento@metroquali.com.br','WebDev Full Stack', 01, 'Hard Skill',01,02),
	('Alícia Fabiana Andreia da Conceição','038.347.549-00','Feminino','1945/07/10','(21) 99809-6173','alicia_fabiana_daconceicao@tam.com.br','WebDev Full Stack', 02,'Soft Skill',02,01),
	('Elias Cauê Raul Oliveira','226.637.080-46','Masculino','1943/08/23','(67) 99813-8748','elias.caue.oliveira@igly.com.br','WebDev Full Stack', 02, 'Hard Skill',02,01),
	('Bárbara Heloisa Lima','898.714.207-81','Feminino','1950/06/15','(84) 99910-9447','barbaraheloisalima@cernizza.com.br','WebDev Full Stack', 03,'Soft Skill',03,02),
	('Caio Thales Silva','188.762.519-44','Masculino','1969/06/16','(63) 98441-8185','caio-silva79@dinamicaconsultoria.com','WebDev Full Stack', 03, 'Hard Skill',03,01),
	('Carolina Sophia Costa','136.725.587-22','Feminino','1997/03/26','(82) 98277-8032','carolina_sophia_costa@focusgrafica.com.br','Data Analytics', 04,'Soft Skill',01,02),
	('Joaquim Emanuel Mendes','875.751.797-55','Masculino','1997/04/15','(92) 99481-3604','joaquimemanuelmendes@fertility.com.br','Data Analytics', 04, 'Hard Skill',01,01),
	('Isabella Julia Duarte','165.206.636-54','Feminino','1997/02/17','(81) 98509-5871','isabella_duarte@cladm.com.br','Data Analytics', 05,'Soft Skill',02,01),
	('Miguel Tomás Figueiredo','089.376.662-35','Masculino','1996/04/25','(21) 99403-6878','miguel.tomas.figueiredo@uou.com.br','Data Analytics', 05, 'Hard Skill',02,02),
	('Paulo Paulo Galvão','420.605.282-40', 'Masculino','1995/02/04','(48) 98668-9943','paulo-galvao79@bom.com.br','WebDev Full Stack', 06,'Soft Skill',04,02),
	('Silvana Luiza Camila Ribeiro','699.133.088-44', 'Feminino','1995/02/04','(69) 99779-1814','silvana-ribeiro96@atento.com.br','WebDev Full Stack', 06, 'Hard Skill',04,02),
	('Vera Joana Barros','225.312.784-19', 'Feminino','1995/04/19','(34) 99536-9463','vera_joana_barros@pss.adv.br','WebDev Full Stack', 07, 'Soft Skill',05,01),
	('Isis Regina Nogueira','454.866.359-23', 'Feminino','1995/07/22','(71) 99588-3562','isis-nogueira82@structureesquadrias.com.br','WebDev Full Stack', 07, 'Hard Skill',05,02),
	('Stefany Gabrielly Fabiana Novaes','306.182.117-13', 'Feminino','1993/07/16','(99) 99601-4365','stefanygabriellynovaes@gracomonline.com.br','WebDev Full Stack', 08, 'Soft Skill',01,02),
	('Eloá Luciana da Rosa','942.494.036-02', 'Feminino','1993/08/24','(95) 98502-3469','eloa.luciana.darosa@termakui.com.br','WebDev Full Stack', 08, 'Hard Skill',01,02),
	('Cláudio Vinicius Raimundo Barros','021.765.428-27', 'Masculino','1993/06/15','(68) 98374-9776','claudio-barros95@newpark.com','WebDev Full Stack', 09, 'Soft Skill',02,01),
	('Alana Letícia Juliana Jesus','070.326.358-73', 'Feminino','1992/01/12','(81) 99928-5763','alana_leticia_jesus@deltaturismo.com.br','WebDev Full Stack', 09, 'Hard Skill',02,01),
	('Davi Oliver Caldeira','714.328.909-48', 'Masculino','1989/02/02','(47) 98844-0782','davi.oliver.caldeira@portalpublicidade.com.br','Data Analytics', 10, 'Soft Skill',03,02),
	('Nathan Sebastião Drumond','916.274.162-42', 'Masculino','1989/02/15','(61) 99496-3062','nathan.sebastiao.drumond@eclatt.com.br','Data Analytics', 10, 'Hard Skill',03,02);

/*
 * INSERLÇÃO DOS DADOS TURMA
 */
select * from turma t 

insert into turma (aluno_id, facilitador_id, nome_turma)
values 
	(01,01,'T1'), 
	(02,02,'T2'),
	(03,02,'T3'),
	(04,04,'T4'),
	(05,02,'T5'),
	(06,06,'T6'),
	(07,07,'T7'),
	(08,08,'T8'),
	(09,08,'T9'),
	(10,10,'T10'),
	(11,11,'T11'),
	(12,12,'T12'),
	(13,13,'T13'),
	(14,14,'T14'),
	(15,15,'T15'),
	(16,16,'T16'),
	(17,17,'T17'),
	(18,18,'T18'),
	(19,19,'T19'),
	(20,20,'T20');
