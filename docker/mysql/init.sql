-- 文字化けと5C問題（Shift-JISによるエラー）を防止する魔法の1行
SET NAMES utf8mb4;

CREATE TABLE `todos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

INSERT INTO `todos` (`title`, `description`) VALUES
('買い物に行く', '米と梅干しと麦茶を買う。'),
('米を炊く', '19:00に炊きあがるようにする。'),
('洗濯をする', '洗剤多めに入れておく');


CREATE TABLE `employees`(
    `emp_no` INT NOT NULL,
    `birth_date` DATE NOT NULL,
    `first_name` VARCHAR(14) NOT NULL,
    `last_name` VARCHAR(16) NOT NULL,
    `hire_date` DATE NOT NULL,
    `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY(`emp_no`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

INSERT INTO `employees`(`emp_no`, `birth_date`, `first_name`, `last_name`, `hire_date`) VALUES
(10001, '1953-09-02', 'Georgi', 'Facello', '1986-06-26'),
(10002, '1964-06-02', 'Bezalel', 'Simmel', '1985-11-21'),
(10003, '1959-12-03', 'Parto', 'Bamford', '1986-08-28'),
(10004, '1954-05-01', 'Chirstian', 'Koblick', '1986-12-01'),
(10005, '1955-01-21', 'Kyoichi', 'Maliniak', '1989-09-12'),
(10006, '1953-04-20', 'Anneke', 'Preusig', '1989-06-02'),
(10007, '1957-05-23', 'Tzvetan', 'Zielinski', '1989-02-10'),
(10008, '1958-02-19', 'Saniya', 'Kalloufi', '1994-09-15'),
(10009, '1952-04-19', 'Sumant', 'Peac', '1985-02-18'),
(10010, '1963-06-01', 'Duangkaew', 'Piveteau', '1989-08-24'),
(10011, '1953-11-07', 'Mary', 'Sluis', '1990-01-22'),
(10012, '1960-10-04', 'Patricio', 'Bridgland', '1992-12-18'),
(10013, '1963-06-07', 'Eberhardt', 'Terkki', '1985-10-20'),
(10014, '1956-02-12', 'Berni', 'Genin', '1987-03-11'),
(10015, '1959-08-19', 'Guoxiang', 'Nooteboom', '1987-07-02'),
(10016, '1961-05-02', 'Kazuhito', 'Cappelletti', '1995-01-27'),
(10017, '1958-07-06', 'Cristinel', 'Bouloucos', '1993-08-03'),
(10018, '1954-06-19', 'Kazuhide', 'Peha', '1987-04-03'),
(10019, '1953-01-23', 'Lillian', 'Haddadi', '1999-04-30'),
(10020, '1952-12-24', 'Mayuko', 'Warwick', '1991-01-26'),
(10021, '1960-02-20', 'Ramzi', 'Erde', '1988-02-10'),
(10022, '1952-07-08', 'Shahaf', 'Famili', '1995-08-22'),
(10023, '1953-09-29', 'Bojan', 'Montemayor', '1989-12-17'),
(10024, '1958-09-05', 'Suzette', 'Pettey', '1997-05-19'),
(10025, '1958-10-31', 'Prasadram', 'Heyers', '1987-08-17'),
(10026, '1953-04-03', 'Yongqiao', 'Berztiss', '1995-03-20'),
(10027, '1962-07-10', 'Divier', 'Reistad', '1989-07-07'),
(10028, '1963-11-26', 'Domenick', 'Tempesti', '1991-10-22'),
(10029, '1956-12-13', 'Otmar', 'Herbst', '1985-11-20'),
(10030, '1958-07-14', 'Elvis', 'Demeyer', '1994-02-17'),
(10031, '1959-01-27', 'Karsten', 'Joslin', '1991-09-01'),
(10032, '1960-08-09', 'Jeong', 'Reistad', '1990-06-20'),
(10033, '1956-11-14', 'Arif', 'Merlo', '1987-03-18'),
(10034, '1962-12-29', 'Bader', 'Swan', '1988-09-21'),
(10035, '1953-02-08', 'Alain', 'Chappelet', '1988-09-05'),
(10036, '1959-08-10', 'Adamantios', 'Portugali', '1992-01-03'),
(10037, '1963-07-22', 'Pradeep', 'Makrucki', '1990-12-05'),
(10038, '1960-07-20', 'Huan', 'Lortz', '1989-09-20'),
(10039, '1959-10-01', 'Alejandro', 'Brender', '1988-01-19'),
(10040, '1959-09-13', 'Weiyi', 'Meriste', '1993-02-14'),
(10041, '1959-08-27', 'Uri', 'Lenart', '1989-11-12'),
(10042, '1956-02-26', 'Magy', 'Stamatiou', '1993-03-21'),
(10043, '1960-09-19', 'Yishay', 'Tzvieli', '1990-10-20'),
(10044, '1961-09-21', 'Mingsen', 'Casley', '1994-05-21'),
(10045, '1957-08-14', 'Moss', 'Shanbhogue', '1989-09-02'),
(10046, '1960-07-23', 'Lucien', 'Rosenbaum', '1992-06-20'),
(10047, '1952-06-29', 'Zvonko', 'Nyanchama', '1989-03-31'),
(10048, '1963-07-11', 'Florian', 'Syrotiuk', '1985-02-24'),
(10049, '1961-04-24', 'Basil', 'Tramer', '1992-05-04'),
(10050, '1958-05-21', 'Yinghua', 'Dredge', '1990-12-25'),
(10051, '1953-07-28', 'Hidefumi', 'Caine', '1992-10-15'),
(10052, '1961-02-26', 'Heping', 'Nitsch', '1988-05-21'),
(10053, '1954-09-13', 'Sanjiv', 'Zschoche', '1986-02-04'),
(10054, '1957-04-04', 'Mayumi', 'Schueller', '1995-03-13'),
(10055, '1956-06-06', 'Georgy', 'Dredge', '1992-04-27'),
(10056, '1961-09-01', 'Brendon', 'Bernini', '1990-02-01'),
(10057, '1954-05-30', 'Ebbe', 'Callaway', '1992-01-15'),
(10058, '1954-10-01', 'Berhard', 'McFarlin', '1987-04-13'),
(10059, '1953-09-19', 'Alejandro', 'McAlpine', '1991-06-26'),
(10060, '1961-10-15', 'Breannda', 'Billingsley', '1987-11-02'),
(10061, '1962-10-19', 'Tse', 'Herber', '1985-09-17'),
(10062, '1961-11-02', 'Anoosh', 'Peyn', '1991-08-30'),
(10063, '1952-08-06', 'Gino', 'Leonhardt', '1989-04-08'),
(10064, '1959-04-07', 'Udi', 'Jansch', '1985-11-20'),
(10065, '1963-04-14', 'Satosi', 'Awdeh', '1988-05-18'),
(10066, '1952-11-13', 'Kwee', 'Schusler', '1986-02-26'),
(10067, '1953-01-07', 'Claudi', 'Stavenow', '1987-03-04'),
(10068, '1962-11-26', 'Charlene', 'Brattka', '1987-08-07'),
(10069, '1960-09-06', 'Margareta', 'Bierman', '1989-11-05'),
(10070, '1955-08-20', 'Reuven', 'Garigliano', '1985-10-14'),
(10071, '1958-01-21', 'Hisao', 'Lipner', '1987-10-01'),
(10072, '1952-05-15', 'Hironoby', 'Sidou', '1988-07-21'),
(10073, '1954-02-23', 'Shir', 'McClurg', '1991-12-01'),
(10074, '1955-08-28', 'Mokhtar', 'Bernatsky', '1990-08-13'),
(10075, '1960-03-09', 'Gao', 'Dolinsky', '1987-03-19'),
(10076, '1952-06-13', 'Erez', 'Ritzmann', '1985-07-09'),
(10077, '1964-04-18', 'Mona', 'Azuma', '1990-03-02'),
(10078, '1959-12-25', 'Danel', 'Mondadori', '1987-05-26'),
(10079, '1961-10-05', 'Kshitij', 'Gils', '1986-03-27'),
(10080, '1957-12-03', 'Premal', 'Baek', '1985-11-19'),
(10081, '1960-12-17', 'Zhongwei', 'Rosen', '1986-10-30'),
(10082, '1963-09-09', 'Parviz', 'Lortz', '1990-01-03'),
(10083, '1959-07-23', 'Vishv', 'Zockler', '1987-03-31'),
(10084, '1960-05-25', 'Tuval', 'Kalloufi', '1995-12-15'),
(10085, '1962-11-07', 'Kenroku', 'Malabarba', '1994-04-09');


CREATE TABLE `users` (
    `id` int NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(20) NOT NULL,    
    `email` VARCHAR(50) NOT NULL,    
    `password` VARCHAR(20) NOT NULL,    
    `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY(id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

INSERT INTO `users`(`name`, `email`, `password`) VALUES
('山田太朗', 'taro_yamada@test.com', 'yamadapass'),
('田中誠', 'makoto_tanaka@test.com', 'tanakapass'),
('鈴木一郎', 'ichiro_suzuki@test.com', 'suzukipass');


CREATE TABLE `tweets`(
    `id` int NOT NULL AUTO_INCREMENT,
    `content` VARCHAR(300) NOT NULL,   
    `user_id` int NOT NULL,
    `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY(`id`),
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

INSERT INTO `tweets`(`content`, `user_id`) VALUES 
('交通安全指導で保育園へおまわりさんが来た時、質問コーナーを設けてくれて「わるいひと つかまえる？」「パトカーはやい？」なんて子どもたちが聞くなか、男の子(4歳)がモジモジしながら「みかん すきですか…」と聞いた瞬間、おまわりさんが「可愛い…」と小声で言っていて「わかる…」ってなった。', 1),
('先日友人に「夫のどこが好き？」と聞かれて特にコレというアレはなく強いて言うなら深夜目が覚め１階で水飲んでたら後ろで微かな物音がして振り向かずに「いるんだろ？出て来いよ」って言ったら「さすがだな。人間界での暮らしが長くともかつての能力は健在という訳か」って返してきた所は嫌いじゃない', 1),
('電車に間に合いたい男子高生達が階段降りてったんだけど、1人靴脱げてうわーって叫んでて、先に行った子たちが「シンデレラァ！」「何やってんだシンデレラァ！！」「あばよシンデレラァ！！」って見捨ててて超面白かった', 1),
('なるべく怒鳴らないようにしよう、慌てない母ちゃんになろうと決意しました。考えた結果、スーパーで走り出す娘をムスカになりきって早歩きで追いかけながら、「どこへ行こうというのかね」って言うのがいちばんよかったです', 2),
('コンビニ前で男子高校生たちが「天皇さまさ、5月からマジでゆっくりしてほしい」「俺のじいちゃんは毎日クレープ買いに行ってるから、そんな感じで好きなモン食ってほしい」「天皇さま、何食べんのかな」「からあげクンとか食うのかな」「からあげクン美味しいから食べてほしいよな」と雑談している。', 2),
('前にも言ったかもだけど、うちの両親は挨拶だけはしっかりしなさいって子育てをしていたから、弟が反抗期のときは「いってきます…オイ！いってきますっつってんだろ！！」「いただきます…チッ、俺みたいな人間には『召し上がれ』もなしかよ…」って傍から見るとめっちゃ面白い切れ方をしていた', 2),
('知人の爺がクレカ入り財布を落とした→財布の中には暗証番号メモもいれてある→やばいじゃん！？→爺「問題ない。暗証番号は5つ記してある」→？→爺「そしてその全てはダミーだ」→！？→爺「ATMでそのダミー全て試すとロックされて銀行から俺に連絡がくる」→そして実際連絡きた', 3),
('米津玄師、レモンとパプリカで一生分稼いでるだろうから実質農家だよな', 3),
('子供の頃プールで「いきなり入ると心臓がビックリしちゃうから少しずつ水を体にかけていって、ゆっくり入るように」と教育されたので、連休終わっていきなり仕事や勉強すると心臓がビックリしちゃうからしばらくは会社や学校に着いたらすぐ帰るようにした方がいいと思う。心臓がビックリしちゃうから。', 3),
('ひまー', 3);
