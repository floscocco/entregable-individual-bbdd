INSERT INTO Categorias (nombre_categoria) 
VALUES 
('Estudiante'),
('Docente'),
('Editor'),
('Administrador');


INSERT INTO Usuarios (nombre, apellido, email, contraseña, categoria_id) 
VALUES 
('Juan', 'Perez', 'juanp21@gmail.com', 'contraseña1', 1),
('María', 'González', 'gonzalezM@hotmail.com', 'contraseña2', 2),
('Carlos', 'López', 'carloslop@gmail.com', 'contraseña3', 1),
('Laura', 'Martínez', 'marlaura123@hotmail.com', 'contraseña4', 3),
('Pedro', 'Rodríguez', 'pedrorodriguez@gmail.com', 'contraseña5', 4),
('Ana', 'Sánchez', 'sanchezana@hotmail.com', 'contraseña6', 3);


INSERT INTO Cursos (titulo, descripcion, imagen, fecha_inicio, fecha_finalizacion, cupo_maximo) 
VALUES 
('Curso de Programación en Python', 'Aprende a programar en Python desde cero.', 'cursoPython.jpg', '2024-05-10', '2024-06-20', 50),
('Curso de Diseño Gráfico', 'Descubre las técnicas fundamentales del diseño gráfico.', 'cursoDiseno.jpg', '2024-06-01', '2024-09-01', 40),
('Curso de Marketing Digital', 'Aprende estrategias efectivas para promocionar productos en línea.', 'cursoMarketing.jpg', '2024-07-15', '2024-10-15', 30),
('Curso de Fotografía', 'Domina las técnicas de composición y edición fotográfica.', 'cursoFotografia.jpg', '2024-05-01', '2024-10-01', 25),
('Curso de Finanzas Personales', 'Aprende a gestionar tus finanzas de manera efectiva.', 'cursoFinanzas.jpg', '2024-09-10', '2025-02-20', 35),
('Curso de Cocina Internacional', 'Explora recetas y técnicas de cocina de diferentes culturas.', 'cursoCocina.jpg', '2024-10-01', '2025-05-01', 20);

INSERT INTO Unidades (curso_id, titulo, descripcion, fecha_inicio) 
VALUES 
(1, 'Introducción a Python', 'Conceptos básicos y primeros pasos en Python.', '2024-05-10'),
(1, 'Estructuras de Datos en Python', 'Aprende sobre listas, tuplas, diccionarios, y conjuntos en Python.', '2024-05-15'),
(2, 'Principios del Diseño', 'Fundamentos del diseño gráfico y teoría del color.', '2024-06-01'),
(2, 'Herramientas de Diseño', 'Uso de software de diseño gráfico como Adobe Illustrator y Adobe Photoshop.', '2024-06-05'),
(3, 'Introducción al Marketing Digital', 'Conceptos básicos de marketing en línea y estrategias de contenido.', '2024-07-15'),
(3, 'SEO y SEM', 'Optimización de motores de búsqueda y marketing de motores de búsqueda.', '2024-07-20'),
(4, 'Fotografía de Retrato', 'Aprende las técnicas y composiciones para capturar retratos impresionantes.', '2024-08-15'),
(4, 'Fotografía de Paisajes Naturales', 'Explora la belleza de la naturaleza y aprende a capturar paisajes asombrosos en tus fotografías.', '2024-09-01'),
(5, 'Presupuesto y Ahorro', 'Aprende a crear un presupuesto efectivo y a establecer metas de ahorro realistas.', '2024-09-15'),
(5, 'Inversiones Básicas', 'Descubre las opciones de inversión básicas y aprende a tomar decisiones financieras sólidas.', '2024-10-01'),
(6, 'Cocina Italiana', 'Explora los sabores de Italia y aprende a preparar platos clásicos de la cocina italiana.', '2024-10-15'),
(6, 'Cocina Asiática', 'Sumérgete en los aromas y sabores de Asia y descubre los secretos de la cocina asiática.', '2024-11-01');


INSERT INTO Clases (unidad_id, titulo, descripcion, fecha_inicio, visibilidad) 
VALUES 
(1, 'Variables y Tipos de Datos', 'Aprende sobre variables, tipos de datos y operadores en Python.', '2024-05-10', true),
(2, 'Estructuras de Control', 'Introducción a las estructuras de control como if, else, y bucles en Python.', '2024-06-01', false),
(3, 'Composición y Color', 'Conceptos de composición visual y teoría del color en el diseño gráfico.', '2024-06-01', true),
(4, 'Tipografía y Diseño de Layouts', 'Principios de tipografía y diseño de layouts en diseño gráfico.', '2024-06-20', false),
(5, 'Creación de Contenido', 'Desarrollo de contenido efectivo para marketing digital.', '2024-07-15', true),
(6, 'Publicidad en Redes Sociales', 'Estrategias de publicidad en plataformas de redes sociales.', '2024-07-30', false),
(7, 'Retratos en Movimiento', 'Aprende a capturar retratos en movimiento con técnicas fotográficas avanzadas.', '2024-08-20', true),
(8, 'Fotografía de Naturaleza Salvaje', 'Descubre los secretos para fotografiar la vida salvaje en su hábitat natural.', '2024-09-05', false),
(9, 'Planificación Financiera a Largo Plazo', 'Aprende a planificar tus finanzas para alcanzar tus objetivos a largo plazo.', '2024-09-20', true),
(10, 'Inversiones Avanzadas', 'Explora estrategias avanzadas de inversión para maximizar tu patrimonio.', '2024-10-20', false),
(11, 'Cocina Italiana Contemporánea', 'Descubre las últimas tendencias en la cocina italiana.', '2024-10-20', true),
(12, 'Sabores del Sudeste Asiático', 'Explora la diversidad culinaria del sudeste asiático.', '2025-01-05', false);


INSERT INTO Bloques (clase_id, titulo, visibilidad, tipo, contenido) 
VALUES 
(1, 'Introducción a Python', true, 'texto', 'En esta clase aprenderemos los conceptos básicos de Python.'),
(1, 'Instalación de Python', true, 'texto', 'En esta clase aprenderemos cómo instalar Python en diferentes sistemas operativos.'),
(1, 'Variables', true, 'texto', 'En esta clase aprenderemos sobre las variables en Python.'),
(2, 'Tipos de Datos', true, 'texto', 'En esta clase aprenderemos sobre los tipos de datos en Python.'),
(2, 'Operadores Aritméticos', true, 'texto', 'En esta clase aprenderemos sobre los operadores aritméticos en Python.'),
(3, 'Estructuras de Control', true, 'texto', 'En esta clase aprenderemos sobre las estructuras de control en Python.'),
(3, 'if-else', true, 'texto', 'En esta clase aprenderemos sobre la estructura condicional if-else en Python.'),
(3, 'Bucles', true, 'texto', 'En esta clase aprenderemos sobre los bucles for y while en Python.'),
(4, 'Break y Continue', true, 'texto', 'En esta clase aprenderemos sobre las instrucciones break y continue en Python.'),
(4, 'Comentarios', true, 'texto', 'En esta clase aprenderemos sobre la sintaxis de los comentarios en Python.'),
(5, 'Introducción al Diseño Gráfico', true, 'texto', 'En esta clase aprenderemos los conceptos básicos del diseño gráfico.'),
(5, 'Principios de Composición', true, 'texto', 'En esta clase aprenderemos sobre los principios de composición visual.'),
(5, 'Teoría del Color', true, 'texto', 'En esta clase aprenderemos sobre la teoría del color en el diseño gráfico.'),
(6, 'Paleta de Colores', true, 'texto', 'En esta clase aprenderemos a crear y utilizar paletas de colores en diseño gráfico.'),
(6, 'Tipografía', true, 'texto', 'En esta clase aprenderemos sobre la selección y uso de tipografías en diseño gráfico.'),
(7, 'Redacción de Contenidos', true, 'texto', 'En esta clase aprenderemos sobre la redacción efectiva de contenidos para marketing digital.'),
(7, 'SEO (Optimización de Motores de Búsqueda)', true, 'texto', 'En esta clase aprenderemos sobre estrategias de SEO para mejorar el posicionamiento en buscadores.'),
(7, 'SEM (Marketing en Motores de Búsqueda)', true, 'texto', 'En esta clase aprenderemos sobre el marketing en motores de búsqueda, incluyendo Google Ads.'),
(8, 'Publicidad en Redes Sociales', true, 'texto', 'En esta clase aprenderemos sobre la creación y gestión de campañas publicitarias en redes sociales.'),
(8, 'Email Marketing', true, 'texto', 'En esta clase aprenderemos sobre estrategias y herramientas para realizar campañas de email marketing.'),
(9, 'Conceptos Básicos de Finanzas', true, 'texto', 'En esta clase aprenderemos los conceptos básicos de finanzas personales.'),
(9, 'Presupuesto y Ahorro', true, 'texto', 'En esta clase aprenderemos sobre la importancia de establecer un presupuesto y estrategias para ahorrar.'),
(9, 'Inversión', true, 'texto', 'En esta clase aprenderemos sobre diferentes opciones de inversión y cómo empezar a invertir.'),
(10, 'Gestión de Deudas', true, 'texto', 'En esta clase aprenderemos sobre estrategias para gestionar y reducir las deudas.'),
(10, 'Planificación Financiera a Corto y Largo Plazo', true, 'texto', 'En esta clase aprenderemos sobre la importancia de la planificación financiera a corto y largo plazo.'),
(11, 'Cocina Italiana', true, 'texto', 'En esta clase aprenderemos sobre los platos más representativos de la cocina italiana.'),
(11, 'Cocina Mexicana', true, 'texto', 'En esta clase aprenderemos sobre los platos más representativos de la cocina mexicana.'),
(11, 'Cocina Asiática', true, 'texto', 'En esta clase aprenderemos sobre los platos más representativos de la cocina asiática.'),
(12, 'Cocina Francesa', true, 'texto', 'En esta clase aprenderemos sobre los platos más representativos de la cocina francesa.'),
(12, 'Cocina Mediterránea', true, 'texto', 'En esta clase aprenderemos sobre los platos más representativos de la cocina mediterránea.');


INSERT INTO Usuarios_Cursos (usuario_id, curso_id) 
VALUES 
(1, 1),
(2, 3),
(3, 4),
(4, 4),
(5, 2),
(6, 1),
(5, 6),
(6, 3),
(3, 1),
(2, 5),
(1, 5);

