CREATE  DATABASE cafe_db;
USE cafe_db;
CREATE TABLE customer(
  idCustomer int PRIMARY KEY,
  document VARCHAR(20) NOT NULL UNIQUE, -- Is not called String instead is varchar 'cause is a string character
  fullName VARCHAR(50) NOT NULL,
  eMail VARCHAR(100) NOT NULL UNIQUE, --Bussines Rule, it is unique
  phone VARCHAR(20)
);
CREATE TABLE products(
  idProducto INT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  description VARCHAR(250),
  price DECIMAL(10,2) NOT NULL, -- after the ',' sign only goes two digits, and before there are 10 digits
  quatityAvailable INT NOT NULL,
);  --If you need to execute the new code, you just only need to select the portion of code and execute
--CREATE TABLE customers;
--this is a comment;

