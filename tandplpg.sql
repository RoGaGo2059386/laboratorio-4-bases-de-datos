--disparadores--
CREATE or replace FUNCTION error_message () RETURNS TRIGGER AS
$BODY$
BEGIN
  RAISE EXCEPTION 'El valor de la nota es invalido';
END;
$BODY$ LANGUAGE 'plpgsql';

CREATE or replace FUNCTION notificacion () RETURNS TRIGGER AS
$BODY$
BEGIN
  raise NOTICE 'se ha alterado el valor de la nota';
END;
$BODY$ LANGUAGE 'plpgsql';

create or replace TRIGGER before_insert_enrolls before INSERT or update on enrolls
for each row
when (New.grade < 1 or New.grade >5) EXECUTE FUNCTION error_message(); 

create or replace TRIGGER after_update_enrolls after UPDATE on enrolls
for each row
when (New.grade != old.grade) EXECUTE FUNCTION notificacion();

--procedimiento create_teaches--

CREATE or replace FUNCTION create_teaches(integer,integer) RETURNS void AS
$BODY$
declare
instructor  alias for $1;
course alias for $2;
anno integer;
semestre integer;
sec integer;
BEGIN
 anno = (select anho from course_offering co where course = co.course_id);
 semestre = (select semester from course_offering co where course = co.course_id);
 sec = (SELECT sec_id from course_offering co where course = co.course_id);
 
 insert into teaches (course_id,sec_id,semester,anho,instructor_id) values
 (course,sec,semestre,anno,instructor);
END;
$BODY$ LANGUAGE 'plpgsql';
