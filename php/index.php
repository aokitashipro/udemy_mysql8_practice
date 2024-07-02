<?php
try {
    $pdo = new PDO('mysql:host=mysql;dbname=udemy_practice', 'user', 'password123');
    echo 'Database connection successful!';
} catch (PDOException $e) {
    echo 'Connection failed: ' . $e->getMessage();
}