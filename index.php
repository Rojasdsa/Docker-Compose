<?php

// "SERVIDOR" , "USUARIO" , "CONTRASEÑA", "BASE DE DATOS"
$conexion = mysqli_connect("localhost", "root", "", "aceitunas");

// SE COMPRUEBA LA CONEXIÓN
if (mysqli_connect_errno()) {
    echo "Error al conectar con la BB.DD." . mysqli_connect_error();
    exit();
} else {
    echo "<h1>Bienvenido a la BB.DD</h1>";
}

// CONSULTAS
$consulta = "SELECT * FROM TiposAceituna";
$listaAceitunas = mysqli_query($conexion,$consulta);

if ($listaAceitunas){

    foreach ($listaAceitunas as $aceituna){
        echo "$aceituna[ID] $aceituna[Nombre] $aceituna[Color] $aceituna[Tamaño] $aceituna[Sabor] $aceituna[Origen] <br>";
    }
}

