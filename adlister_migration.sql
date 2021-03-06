CREATE DATABASE IF NOT EXISTS adlister;

USE adlister;

CREATE TABLE users(
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  email VARCHAR(255),
  password VARCHAR(255),
  username VARCHAR(20),
  PRIMARY KEY (id)
);

CREATE TABLE ads(
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  title VARCHAR(255),
  description VARCHAR(300),
  user_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users(id)
);



CREATE TABLE categories(
  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  category VARCHAR(120),
  PRIMARY KEY (id)
);

CREATE TABLE ads_cats(
  ads_id INT(10) UNSIGNED NOT NULL,
  categories_id INT(10) UNSIGNED NOT NULL,
  FOREIGN KEY (categories_id) REFERENCES categories(id),
  FOREIGN KEY (ads_id) REFERENCES ads(id)
);