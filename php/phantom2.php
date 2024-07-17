<?php
try {
    // データベース接続
    $pdo = new PDO('mysql:host=mysql;dbname=udemy_practice', 'user', 'password123');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // トランザクション分離レベルをREAD COMMITTEDに設定
    $pdo->exec('SET SESSION TRANSACTION ISOLATION LEVEL READ COMMITTED');

    // トランザクション開始
    $pdo->beginTransaction();

    // 新しい顧客を追加
    $stmt = $pdo->prepare('INSERT INTO customers (name, email, created_at, updated_at) VALUES (?, ?, NOW(), NOW())');
    $stmt->execute(['ファントムリード', 'phantom@test.com']);
    echo "新しい顧客が追加されました。<br>";

    // トランザクションをコミット
    $pdo->commit();
} catch (Exception $e) {
    // エラーが発生したらロールバック
    $pdo->rollBack();
    echo "エラーが出たのでロールバックしました: " . $e->getMessage();
}
?>
