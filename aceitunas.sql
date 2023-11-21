DROP DATABASE IF EXISTS aceitunas;
CREATE DATABASE aceitunas;
USE aceitunas;

CREATE TABLE TiposAceituna (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Color VARCHAR(20),
    Tamano VARCHAR(20),
    Sabor VARCHAR(50),
    Origen VARCHAR(50)
);

-- Insertar ejemplos de tipos de aceituna
INSERT INTO TiposAceituna (ID, Nombre, Color, Tamano, Sabor, Origen)
VALUES
    (1, 'Manzanilla', 'Verde', 'Pequeña', 'Suave y dulce', 'España'),
    (2, 'Hojiblanca', 'Verde', 'Mediana', 'Fresco y afrutado', 'España'),
    (3, 'Arbequina', 'Negra', 'Pequeña', 'Frutado y suave', 'España'),
    (4, 'Kalamata', 'Morada', 'Grande', 'Intenso y afrutado', 'Grecia'),
    (5, 'Gaeta', 'Negra', 'Pequeña', 'Salada y terrosa', 'Italia');
