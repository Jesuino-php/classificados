<?php
session_start();

global $pdo;
try {
	$pdo = new PDO("mysql:dbname=classificados;host=localhost", "root", "");
} catch(PODException $e) {
	echo "FALHOU: ".$e->getMessaage();
	exit;
}
?>