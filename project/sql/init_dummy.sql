-- DROP DATABASE mydb;
use td_db;

INSERT INTO user(email, name, age, birth_date, password, created_date, updated_date) 
    VALUES('dudu@dudu.du', '돌쇠', 23, '2008-01-01 00:00:01', '1234', '2008-01-01 00:00:01', '2008-01-01 00:00:01');
INSERT INTO user(email, name, age, birth_date, password, created_date, updated_date) 
    VALUES('dada@dada.da', '놀부', 32, '2008-01-02 00:00:01', '2345', '2008-01-01 00:00:01', '2008-01-01 00:00:01');
INSERT INTO user(email, name, age, birth_date, password, created_date, updated_date) 
    VALUES('didi@didi.di', '길동', 42, '2008-01-03 00:00:01', '3456', '2008-01-01 00:00:01', '2008-01-01 00:00:01');
INSERT INTO user(email, name, age, birth_date, password, created_date, updated_date) 
    VALUES('dydy@dydy.dy', '동길', 53, '2008-01-04 00:00:01', '4567', '2008-01-01 00:00:01', '2008-01-01 00:00:01');

INSERT INTO picture(owner_id, location, path, created_date, updated_date) 
    VALUES('2', '아이티', 'http://google.com', '2008-01-01 00:00:01', '2008-01-01 00:00:01');
INSERT INTO picture(owner_id, location, path, created_date, updated_date) 
    VALUES('2', '소말리아', 'http://google2.com', '2008-01-01 00:00:01', '2008-01-01 00:00:01');
INSERT INTO picture(owner_id, location, path, created_date, updated_date) 
    VALUES('2', '르완다', 'http://naver.com', '2008-01-01 00:00:01', '2008-01-01 00:00:01');

INSERT INTO post(owner_id, title, contents, created_date, updated_date)
    VALUES('1', '갑이야', '을이야', '2006-02-01 00:00:01', '2006-02-01 00:00:01');
INSERT INTO post(owner_id, title, contents, created_date, updated_date)
    VALUES('1', '이번엔 안 봐준다', '봐줘,', '2020-02-01 00:00:01', '2020-02-01 00:00:01');
INSERT INTO post(owner_id, title, contents, created_date, updated_date)
    VALUES('1', '이번 한번만 봐준다', '두번 봐준다.', '2020-01-31 00:00:01', '2020-01-31 00:00:01');
INSERT INTO post(owner_id, title, contents, created_date, updated_date)
    VALUES('1', '이번 두번만 봐준다', '세번 봐준다.', '2020-01-21 00:00:01', '2020-01-21 00:00:01');
INSERT INTO post(owner_id, title, contents, created_date, updated_date)
    VALUES('1', '이번 세번만 봐준다', '네번 봐준다.', '2020-01-11 00:00:01', '2020-01-11 00:00:01');
INSERT INTO post(owner_id, title, contents, created_date, updated_date)
    VALUES('1', '사람은 책을 만들고', '책은 벌레가 먹는다', '2012-01-11 00:00:01', '2012-01-11 00:00:01');
INSERT INTO post(owner_id, title, contents, created_date, updated_date)
    VALUES('1', '책은 사람을 만들고', '사람은 술을 먹는다', '2012-01-12 00:00:01', '2012-01-12 00:00:01');
INSERT INTO post(owner_id, title, contents, created_date, updated_date)
    VALUES('1', '애국가 본 사람 있어?', '동해 물과 백두산이 마르고 닳도록
하느님이 보우하사 우리나라 만세.
무궁화 삼천리 화려 강산
대한 사람, 대한으로 길이 보전하세.

남산 위에 저 소나무, 철갑을 두른 듯
바람 서리 불변함은 우리 기상일세.
무궁화 삼천리 화려 강산
대한 사람, 대한으로 길이 보전하세.

가을 하늘 공활한데 높고 구름 없이
밝은 달은 우리 가슴 일편단심일세.
무궁화 삼천리 화려 강산
대한 사람, 대한으로 길이 보전하세.

이 기상과 이 맘으로 충성을 다하여
괴로우나 즐거우나 나라 사랑하세.
무궁화 삼천리 화려 강산
대한 사람, 대한으로 길이 보전하세.', '2012-01-12 00:00:01', '2012-01-12 00:00:01');
INSERT INTO post(owner_id, title, contents, created_date, updated_date) 
    VALUES('1', '이렇게 맛있는 빵집은 어디에 있나?', '북한에 있다.', '2008-01-01 00:00:01', '2008-01-01 00:00:01');
INSERT INTO post(owner_id, title, contents, created_date, updated_date)
    VALUES('1', '돈을 많이 버는 방법', '은행털이', '2008-01-01 00:00:01', '2008-01-01 00:00:01');
INSERT INTO post(owner_id, title, contents, created_date, updated_date)
    VALUES('1', '백수의 왕은?', '사자였던거 같은데', '2008-01-01 00:00:01', '2008-01-01 00:00:01');

INSERT INTO postcomment(owner_id, post_id, contents, created_date, updated_date)
    VALUES('1', 1, '이렇게 맛있는 댓글은 어디에 있나?', '2008-01-01 00:00:01', '2008-01-01 00:00:01');
INSERT INTO postcomment(owner_id, post_id, contents, created_date, updated_date)
    VALUES('1', 2, '이렇게 맛없는 댓글은 어디에 있나?', '2008-01-01 00:00:01', '2008-01-01 00:00:01');
INSERT INTO postcomment(owner_id, post_id, contents, created_date, updated_date)
    VALUES('1', 2, '이런경우에는 어떻게 해야할까요?', '2008-01-01 00:00:01', '2008-01-01 00:00:01');
INSERT INTO postcomment(owner_id, post_id, contents, created_date, updated_date)
    VALUES('2', 2, '이런경우에는 어떻게 해야할까요?', '2008-01-01 00:00:01', '2008-01-01 00:00:01');
INSERT INTO postcomment(owner_id, post_id, contents, created_date, updated_date)
    VALUES('1', 2, '그냥 집에서 자고싶다.', '2008-01-01 00:00:01', '2008-01-01 00:00:01');
INSERT INTO postcomment(owner_id, post_id, contents, created_date, updated_date)
    VALUES('1', 2, '오늘은 쉬고싶어', '2008-01-01 00:00:01', '2008-01-01 00:00:01');
INSERT INTO postcomment(owner_id, post_id, contents, created_date, updated_date)
    VALUES('2', 2, '넌 안쉬고 싶니?', '2008-01-01 00:00:01', '2008-01-01 00:00:01');
INSERT INTO postcomment(owner_id, post_id, contents, created_date, updated_date)
    VALUES('2', 2, '이거는 긴 댓글이다. 엄청나게 길지는 않지만 그렇다고 짧지는 않은 적당히 긴 댓글이기 때문에 테스트 하는데 도움이 될것 같은 댓글이다.', '2008-01-01 00:00:01', '2008-01-01 00:00:01');
INSERT INTO postcomment(owner_id, post_id, contents, created_date, updated_date)
    VALUES('1', 2, '이거는 긴 댓글이다. 엄청나게 길지는 않지만 그렇다고 짧지는 않은 적당히 긴 댓글이기 때문에 테스트 하는데 도움이 될것 같은 댓글이다.', '2008-01-01 00:00:01', '2008-01-01 00:00:01');
INSERT INTO postcomment(owner_id, post_id, parents_comment_id,  contents, created_date, updated_date)
    VALUES('2', 2, 3, '부모가 있는 너희들의 대댓글', '2008-01-01 00:00:01', '2008-01-01 00:00:01');
INSERT INTO postcomment(owner_id ,post_id, parents_comment_id,  contents, created_date, updated_date)
    VALUES('1', 2, 4, '부모가 있는 우리들의 대댓글 길지는 않지만 그렇다고 짧지는 않은 적당히 긴 댓글이기 때문에 테스트 하는데 도움이 될것 같은 댓글이다.', '2008-01-01 00:00:01', '2008-01-01 00:00:01');



INSERT INTO post(owner_id, title, contents, created_date, updated_date) 
    VALUES('2', '먹지 마세요', '피부에 양보하세요', '2008-01-01 00:00:01', '2008-01-01 00:00:01');
INSERT INTO post(owner_id, title, contents, created_date, updated_date)
    VALUES('2', '아프리카 원주민의 일기', '배가고팠다. 밥을 먹었다.', '2008-01-01 00:00:01', '2008-01-01 00:00:01');
INSERT INTO post(owner_id, title, contents, created_date, updated_date)
    VALUES('2', '피자나라 치킨공주', '치킨나라 피자공주', '2008-01-01 00:00:01', '2008-01-01 00:00:01');

INSERT INTO friend(owner_id, friend_id)
    VALUES('1', '2');

INSERT INTO friend(owner_id, friend_id)
    VALUES('2', '1');

INSERT INTO friend(owner_id, friend_id)
    VALUES('1', '3');

INSERT INTO friend(owner_id, friend_id)
    VALUES('3', '1');

INSERT INTO friend(owner_id, friend_id)
    VALUES('2', '3');

INSERT INTO friend(owner_id, friend_id)
    VALUES('3', '2');