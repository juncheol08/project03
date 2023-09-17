CREATE DATABASE teaspoon_my
drop database teaspoon_my
USE teaspoon_my


-- commit


CREATE TABLE notice(
                       seq INT AUTO_INCREMENT PRIMARY KEY,
                       title VARCHAR(100) NOT NULL,
                       content VARCHAR(1000) NOT NULL,
                       nickname VARCHAR(20),
                       regdate DATETIME DEFAULT CURRENT_TIMESTAMP(),
                       visited INT DEFAULT 0
);

SHOW TABLES;

SELECT * FROM notice;

INSERT INTO notice VALUES(DEFAULT, '샘플 글 제목 1','샘플 글 내용 1','user1',DEFAULT,DEFAULT);
INSERT INTO notice VALUES(DEFAULT, '샘플 글 제목 2','샘플 글 내용 2','user2',DEFAULT,DEFAULT);
INSERT INTO notice VALUES(DEFAULT, '샘플 글 제목 3','샘플 글 내용 3','user3',DEFAULT,DEFAULT);
INSERT INTO notice VALUES(DEFAULT, '샘플 글 제목 4','샘플 글 내용 4','user4',DEFAULT,DEFAULT);
INSERT INTO notice VALUES(DEFAULT, '샘플 글 제목 5','샘플 글 내용 5','user5',DEFAULT,DEFAULT);
INSERT INTO notice VALUES(DEFAULT, '샘플 글 제목 6','샘플 글 내용 6','user6',DEFAULT,DEFAULT);
board

CREATE TABLE member(
                       id VARCHAR(16) PRIMARY KEY, -- 아이디
                       pw VARCHAR(330) NOT NULL, -- 비밀번호
                       NAME VARCHAR(100) NOT NULL, -- 이름
                       email VARCHAR(100) NOT NULL, -- 이메일
                       tel VARCHAR(13) NOT NULL, -- 전화 번호
                       addr1 VARCHAR(200), -- 주소1
                       addr2 VARCHAR(100), -- 주소2
                       postcode VARCHAR(10), -- 우편번호
                       regdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP(), -- 가입일
                       birth DATE, -- 생일
                       pt INT DEFAULT 0, -- 포인트
                       visited INT DEFAULT 0,
                       job INT NOT NULL -- 직업 학생: 1, 선생님: 2
);

DROP TABLE member
    SHOW TABLES
    INSERT INTO member VALUES(
    'admin', '1234', '관리자', 'admin@edu.com', '010-1234-5678',
    '경기 성남시 분당구 대왕판교로 477', '102호', '13480', DEFAULT, '1998-04-22',
    DEFAULT, DEFAULT, 0);

-- 학부모
INSERT INTO member VALUES(
                             'hong', '1234', '홍길동', 'hong@edu.com', '010-2222-3333',
                             '경기 성남시 분당구 대왕판교로 477', '102호', '13480', DEFAULT, '1980-04-22',
                             DEFAULT, DEFAULT, 1);
INSERT INTO member VALUES(
                             'kang', '1234', '강감찬', 'kang@edu.com', '010-1212-1212',
                             '경기 성남시 분당구 대왕판교로 477', '102호', '13480', DEFAULT, '1975-04-22',
                             DEFAULT, DEFAULT, 1);

-- 선생
INSERT INTO member VALUES(
                             'son', '1234', '손흥민', 'son@edu.com', '010-5555-6666',
                             '경기 성남시 분당구 대왕판교로 477', '102호', '13480', DEFAULT, '1983-04-22',
                             DEFAULT, DEFAULT, 2);
INSERT INTO member VALUES(
                             'lee', '1234', '이순신', 'lee@edu.com', '010-3434-3434',
                             '경기 성남시 분당구 대왕판교로 477', '102호', '13480', DEFAULT, '1990-04-22',
                             DEFAULT, DEFAULT, 2);

-- 비밀번호 1234 spring 암호화 버전
UPDATE member SET pw='$2a$10$3zl8fmNyd1IsP1Ru0TNVee9AMtpM9E7yz5ZR9Qiofbj8zqqjJiqIi'
SELECT * FROM member


UPDATE member SET pw='$2a$10$PKpa4qNB.m2cSr9akl34Je74UV5X1NL9KlQJ2IoqML7IYxgnSlT7W' WHERE pw='1234';


Create TABLE free(
                     bno INT PRIMARY KEY AUTO_INCREMENT,
                     title VARCHAR(100),
                     content VARCHAR(2000),
                     regdate DATETIME DEFAULT CURRENT_TIMESTAMP(),
                     id VARCHAR(20),
                     visited INT DEFAULT 0,
                     rec INT DEFAULT 0
);

DROP TABLE free
    SHOW tables

SELECT * FROM free
    INSERT INTO free VALUES (DEFAULT,'제목1','내용1',DEFAULT,'admin',DEFAULT,default);

SELECT * FROM fileinfo

CREATE TABLE fileinfo(
                         NO INT AUTO_INCREMENT PRIMARY KEY,  -- 번호
                         articleno varchar(45) DEFAULT NULL,
                         saveFolder varchar(45) DEFAULT NULL,
                         originFile varchar(45) DEFAULT NULL,
                         saveFile varchar(45) DEFAULT NULL
);

CREATE TABLE guestbook (
                           articleno int NOT NULL AUTO_INCREMENT PRIMARY KEY,
                           userid varchar(16) NOT NULL,
                           subject varchar(100) NOT NULL,
                           content varchar(2000) NOT NULL,
                           regtime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE fileobj (
                         no int NOT NULL AUTO_INCREMENT PRIMARY KEY,
                         postno INT NOT NULL,
                         savefolder VARCHAR(400),
                         originfile VARCHAR(400),
                         savefile VARCHAR(800),
                         filesize LONG,
                         uploaddate VARCHAR(100)
);

CREATE TABLE fileboard (
                           postno int NOT NULL AUTO_INCREMENT PRIMARY KEY,	-- 글 번호
                           title VARCHAR(100) not null,   -- 글제목
                           content VARCHAR(1500) not null,    -- 글내용
                           regdate DATETIME DEFAULT CURRENT_TIMESTAMP(),   -- 작성일
                           visited INT DEFAULT 0   -- 조회수
);

CREATE TABLE board(
                      bno INT PRIMARY KEY AUTO_INCREMENT, -- qna 글 번호
                      title VARCHAR(200) NOT NULL, -- 제목
                      content VARCHAR(1000), -- 내용
                      author VARCHAR(16), -- 작성자
                      resdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP(), -- 작성일
                      cnt INT DEFAULT 0, -- 조회수
                      lev INT DEFAULT 0, -- 게시글 0, 답글 1 이상
                      par INT, -- 부모 게시글 번호
                      FOREIGN KEY(author) REFERENCES member(id) ON DELETE
                          CASCADE -- 작성자를 member id를 이용해 외래키로 사용
);

INSERT INTO board(title, content, author) VALUES('본문 제목1', '본문 내용1', 'admin');
UPDATE board SET par=bno WHERE bno=1;

INSERT INTO board(title, content, author) VALUES('본문 제목2', '본문 내용2', 'hong');
UPDATE board SET par=bno WHERE bno=2;

INSERT INTO board(title, content, author) VALUES('본문 제목3', '본문 내용3', 'kang');
UPDATE board SET par=bno WHERE bno=3;

INSERT INTO board(title, content, author) VALUES('본문 제목4', '본문 내용4', 'lee');
UPDATE board SET par=bno WHERE bno=4;

INSERT INTO board(title, content, author) VALUES('본문 제목5', '본문 내용5', 'son');
UPDATE board SET par=bno WHERE bno=5;

INSERT INTO board(title, content, author) VALUES('본문 제목6', '본문 내용6', 'hong');
UPDATE board SET par=bno WHERE bno=6;

INSERT INTO board(title, content, author, lev, par) VALUES('댓글', '댓글내용', 'admin', 1, 7);
INSERT INTO board(title, content, author, lev, par) VALUES('댓글', '댓글내용', 'admin', 1, 7);
INSERT INTO board(title, content, author, lev, par) VALUES('댓글', '댓글내용', 'admin', 1, 6);
INSERT INTO board(title, content, author, lev, par) VALUES('댓글', '댓글내용', 'admin', 1, 5);
INSERT INTO board(title, content, author, lev, par) VALUES('댓글', '댓글내용', 'admin', 1, 4);
INSERT INTO board(title, content, author, lev, par) VALUES('댓글', '댓글내용', 'admin', 1, 3);
INSERT INTO board(title, content, author, lev, par) VALUES('댓글', '댓글내용', 'admin', 1, 2);
INSERT INTO board(title, content, author, lev, par) VALUES('댓글', '댓글내용', 'admin', 1, 1);

select * from board where par = 7 and lev = 1 order by resdate DESC;


CREATE TABLE board_tea(
                          bno INT PRIMARY KEY AUTO_INCREMENT, -- qna 글 번호
                          title VARCHAR(200) NOT NULL, -- 제목
                          content VARCHAR(1000), -- 내용
                          author VARCHAR(16), -- 작성자
                          resdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP(), -- 작성일
                          cnt INT DEFAULT 0, -- 조회수
                          lev INT DEFAULT 0, -- 게시글 0, 답글 1 이상
                          par INT, -- 부모 게시글 번호
                          FOREIGN KEY(author) REFERENCES member(id) ON DELETE
                              CASCADE -- 작성자를 member id를 이용해 외래키로 사용
);

CREATE TABLE board_par(
                          bno INT PRIMARY KEY AUTO_INCREMENT, -- qna 글 번호
                          title VARCHAR(200) NOT NULL, -- 제목
                          content VARCHAR(1000), -- 내용
                          author VARCHAR(16), -- 작성자
                          resdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP(), -- 작성일
                          cnt INT DEFAULT 0, -- 조회수
                          lev INT DEFAULT 0, -- 게시글 0, 답글 1 이상
                          par INT, -- 부모 게시글 번호
                          FOREIGN KEY(author) REFERENCES member(id) ON DELETE
                              CASCADE -- 작성자를 member id를 이용해 외래키로 사용
);
