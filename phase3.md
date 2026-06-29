## 事前準備：既存の `phase3_practice` のデータが入っている環境で、以下のクエリを作成してください。
（これまで学んだ `WHERE`, `COUNT`, `ORDER BY`, `LIMIT`, `JOIN` などを総動員して挑みましょう！）

### 1. 「山田太郎」がツイートした内容(content)を全て取得してください。
SELECT tweets.content AS tweet_content
FROM users
INNER JOIN tweets
ON users.id = tweets.user_id
WHERE users.name = '山田太朗';

<!-- WHERE users.id = '1'; -->

### 2. 「田中誠」がツイートした件数を取得してください。
SELECT COUNT(*) AS tweet_count
FROM users
INNER JOIN tweets
ON users.id = tweets.user_id
WHERE users.name = '田中誠';

### 3. 「山田太郎」が投稿した直近2件の内容(content)を取得してください。
SELECT tweet_count
FROM users
INNER JOIN tweets
ON users.id = tweets.user_id
WHERE users.name = '山田太郎';
ORDER BY tweets.created_at DESC
LIMIT 2;

### 4. ツイートした件数が一番多い人物名(name)を取得してください。
SELECT users.name
FROM users
LEFT OUTER JOIN tweets
ON users.id = tweets.user_id
GROUP BY users.id, users.name
ORDER BY COUNT(*) DESC
LIMIT 1

SELECT * FROM users;