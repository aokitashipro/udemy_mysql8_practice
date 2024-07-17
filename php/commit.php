<?php
try {
    // データベース接続
    $pdo = new PDO('mysql:host=mysql;dbname=udemy_practice', 'user', 'password123');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // トランザクション開始
    $pdo->beginTransaction();

    // 新しい顧客を追加
    $stmt = $pdo->prepare('INSERT INTO customers (name, email, created_at, updated_at) VALUES (?, ?, NOW(), NOW())');
    $stmt->execute(['正常トランザクション', 'success@test.com']);
    $customerId = $pdo->lastInsertId();

    // 新しい注文を追加
    $stmt = $pdo->prepare('INSERT INTO orders (customer_id, total_price, created_at, updated_at) VALUES (?, ?, NOW(), NOW())');
    $stmt->execute([$customerId, 200]);
    $orderId = $pdo->lastInsertId();

    // 注文詳細を追加
    $stmt = $pdo->prepare('INSERT INTO order_details (order_id, product_id, price, quantity, created_at, updated_at) VALUES (?, ?, ?, ?, NOW(), NOW())');
    $stmt->execute([$orderId, 1, 500, 2]);

    // トランザクションをコミット
    $pdo->commit();
    echo "トランザクションが正常に実行されました。";
} catch (Exception $e) {
    // エラーが発生したらロールバック
    $pdo->rollBack();
    echo "エラーが出たのでロールバックしたよ: " . $e->getMessage();
}
?>
