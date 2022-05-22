--buscar el departamento y titulo de todos los instructores registrados--
select depto,titulo
 from instructor;

--query para buscar el nombre y el programa del estudiante con student_id = 7656--
select nombre, programa
 from student as stu
  WHERE stu.student_id = 7656;

--query para buscarc los nombres de todos los estudiantes que se han matriculado en el curso con course_id = 837873--
select nombre
 from student as s
  inner JOIN enrolls as e on s.student_id = e.student_id and e.course_id = 837873;

--Cree una vista llamada better_students que presente los estudiantes que obtuvieron las notas más altas por cada semestre entre los años 1900 y 2018--
create view better_students as select nombre, grade
 from student as st
  join enrolls as en on st.student_id = en.student_id
  WHERE en.anho >= 1900 and en.anho <= 2018 and en.grade >= 4.0;

