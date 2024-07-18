<?php
try {
    $pdo = new PDO('mysql:host=mysql;dbname=udemy_practice', 'user', 'password123');
    echo 'deadlock test1';
} catch (PDOException $e) {
    echo 'Connection failed: ' . $e->getMessage();
}

try {
    $pdo->beginTransaction();
    $stmt = $pdo->prepare("SELECT * FROM products WHERE id = 1 FOR UPDATE"); //行ロック(排他ロック)
    $stmt->execute();
    sleep(10); // ここで一時停止して、トランザクション2を実行させる
    $stmt = $pdo->prepare("SELECT * FROM products WHERE id = 2 FOR UPDATE"); //行ロック(排他ロック)
    $stmt->execute();
    $pdo->commit();
    echo '保存できたよ';
} catch (Exception $e) {
    $pdo->rollBack();
    echo "Failed: " . $e->getMessage();
}