<?php
try {
    $pdo = new PDO('mysql:host=mysql;dbname=udemy_practice', 'user', 'password123');
    echo 'transaction1';
} catch (PDOException $e) {
    echo 'Connection failed: ' . $e->getMessage();
}

try {
    $pdo->beginTransaction();
    $stmt = $pdo->prepare("SELECT * FROM products WHERE id = 1 FOR UPDATE");
    $stmt->execute();
    sleep(5); // ここで一時停止して、トランザクション2を実行させる
    $stmt = $pdo->prepare("SELECT * FROM products WHERE id = 2 FOR UPDATE");
    $stmt->execute();
    $pdo->commit();
    echo '保存できたよ';
} catch (Exception $e) {
    $pdo->rollBack();
    echo "Failed: " . $e->getMessage();
}