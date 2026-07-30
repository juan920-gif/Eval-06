CREATE DATABASE SistemaCursos;
USE SistemaCursos;

CREATE TABLE Estudiantes (
    id_estudiante INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    fecha_registro DATE NOT NULL
);

CREATE TABLE Cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nombre_curso VARCHAR(150) NOT NULL,
    creditos INT NOT NULL,
    cupo_maximo INT NOT NULL
);

CREATE TABLE Inscripciones (
    id_inscripcion INT AUTO_INCREMENT PRIMARY KEY,
    id_estudiante INT NOT NULL,
    id_curso INT NOT NULL,
    fecha_inscripcion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_estudiante) REFERENCES Estudiantes(id_estudiante) ON DELETE CASCADE,
    FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso) ON DELETE CASCADE
);

INSERT INTO Estudiantes (nombre, apellido, email, fecha_registro) VALUES 
('Ana', 'García', 'ana.garcia@email.com', '2023-09-01'),
('Carlos', 'López', 'carlos.l@email.com', '2023-09-02'),
('María', 'Fernández', 'maria.f@email.com', '2023-09-02'),
('Luis', 'Martínez', 'luis.m@email.com', '2023-09-03');

INSERT INTO Cursos (nombre_curso, creditos, cupo_maximo) VALUES 
('Introducción a la Programación', 4, 30),
('Bases de Datos Relacionales', 3, 25),
('Diseño Web Frontend', 3, 20);

INSERT INTO Inscripciones (id_estudiante, id_curso) VALUES 
(1, 1),
(1, 2), 
(2, 1);




