-- DROP DATABASE mydb;

CREATE DATABASE td_db;

use td_db;

CREATE TABLE user(
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) NOT NULL,
    name VARCHAR (100) NOT NULL,
    age INT DEFAULT NULL,
    birth_date DATETIME DEFAULT NULL,
    password VARCHAR(100) NOT NULL,
    is_hiworks BOOLEAN DEFAULT FALSE,
    created_date DATETIME NOT NULL,
    updated_date DATETIME NOT NULL
);

ALTER TABLE user ADD UNIQUE uq_user (email);

CREATE TABLE picture(
    id INT AUTO_INCREMENT PRIMARY KEY,
    owner_id INT NOT NULL,
    location VARCHAR(100) NOT NULL,
    path VARCHAR(100) NOT NULL,
    created_date DATETIME NOT NULL,
    updated_date DATETIME NOT NULL
);

ALTER TABLE picture ADD CONSTRAINT fk_picture_ownerid_user_id 
    FOREIGN KEY (owner_id) REFERENCES user(id) ON DELETE CASCADE;

CREATE TABLE usergroup(
    id INT PRIMARY KEY,
    owner_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    created_date VARCHAR(100) NOT NULL
);

ALTER TABLE usergroup ADD CONSTRAINT fk_usergroup_ownerid_user_id
    FOREIGN KEY (owner_id) REFERENCES user(id);

CREATE TABLE usergroup_user(
    id INT PRIMARY KEY,
    usergroup_id INT NOT NULL,
    member_id INT NOT NULL
);

ALTER TABLE usergroup_user ADD CONSTRAINT fk_usergroupuser_usergroupid_usergroup_id
    FOREIGN KEY (usergroup_id) REFERENCES usergroup(id);

ALTER TABLE usergroup_user ADD CONSTRAINT fk_usergroupuser_useremail_user_id
    FOREIGN KEY (member_id) REFERENCES user(id);

-- select * from information_schema.table_constraints where constraint_schema = 'td_db';


CREATE TABLE post(
    id INT AUTO_INCREMENT PRIMARY KEY,
    owner_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    contents TEXT NOT NULL,
    parents_post_id INT DEFAULT NULL,
    created_date DATETIME NOT NULL,
    updated_date DATETIME NOT NULL
);

ALTER TABLE post ADD CONSTRAINT fk_post_ownerid_user_id
    FOREIGN KEY (owner_id) REFERENCES user(id);

ALTER TABLE post ADD CONSTRAINT fk_post_parentspostid_post_id
    FOREIGN KEY (parents_post_id) REFERENCES post(id);

CREATE TABLE post_picture(
    id INT AUTO_INCREMENT PRIMARY KEY,
    post_id INT NOT NULL,
    picture_id INT NOT NULL
);

ALTER TABLE post_picture ADD CONSTRAINT fk_postpicturet_post
    FOREIGN KEY (post_id) REFERENCES post(id) ON DELETE CASCADE;

ALTER TABLE post_picture ADD CONSTRAINT fk_postpicture_picture
    FOREIGN KEY (picture_id) REFERENCES picture(id) ON DELETE CASCADE;

ALTER TABLE post_picture ADD UNIQUE uq_postpicture (post_id , picture_id);

CREATE TABLE postcomment(
    id INT AUTO_INCREMENT PRIMARY KEY,
    owner_id INT NOT NULL,
    post_id INT NOT NULL,
    contents VARCHAR(1000) NOT NULL,
    parents_comment_id INT DEFAULT NULL,
    created_date DATETIME NOT NULL,
    updated_date DATETIME NOT NULL
);

ALTER TABLE postcomment ADD CONSTRAINT fk_postcomment_ownerid_user_id
    FOREIGN KEY (owner_id) REFERENCES user(id) ON DELETE CASCADE;

ALTER TABLE postcomment ADD CONSTRAINT fk_postcomment_postid_post_id
    FOREIGN KEY (post_id) REFERENCES post(id) ON DELETE CASCADE;

ALTER TABLE postcomment ADD CONSTRAINT fk_postcomment_parentscommentid_postcomment_id
    FOREIGN KEY (parents_comment_id) REFERENCES postcomment(id) ON DELETE CASCADE;

CREATE TABLE hiworksauth(
    user_no INT PRIMARY KEY,
    owner_id INT NOT NULL,
    office_no INT NOT NULL,
    user_id VARCHAR(100) NOT NULL,
    user_name VARCHAR(100) NOT NULL,
    access_token VARCHAR(100) DEFAULT NULL,
    refresh_token VARCHAR(100) DEFAULT NULL
);

ALTER TABLE hiworksauth ADD CONSTRAINT fk_hiworksauth_ownerid_user_id
    FOREIGN KEY (owner_id) REFERENCES user(id) ON DELETE CASCADE;

CREATE TABLE friend(
    id INT AUTO_INCREMENT PRIMARY KEY,
    owner_id INT NOT NULL,
    friend_id INT NOT NULL
);

ALTER TABLE friend ADD CONSTRAINT fk_friend_ownerid_user_id
    FOREIGN KEY (owner_id) REFERENCES user(id) ON DELETE CASCADE;

ALTER TABLE friend ADD CONSTRAINT fk_friend_friendid_user_id
    FOREIGN KEY (friend_id) REFERENCES user(id) ON DELETE CASCADE;

ALTER TABLE friend ADD UNIQUE uq_friend (owner_id , friend_id);