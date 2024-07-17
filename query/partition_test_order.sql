-- 基本テーブル
-- パーティション設定
CREATE TABLE partition_test_order (
    order_id INT,
    order_date DATE NOT NULL,
    customer_id INT,
    product_id INT,
    quantity INT,
    total_amount INT,
    PRIMARY KEY (order_id, order_date)

)
PARTITION BY RANGE (YEAR(order_date)) (
    PARTITION p2024 VALUES LESS THAN (2024),
    PARTITION p2025 VALUES LESS THAN (2025),
    PARTITION p2026 VALUES LESS THAN (2026),
    PARTITION p2027 VALUES LESS THAN (2027),
    PARTITION p2028 VALUES LESS THAN (2028),
    PARTITION p2029 VALUES LESS THAN (2029),
    PARTITION p2030 VALUES LESS THAN (2030)
);

-- ダミーデータ
INSERT INTO partition_test_order (order_id, order_date, customer_id, product_id, quantity, total_amount) VALUES
(1, '2024-05-15', 1, 101, 2, 2999),
(2, '2025-07-21', 2, 102, 1, 1599),
(3, '2026-11-10', 3, 103, 5, 7995),
(4, '2027-03-30', 4, 104, 3, 4500),
(5, '2028-01-05', 5, 105, 4, 6000);

-- パーティションを指定したクエリ
SELECT * FROM partition_test_order PARTITION (p2025) WHERE quantity > 1;

-- パーティションの確認
SHOW CREATE TABLE partition_test_order;

-- EXPLAINでパフォーマンス確認
EXPLAIN SELECT * FROM partition_test_order
WHERE order_date BETWEEN '2022-01-01' AND '2022-12-31';

-- パーティションの追加
ALTER TABLE partition_test_order ADD PARTITION (PARTITION p2031 VALUES LESS THAN (2031));

-- パーティション内のデータ削除
ALTER TABLE partition_test_order TRUNCATE PARTITION p2024;

-- パーティション情報の取得
SELECT 
    TABLE_NAME, 
    PARTITION_NAME, 
    PARTITION_ORDINAL_POSITION, 
    PARTITION_METHOD, 
    SUBPARTITION_METHOD, 
    PARTITION_EXPRESSION, 
    TABLE_ROWS, 
    DATA_LENGTH, 
    INDEX_LENGTH, 
    DATA_FREE
FROM 
    INFORMATION_SCHEMA.PARTITIONS
WHERE 
    TABLE_NAME = 'partition_test_order';
