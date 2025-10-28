<?php include 'config.php'; ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>exportar.php</title>
</head>

<body>
<?php
include 'config.php';

$fi = $_GET['fi'] ?? '2025-01-01';
$ff = $_GET['ff'] ?? date('Y-m-d');

header('Content-Type: text/csv; charset=utf-8');
header('Content-Disposition: attachment; filename=registros.csv');

$output = fopen('php://output', 'w');
fputcsv($output, ['ID','Nombres','Apellidos','Curso','Huella','Fecha']);

$sql = "SELECT i.*, c.nombre AS curso FROM ingreso i 
        LEFT JOIN curso c ON i.curso_id = c.id 
        WHERE DATE(i.fecha) BETWEEN :fi AND :ff 
        ORDER BY i.fecha DESC";
$stmt = $pdo->prepare($sql);
$stmt->execute([':fi' => $fi, ':ff' => $ff]);

while ($r = $stmt->fetch()) {
    fputcsv($output, [$r['id'], $r['nombres'], $r['apellidos'], $r['curso'], $r['huella'], $r['fecha']]);
}
fclose($output);
exit;
?>

</body>
</html>
