CREATE TABLE Proveedores
(IdProveedor int primary key,
Proveedor varchar2(100) NOT NULL,
Encargado varchar2(100) not null,
Correo varchar(100) not null,
Telefono varchar(20) not null);

CREATE SEQUENCE IdProv
START WITH 1
INCREMENT BY 1;

CREATE TRIGGER Trig_Prov
BEFORE INSERT ON Proveedores
FOR EACH ROW
BEGIN
SELECT IdProv.NEXTVAL INTO :NEW.IdProveedor FROM DUAL;
END;

INSERT INTO Proveedores (Proveedor, Encargado, Correo, Telefono)
VALUES ('Coca Cola', 'Juan Perez3','Juan@gmail.com','23456722');

select * from proveedores

create table 

