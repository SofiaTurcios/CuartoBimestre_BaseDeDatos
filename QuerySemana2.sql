-- Crear nuestra base de datos
CREATE DATABASE IF NOT EXISTS db_Usuario;
-- Usar la base de datos ya creada
USE db_Usuario;
-- Crear una tabla que nos permitirá registrar usuarios
CREATE TABLE IF NOT EXISTS tb_Usuario (
    id_Usuario int auto_increment primary key,
    nombreUsuario varchar(25) NOT NULL,
    dpi varchar(13) NOT NULL,
    direccion varchar(30) NOT NULL,
    telefono varchar(8) NOT NULL,
    correo_electronico varchar(50) NOT NULL UNIQUE,
    usuario varchar(15) NOT NULL UNIQUE,
    pass varchar(20) NOT NULL,
    fecha_registro timestamp default current_timestamp
);
-- Seleccionar todos los campos de la tabla
Select * From tb_Usuario;
-- registro de información
insert into tb_Usuario(nombreUsuario,dpi,direccion,telefono,correo_electronico,usuario,pass)
values('Juan','32156489','Carchá','12398746','juanpop@gmail.com','Juanpop23','2323');
-- todos los campos que se van a insertar van dentro de apóstrofes simples

select * from tb_Usuario;

-- seleccionar solo el campo del id = 2
select * from tb_Usuario where id_Usuario = 2;
select usuario,pass from tb_Usuario where id_Usuario = 2;

-- consulta para validar el usuario
Select id_Usuario from tb_Usuario where usuario = 'Wili' AND pass = '1111';
