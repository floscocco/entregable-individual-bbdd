CREATE TABLE Categorias (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre_categoria VARCHAR(255)
);

CREATE TABLE Usuarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  apellido VARCHAR(100),
  email VARCHAR(100),
  contraseña VARCHAR(100),
  categoria_id INT,
  FOREIGN KEY (categoria_id) REFERENCES Categorias(id)
);

CREATE TABLE Cursos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(100),
  descripcion TEXT,
  imagen VARCHAR(100),
  fecha_inicio DATE,
  fecha_finalizacion DATE,
  cupo_maximo INT
);

CREATE TABLE Unidades (
  id INT AUTO_INCREMENT PRIMARY KEY,
  curso_id INT,
  titulo VARCHAR(255),
  descripcion TEXT,
  fecha_inicio DATE,
  FOREIGN KEY (curso_id) REFERENCES Cursos(id)
);

CREATE TABLE Clases (
  id INT AUTO_INCREMENT PRIMARY KEY,
  unidad_id INT,
  titulo VARCHAR(255),
  descripcion TEXT,
  fecha_inicio DATE,
  visibilidad BOOLEAN,
  FOREIGN KEY (unidad_id) REFERENCES Unidades(id)
);

CREATE TABLE Bloques (
  id INT AUTO_INCREMENT PRIMARY KEY,
  clase_id INT,
  titulo VARCHAR(255),
  visibilidad BOOLEAN,
  tipo ENUM('texto', 'video', 'presentación', 'PDF', 'archivo'),
  contenido TEXT,
  FOREIGN KEY (clase_id) REFERENCES Clases(id)
);

CREATE TABLE Usuarios_Cursos (
  usuario_id INT,
  curso_id INT,
  FOREIGN KEY (usuario_id) REFERENCES Usuarios(id),
  FOREIGN KEY (curso_id) REFERENCES Cursos(id),
  PRIMARY KEY (usuario_id, curso_id)
);