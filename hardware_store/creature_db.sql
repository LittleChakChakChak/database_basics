CREATE DATABASE IF NOT EXISTS hardware_store;

USE hardware_store;

CREATE TABLE country 
	(id_country INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(100) UNIQUE NOT NULL
	);

CREATE TABLE buyer 
	(id_buyer INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
	phone INT(11) UNIQUE NOT NULL,
	password_buyer VARCHAR(100) NOT NULL
	);
	
CREATE TABLE manufacture 
	(id_manufacture INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(100) UNIQUE NOT NULL,
	country INT,
	FOREIGN KEY (country) REFERENCES country (id_country)
	);
	
CREATE TABLE type_product 
	(id_type_product INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(100) UNIQUE NOT NULL
	);	
	
CREATE TABLE product 
	(id_product INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(100) UNIQUE NOT NULL,
	manufacturer INT NOT NULL,
	model TEXT(50) NOT NULL,
	type_product INT NOT NULL, 
	rating INT(2) UNSIGNED, 
	price DECIMAL(10,2) UNSIGNED NOT NULL, 
	characteristic TEXT, 
	quantity INT(5) UNSIGNED NOT NULL,
	release_date YEAR,
	FOREIGN KEY (manufacturer) REFERENCES manufacture (id_manufacture),
	FOREIGN KEY (type_product) REFERENCES type_product (id_type_product)
	);
	
CREATE TABLE warehouse 
	(id_warehouse INT PRIMARY KEY AUTO_INCREMENT,
	product INT NOT NULL,
	address TEXT NOT NULL, 
	quantity INT(5) UNSIGNED,
	FOREIGN KEY (product) REFERENCES product (id_product)
	);
	
CREATE TABLE basket 
	(id_basket INT PRIMARY KEY AUTO_INCREMENT,
	product INT NOT NULL,
	buyer INT NOT NULL, 
	quantity INT(5) UNSIGNED NOT NULL,
	FOREIGN KEY (product) REFERENCES product (id_product),
	FOREIGN KEY (buyer) REFERENCES buyer (id_buyer)
	);