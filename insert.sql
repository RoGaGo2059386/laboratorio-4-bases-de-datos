insert into student (nombre, programa)
VALUES
  ('Randall Graves', 'programa 1'),
  ('Chester Fletcher', 'programa 2'),
  ('Elliott Spears','programa 3'),
  ('Jelani Watson','programa 2'),
  ('Joelle Allen', 'programa 1');

insert into instructor (nombre, depto, titulo)
 VALUES
  ('Jenna Houston', 'lenguas', 'profesora de ingles'),
  ('Kareem Poole', 'ingenieria', 'profesor de tecnomecanica'),
  ('Imogene Charles', 'psicologia', 'profesor de pedagogia'),
  ('Signe Carr', 'ciencias sociales', 'profesor de filosofia'),
  ('Montana Lowery', 'salud', 'profesora de biologia');

insert INTO course 
 VALUES
  (0,'sin prerequisito','ninguno',0);


insert INTO course (nombre, programa, creditos)
 VALUES 
  ('ingles 1', 'programa 1', 3),
  ('ingles 2', 'programa 1', 3),
  ('fisica','programa 3', 4),
  ('fundamentos mecanica', 'programa 3', 4),
  ('psicologia infantil', 'programa 2', 4),
  ('neuropsicologia', 'programa 2',4),
  ('filosofia', 'programa 1', 3),
  ('anatomia humana', 'programa 2', 4);

insert into course_offering (course_id, anho, semestre, horas, salon)
 VALUES 
  (837827, 2007, 1, 'diurna', '202'),
  (837850, 2008, 2, 'diurna', '108'),
  (837873, 2005, 2, 'diurna', '301'),
  (837896, 2005, 3, 'diurna', 'laboratorio fisica'),
  (837919, 2009, 2, 'diurna', '111'),
  (837942, 2009, 3, 'diurna', '113'),
  (837965, 2020, 2, 'nocturna', '202'),
  (837988, 2017, 1, 'diurna', '113');

insert into enrolls (student_id, course_id, semester, anho, grade)
 VALUES
  (7488, 837827, 1, 2007, 4.20),
  (7488, 837850, 2, 2008, 3.51),
  (7656, 837919, 2, 2009, 4.60),
  (7824, 837896, 3, 2005, 3.00),
  (7992, 837919, 2, 2009, 4.10),
  (7824, 837873, 1, 2005, 3.20);
  
insert into requires
 VALUES
  (837827,0),
  (837850,837827),
  (837873,0),
  (837896,837873),
  (837919,0),
  (837942,837919),
  (837965,0),
  (837988,0);