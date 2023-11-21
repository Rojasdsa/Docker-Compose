<?php

// "SERVIDOR" , "USUARIO" , "CONTRASEÑA", "BASE DE DATOS"
$conexion = new mysqli("mysql", "root", "", "aceitunas", 3306);

// SE COMPRUEBA LA CONEXIÓN
if (mysqli_connect_errno()) {
    echo "Error al conectar con la BB.DD." . mysqli_connect_error();
    exit();
} else {
    echo "<h1>Bienvenido a la BB.DD</h1>";
}

// CONSULTAS
$consulta = "SELECT Nombre FROM TiposAceituna";
$listaAceitunas = mysqli_query($conexion, $consulta);

if ($listaAceitunas) {
    foreach ($listaAceitunas as $aceituna) {
        echo "$aceituna[Nombre] <br>";
    }
}
