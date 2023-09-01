CREATE DATABASE salvaodr;
USE salvaodr;

CREATE TABLE alumnos (
    id_alumno INT PRIMARY KEY AUTO_INCREMENT,
    nombres VARCHAR(50),
    sexo VARCHAR(50),
    fecha_nacimiento VARCHAR(50),
    telefono VARCHAR(15),
    direccion VARCHAR(200),
    correo_electronico VARCHAR(100),
    cod_grado INT
);

CREATE TABLE grado (
    cod_grado INT PRIMARY KEY,
    modalidad VARCHAR(50),
    jornada VARCHAR(50)
);

CREATE TABLE periodo (
    n_periodo INT PRIMARY KEY,
    id_alumno INT,
    cod_grado INT,
    cod_asignatura INT,
    nota_acumulativa VARCHAR(50),
    nota_examen VARCHAR(50)
);

CREATE TABLE docentes (
    id_docente INT PRIMARY KEY,
    nombres VARCHAR(50),
    apellidos VARCHAR(50),
    fecha_nacimiento VARCHAR(50),
    sexo VARCHAR(50),
    titulo VARCHAR(50),
    direccion VARCHAR(50)
);

CREATE TABLE asignaturas (
    cod_asignatura INT PRIMARY KEY,
    asignatura VARCHAR(50),
    cod_grado INT
);

CREATE TABLE docentes_asignaturas (
    id_docente INT,
    cod_asignatura INT
);

CREATE TABLE grados_docentes (
    cod_grado INT,
    id_docente INT
);

-- Insertar 20 alumnos en la tabla alumnos
INSERT INTO alumnos (nombres, sexo, fecha_nacimiento, telefono, direccion, correo_electronico, cod_grado)
VALUES
('Juan Pérez', 'Masculino', '2005-05-15', '123456789', 'Calle 123', 'juan@example.com', '1'),
('María García', 'Femenino', '2006-08-20', '987654321', 'Avenida Principal', 'maria@example.com', '2'),
('Pedro Rodríguez', 'Masculino', '2007-02-10', '555555555', 'Calle 456', 'pedro@example.com', '3'),
('Ana López', 'Femenino', '2005-12-05', '999999999', 'Avenida Secundaria', 'ana@example.com', '1'),
('Carlos Martínez', 'Masculino', '2006-03-25', '777777777', 'Calle Central', 'carlos@example.com', '2'),
('Luisa Torres', 'Femenino', '2007-07-14', '333333333', 'Calle Norte', 'luisa@example.com', '3'),
('Javier Sánchez', 'Masculino', '2005-11-30', '888888888', 'Avenida Oeste', 'javier@example.com', '1'),
('Sofía Ramírez', 'Femenino', '2006-01-18', '666666666', 'Calle Este', 'sofia@example.com', '2'),
('Diego González', 'Masculino', '2007-09-02', '444444444', 'Calle Sur', 'diego@example.com', '3'),
('Laura Castro', 'Femenino', '2005-10-08', '222222222', 'Avenida Principal', 'laura@example.com', '1'),
('Miguel Pérez', 'Masculino', '2006-04-12', '111111111', 'Calle 789', 'miguel@example.com', '2'),
('Paola González', 'Femenino', '2007-06-28', '888899999', 'Calle 543', 'paola@example.com', '3'),
('Andrés López', 'Masculino', '2005-08-17', '777766666', 'Avenida 456', 'andres@example.com', '1'),
('Carolina Rodríguez', 'Femenino', '2006-02-22', '555544444', 'Calle 789', 'carolina@example.com', '2'),
('Ricardo Torres', 'Masculino', '2007-04-04', '999988888', 'Avenida 123', 'ricardo@example.com', '3'),
('Isabel Sánchez', 'Femenino', '2005-07-19', '666655555', 'Calle 987', 'isabel@example.com', '1'),
('José Martínez', 'Masculino', '2006-10-31', '444433333', 'Avenida 654', 'jose@example.com', '2'),
('Valeria Ramírez', 'Femenino', '2007-03-14', '333322222', 'Calle 987', 'valeria@example.com', '3'),
('Roberto González', 'Masculino', '2005-09-26', '222211111', 'Avenida 321', 'roberto@example.com', '1'),
('Daniela Castro', 'Femenino', '2006-05-30', '111100000', 'Calle 654', 'daniela@example.com', '2');
