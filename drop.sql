drop view if EXISTS
 better_students;
drop table if EXISTS
 requires,
 teaches,
 enrolls,
 course_offering,
 course,
 instructor,
 student;
drop SEQUENCE if EXISTS
 sec_codigoestudiante,
 sec_cursos;
drop TRIGGER if EXISTS
 before_insert_enrolls on enrolls;
drop TRIGGER if EXISTS
 after_update_enrolls on enrolls;
drop FUNCTION if EXISTS
 create_teaches,
 error_message,
 notificacion;