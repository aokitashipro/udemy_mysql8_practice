<?php
try {
    // データベース接続
    $pdo = new PDO('mysql:host=mysql;dbname=udemy_practice', 'user', 'password123');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // トランザクション開始
    $pdo->beginTransaction();

    // 新しい顧客を追加
    $stmt = $pdo->prepare('INSERT INTO customers (name, email, created_at, updated_at) VALUES (?, ?, NOW(), NOW())');
    $stmt->execute(['ロールバック', 'rollback@test.com']);
    $customerId = $pdo->lastInsertId();

    // わざとエラー発生させる
    $stmt = $pdo->prepare('INSERT INTO orders (customer_id, total_price, created_at, updated_at, nonexistent_column) VALUES (?, ?, NOW(), NOW(), ?)');
    $stmt->execute([$customerId, 100, 'error']);

    $pdo->commit();
} catch (Exception $e) {
    // エラーが発生したらロールバック
    $pdo->rollBack();
    echo "エラーが出たのでロールバックしたよ: " . $e->getMessage();
}
?>
