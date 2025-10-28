<?php include 'config.php'; ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>guardar_ingreso.php</title>
</head>

<body>
<?php
include 'config.php';

$nombres = trim($_POST['nombres'] ?? '');
$apellidos = trim($_POST['apellidos'] ?? '');
$curso_id = $_POST['curso_id'] ?? null;
$huella = trim($_POST['huella'] ?? '');

if (!$nombres || !$curso_id) {
    die("Por favor, complete todos los campos obligatorios.");
}

$sql = "INSERT INTO ingreso (nombres, apellidos, curso_id, huella, fecha)
        VALUES (:nombres, :apellidos, :curso_id, :huella, NOW())";
$stmt = $pdo->prepare($sql);
$stmt->execute([
    ':nombres' => $nombres,
    ':apellidos' => $apellidos,
    ':curso_id' => $curso_id,
    ':huella' => $huella
]);

echo "<h3>Registro guardado correctamente.</h3>";
echo "<a href='registro.php'>Volver</a>";
?>

</body>
</html>
