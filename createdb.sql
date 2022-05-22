create sequence sec_codigoestudiante  
 increment by 168 

 minvalue 7488;
CREATE TABLE IF NOT EXISTS student(
  student_id BIGINT DEFAULT nextval('sec_codigoestudiante '),
  nombre VARCHAR(200),
  programa VARCHAR(200),
  PRIMARY KEY(student_id) 
); 

CREATE TABLE IF NOT EXISTS instructor(
  instructor_id SERIAL,
  nombre VARCHAR(200),
  depto VARCHAR(200),
  titulo VARCHAR(200),
  PRIMARY KEY(instructor_id) 
);  

create sequence sec_cursos   
increment by 23 

minvalue 837827;
CREATE TABLE IF NOT EXISTS course(
  course_id BIGINT DEFAULT nextval ('sec_cursos'),
  nombre VARCHAR(200),
  programa VARCHAR(200),
  creditos integer,
  PRIMARY KEY(course_id) 
);  

create table if not EXISTS course_offering(
  course_id INTEGER,
  sec_id serial,
  anho INTEGER,
  semestre integer,
  horas VARCHAR(200),
  salon varchar(200),
  PRIMARY KEY (course_id, sec_id, anho, semestre),

  foreign key (course_id) references course (course_id)	
);

create table if not EXISTS enrolls(
  student_id integer,
  course_id integer,
  sec_id serial,
  semester INTEGER,
  anho INTEGER,
  grade numeric(3,2),
  CHECK (grade >=1.00 and grade <= 5.00),
  PRIMARY KEY (student_id, course_id, sec_id, semester, anho),
  FOREIGN key (student_id) REFERENCES student (student_id),
  FOREIGN key (course_id) REFERENCES course (course_id)
);

create table if not exists teaches (
  course_id INTEGER,
  sec_id serial,
  semester integer,
  anho INTEGER,
  instructor_id INTEGER,
  PRIMARY key(course_id,sec_id,semester, anho, instructor_id),
  foreign KEY(course_id) REFERENCES course (course_id),
  foreign key(instructor_id) REFERENCES instructor (instructor_id)
);

CREATE TABLE IF not EXISTS requires(
  main_course integer,
  prerequisite integer,
  PRIMARY key(main_course, prerequisite),
  FOREIGN KEY(main_course) references course(course_id),
  FOREIGN KEY(prerequisite) references course(course_id)
);
