-- 데이터베이스 생성
CREATE DATABASE IF NOT EXISTS ssafy_study CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- 데이터베이스 사용
USE ssafy_study;

-- board 테이블 생성
CREATE TABLE IF NOT EXISTS `board` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `title` VARCHAR(255) NOT NULL,
    `writer` VARCHAR(100) NOT NULL,
    `content` TEXT NOT NULL,
    `view_cnt` INT DEFAULT 0,
    `reg_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `curriculum` (
    code INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

DROP TABLE IF EXISTS `users`;

CREATE TABLE IF NOT EXISTS `users`(
    id VARCHAR(100) PRIMARY KEY,
    password VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    curriculum_code INT,
    FOREIGN KEY (curriculum_code) REFERENCES curriculum(code)
);

SELECT * FROM board;

SELECT * FROM curriculum;

SELECT * FROM users;

INSERT INTO `ssafy_study`.`curriculum` (`code`,`name`)
VALUES (100, "Python"), (200, "Java"), (300, "C");


INSERT INTO users
VALUES ("ssafy", "1234", "김싸피", 200),
("admin", "1234", "admin", 200);
-- admin '이름'일 때 관리자 페이지로 넘어가게 해놨음


INSERT INTO users
VALUES ("study", "1234", "스터디", 100);


-- 기타

UPDATE curriculum set name = "Python" WHERE code = 100;
