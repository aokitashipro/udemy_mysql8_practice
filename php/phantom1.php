<?php
try {
    // データベース接続
    $pdo = new PDO('mysql:host=mysql;dbname=udemy_practice', 'user', 'password123');
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // トランザクション分離レベルをREAD COMMITTEDに設定
    $pdo->exec('SET SESSION TRANSACTION ISOLATION LEVEL READ COMMITTED');

    // トランザクション開始
    $pdo->beginTransaction();

    // 現在の顧客数を取得
    $stmt = $pdo->query('SELECT COUNT(*) FROM customers');
    $initialCount = $stmt->fetchColumn();
    echo "初期顧客数: $initialCount<br>";

    // タイミングを合わせるために少し待機
    sleep(10);

    // 再度顧客数を取得
    $stmt = $pdo->query('SELECT COUNT(*) FROM customers');
    $finalCount = $stmt->fetchColumn();
    echo "最終顧客数: $finalCount<br>";

    // トランザクションをコミット
    $pdo->commit();
} catch (Exception $e) {
    // エラーが発生したらロールバック
    $pdo->rollBack();
    echo "エラーが出たのでロールバックしました: " . $e->getMessage();
}
?>
