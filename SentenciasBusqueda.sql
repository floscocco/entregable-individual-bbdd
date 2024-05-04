/*Obtener los 5 cursos con más unidades: Escribe una consulta que devuelva los títulos de los 5 cursos que tienen más unidades. 
Los resultados deben estar ordenados en orden descendente por el número de unidades.*/

SELECT C.titulo AS Curso, COUNT(*) AS Unidades
FROM Cursos C
JOIN Unidades U ON C.id = U.curso_id
GROUP BY Curso
ORDER BY Unidades DESC
LIMIT 5;


/*Obtener la media de unidades por curso: Escribe una consulta que calcule la media de unidades por curso. 
Los resultados deben estar agrupados por el título del curso.*/

SELECT C.titulo AS curso, AVG(num_unidades) AS Media_Unidades
FROM cursos C
JOIN (
    SELECT curso_id, COUNT(id) AS num_unidades
    FROM unidades
    GROUP BY curso_id
) AS unidades_por_curso
ON C.id = unidades_por_curso.curso_id
GROUP BY C.id
LIMIT 0, 1000;

/*Obtener los usuarios asociados a más de 3 cursos: Escribe una consulta que devuelva los nombres de los usuarios que están asociados a más de 3 cursos. 
Los resultados deben estar ordenados en orden ascendente por el nombre del usuario.*/

SELECT U.nombre
FROM Usuarios U
JOIN Usuarios_Cursos UC ON U.id = UC.usuario_id
GROUP BY U.id
HAVING COUNT(UC.curso_id) > 3
ORDER BY U.nombre ASC;

/*Obtener las 10 primeras clases que comienzan después de una fecha determinada: Escribe una consulta que devuelva las 10 primeras clases que comienzan después de una fecha determinada. 
Los resultados deben estar ordenados en orden ascendente por la fecha de inicio.*/

SELECT *
FROM Clases
WHERE fecha_inicio > '2024-05-01'
ORDER BY fecha_inicio ASC
LIMIT 10;

/*Obtener el número de bloques por tipo para una clase específica: Escribe una consulta que devuelva el número de bloques por tipo para una clase específica. 
Los resultados deben estar agrupados por el tipo de bloque.*/

SELECT tipo, COUNT(*) AS cantidad_bloques
FROM Bloques
WHERE clase_id = 4
GROUP BY tipo;

/*Obtener el nombre y el apellido de los usuarios, sustituyendo los valores nulos por una cadena vacía: Escribe una consulta que devuelva el nombre y el apellido de los usuarios, 
utilizando una función para sustituir los valores nulos por una cadena vacía.*/

SELECT COALESCE(nombre, '') AS nombre, COALESCE(apellido, '') AS apellido
FROM Usuarios;


/*Obtener los 3 cursos con la mayor cantidad de usuarios: Escribe una consulta que devuelva los títulos de los 3 cursos que tienen más usuarios asociados. 
Los resultados deben estar ordenados en orden descendente por el número de usuarios.*/

SELECT C.titulo AS Curso, COUNT(UC.usuario_id) AS Total_Usuarios
FROM Cursos C
JOIN Usuarios_Cursos UC ON C.id = UC.curso_id
GROUP BY C.id
ORDER BY Total_Usuarios DESC
LIMIT 3;

/*Obtener el promedio de clases por unidad para cada curso: Escribe una consulta que calcule el promedio de clases por unidad para cada curso. 
Los resultados deben estar agrupados por el título del curso.*/

SELECT C.titulo AS Curso, AVG(num_clases_por_unidad) AS Promedio_Clases_por_Unidad
FROM Cursos C
JOIN (
    SELECT U.curso_id, U.id AS unidad_id, COUNT(C.id) AS num_clases_por_unidad
    FROM Unidades U
    LEFT JOIN Clases C ON U.id = C.unidad_id
    GROUP BY U.curso_id, U.id
) AS ClasesPorUnidad ON C.id = ClasesPorUnidad.curso_id
GROUP BY C.titulo;

/*Obtener los usuarios con más de 2 cursos que comienzan después de una fecha determinada: Escribe una consulta que devuelva los nombres de los usuarios que están asociados a más de 2 cursos que comienzan después de una fecha determinada. 
Los resultados deben estar ordenados en orden ascendente por el nombre del usuario.*/

SELECT U.nombre
FROM Usuarios U
JOIN Usuarios_Cursos UC ON U.id = UC.usuario_id
JOIN Cursos C ON UC.curso_id = C.id
WHERE C.fecha_inicio > '2023-01-01'
GROUP BY U.id
HAVING COUNT(UC.curso_id) > 2
ORDER BY U.nombre ASC;

/*Obtener las 5 últimas unidades que comienzan después de una fecha determinada: Escribe una consulta que devuelva las 5 últimas unidades que comienzan después de una fecha determinada. 
Los resultados deben estar ordenados en orden descendente por la fecha de inicio.*/

SELECT *
FROM Unidades
WHERE fecha_inicio > '2024-01-01'
ORDER BY fecha_inicio DESC
LIMIT 5;

/*Obtener el número de usuarios por categoría para un curso específico: Escribe una consulta que devuelva el número de usuarios por categoría para un curso específico. 
Los resultados deben estar agrupados por la categoría del usuario.*/

SELECT C.nombre_categoria AS Categoria, COUNT(U.id) AS Numero_Usuarios
FROM Usuarios U
JOIN Usuarios_Cursos UC ON U.id = UC.usuario_id
JOIN Categorias C ON U.categoria_id = C.id
WHERE UC.curso_id = 3
GROUP BY C.nombre_categoria;




