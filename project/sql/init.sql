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

create database cs;

create table cs.user_inquiry
(
    no             int unsigned auto_increment
        primary key,
    type           enum ('C', 'D', 'E', 'M')                          not null,
    sub_type       varchar(10)                                        null,
    service_type   varchar(20)          default ''                    null,
    gabia_id       varchar(50)                                        null,
    user_name      varchar(50)                                        null,
    user_email     varchar(90)                                        null,
    user_hp_no     varchar(90)                                        null,
    user_domain    varchar(90)                                        null,
    user_company   varchar(90)                                        null,
    user_position  varchar(90)                                        null,
    user_memo      text                                               null,
    user_field_1   varchar(255)                                       null,
    user_field_2   varchar(255)                                       null,
    user_field_3   varchar(255)                                       null,
    user_field_4   varchar(255)                                       null,
    user_field_5   varchar(255)                                       null,
    user_field_6   varchar(255)                                       null,
    user_field_7   varchar(255)                                       null,
    user_field_8   varchar(255)                                       null,
    user_field_9   varchar(255)                                       null,
    user_field_10  varchar(255)                                       null,
    user_field_11  varchar(255)                                       null,
    user_field_12  varchar(255)                                       null,
    user_field_13  varchar(255)                                       null,
    user_field_14  varchar(255)                                       null,
    user_field_15  varchar(255)                                       null,
    user_field_16  varchar(255)                                       null,
    user_field_17  varchar(255)                                       null,
    user_field_18  varchar(255)                                       null,
    user_field_19  varchar(255)                                       null,
    user_field_20  varchar(255)                                       null,
    regist_date    datetime             default '0000-00-00 00:00:00' not null,
    update_date    datetime             default '0000-00-00 00:00:00' not null,
    status         int(10)              default 0                     not null,
    memo           text                                               null,
    lineworks_flag enum ('N', 'Y', 'T') default 'N'                   not null
);

