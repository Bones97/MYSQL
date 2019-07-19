CREATE TABLE users(
    user_id INT(11) auto_increment,
    username VARCHAR(100),
    fullname VARCHAR(100),
    age INT(11),
    gender enum('Male','Female'),
    role INT(11),
    PRIMARY KEY(acc_id)
);

CREATE TABLE roles(
    role_id INT(11) auto_increment,
    role_name VARCHAR(100),
    PRIMARY KEY(role_id)
)

CREATE TABLE articles(
    art_id    INT(11) auto_increment,
    article_name VARCHAR(100),
    content VARCHAR(255),
    user_id INT(11),
    category INT(11),
    PRIMARY KEY (art_id)
)

CREATE TABLE categories(
    category_id INT(11) auto_increment,
    category_name VARCHAR(100),
    PRIMARY KEY (category_id)
)