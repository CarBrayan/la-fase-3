

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ver.php</title>
</head>

<body>
<?php include 'config.php'; ?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Lista de Ingresos - Edumeal</title>
</head>
<body>
<h2>Registros de Ingreso</h2>

<table border="1" cellpadding="5">
    <tr>
        <th>ID</th>
        <th>Nombres</th>
        <th>Apellidos</th>
        <th>Curso</th>
        <th>Huella</th>
        <th>Fecha</th>
    </tr>
    <?php
    $stmt = $pdo->query("SELECT i.*, c.nombre AS curso FROM ingreso i 
                         LEFT JOIN curso c ON i.curso_id = c.id 
                         ORDER BY i.fecha DESC");
    while ($r = $stmt->fetch()) {
        echo "<tr>
            <td>{$r['id']}</td>
            <td>{$r['nombres']}</td>
            <td>{$r['apellidos']}</td>
            <td>{$r['curso']}</td>
            <td>{$r['huella']}</td>
            <td>{$r['fecha']}</td>
        </tr>";
    }
    ?>
</table>

<br>
<a href="registro.php">Registrar nuevo ingreso</a> |
<a href="exportar.php?fi=2025-01-01&ff=2025-12-31">Exportar CSV</a>

</body>
</html>

</body>
</html>
