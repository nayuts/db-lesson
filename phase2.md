## 事前準備：既存の `phase2_practice` のデータ（社員データ等）が入っている環境で、以下のクエリを作成してください。

### 1. hire_date（入社日）が「1987-08-17」のデータを取得してください。
SELECT * FROM employees WHERE hire_date = '1987-08-17';

### 2. hire_dateが「1987-08-17 〜 1990-08-17」の間のデータを取得してください。
SELECT * FROM employees WHERE hire_date >= '1987-08-17' AND hire_date <= '1990-08-17';

### 3. first_nameが「ba」から始まるデータだけを取得してください。
SELECT * FROM employees WHERE first_name LIKE 'ba%';

### 4. last_nameが「Bamford」「Sluis」「Pettey」のいずれかに該当するデータをまとめて取得してください。
SELECT * FROM employees WHERE last_name = 'Bamford' OR last_name = 'Sluis' OR last_name = 'Pettey';

 <!-- SELECT * FROM employees WHERE last_name IN (Bamford, Sluis, Pattey); -->

### 5. first_nameのどこかに「o」を含むデータを取得してください。
SELECT * FROM employees WHERE first_name LIKE '%o%';

### 6. 全社員の人数（総件数）を取得してください。
SELECT COUNT(*) FROM employees;

### 7. 入社日（hire_date）が一番古い（過去の）日付を取得してください。
SELECT MIN(hire_date) FROM employees;

### 8. **【追加問題】** 入社日（hire_date）が一番新しい（最新の）日付を取得してください。
SELECT MAX(hire_date) FROM employees;

### 9. **【追加問題】** 入社日（hire_date）ごとに、それぞれ何人の社員が入社したかを集計してください（件数のカラムには `employee_count` という別名をつけてください）。
SELECT 
    DATE(hire_date), 
    COUNT(*) AS employee_count
FROM 
    employees
GROUP BY 
    DATE(hire_date);