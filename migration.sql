CREATE TABLE users (
  id INT UNSIGNED AUTO_INCREMENT,
  email VARCHAR(100) NOT NULL,
  username VARCHAR(100) NOT NULL,
  password VARCHAR(36) NOT NULL,
  PRIMARY KEY(id),
  UNIQUE (username),
  UNIQUE (email)
);

CREATE TABLE ads (
  id INT UNSIGNED AUTO_INCREMENT,
  user_id INT UNSIGNED NOT NULL,
  title VARCHAR(200) NOT NULL,
  description VARCHAR(500) NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY (user_id) REFERENCES users(id),
  UNIQUE (user_id, title, description)
);

CREATE TABLE mainCat (
  id INT UNSIGNED AUTO_INCREMENT,
  category VARCHAR(100) NOT NULL,
  PRIMARY KEY(id),
  UNIQUE (category)
);

CREATE TABLE subCat (
  id INT UNSIGNED AUTO_INCREMENT,
  main_id INT UNSIGNED NOT NULL,
  category VARCHAR(100) NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY (main_id) REFERENCES mainCat(id)
);

CREATE TABLE adCategories (
  ad_id INT UNSIGNED NOT NULL,
  mainCat_id INT UNSIGNED NOT NULL,
  subCat_id INT UNSIGNED NOT NULL,
  FOREIGN KEY (ad_id) REFERENCES ads(id),
  FOREIGN KEY (mainCat_id) REFERENCES mainCat(id),
  FOREIGN KEY (subCat_id) REFERENCES subCat(id)
);