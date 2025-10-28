

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>process_login.php</title>
</head>

<body>
<?php
session_start();
include 'config.php';

$usuario = $_POST['usuario'] ?? '';
$password = $_POST['password'] ?? '';

$stmt = $pdo->prepare("SELECT id, password FROM administrador WHERE usuario = ?");
$stmt->execute([$usuario]);
$user = $stmt->fetch();

if ($user && password_verify($password, $user['password'])) {
    $_SESSION['admin_id'] = $user['id'];
    header('Location: ver.php');
    exit;
} else {
    echo "Usuario o contraseña incorrecta. <a href='login.php'>Volver</a>";
}
?>

</body>
</html>
