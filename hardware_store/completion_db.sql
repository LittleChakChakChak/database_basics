USE hardware_store;

# Заполнение стран
INSERT country(name) VALUES ("Россия");
INSERT country(name) VALUES ("США");
INSERT country(name) VALUES ("Китай");
INSERT country(name) VALUES ("Германия");
INSERT country(name) VALUES ("Франция");
INSERT country(name) VALUES ("Великобритания");
INSERT country(name) VALUES ("Норвегия");
INSERT country(name) VALUES ("Япония");

# Заполнение типа продуктов 
INSERT type_product(name) VALUES ("Принтер");
INSERT type_product(name) VALUES ("Клавиатура");
INSERT type_product(name) VALUES ("Монитор");
INSERT type_product(name) VALUES ("Мышка");
INSERT type_product(name) VALUES ("Сканер");
INSERT type_product(name) VALUES ("Ноутбук");
INSERT type_product(name) VALUES ("Микроволновка");

# Заполнение производителя 
INSERT manufacture(name, country) VALUES ("Canon", 2);
INSERT manufacture(name, country) VALUES ("Bork", 4);
INSERT manufacture(name, country) VALUES ("lenovo", 1);
INSERT manufacture(name, country) VALUES ("LG", 2);
INSERT manufacture(name, country) VALUES ("Apple",8);
INSERT manufacture(name, country) VALUES ("HP", 3);
INSERT manufacture(name, country) VALUES ("Asus", 7);
INSERT manufacture(name, country) VALUES ("MSI", 6);
INSERT manufacture(name, country) VALUES ("Logitec", 5);
INSERT manufacture(name, country) VALUES ("Gigabite", 2);


# Заполнение пользователя
INSERT buyer(name, email, phone, password_buyer) VALUES ("Иван", "ivan@mail.ru", "89992763838", "qwe123");
INSERT buyer(name, email, phone, password_buyer) VALUES ("Василий", "vasasilon@mail.ru", "89950694848", "123rtye1");
INSERT buyer(name, email, phone, password_buyer) VALUES ("Дима", "dmitriy11@gmail.ru", "89153843030", "sfldfns123131");
INSERT buyer(name, email, phone, password_buyer) VALUES ("Мария", "mashka3921@mail.ru", "89054328128", "Gdwdw123dsjk");


# Заполнение продукта
INSERT product(name, manufacturer, model, type_product, rating, price, characteristic, release_date) 
	VALUES ("Принтер canon 4h5 цветной", 1, "4h5", 1, 4, 15000.00, "цветной быстрый принер", 2019);


INSERT product(name, manufacturer, model, type_product, rating, price, characteristic, release_date) 
	VALUES ("Ноутбук lenovo ausur3 черный fullhd", 3, "ausur3", 6, 0, 55001.50, "черный ноутбук разрешение экрана 1080x720", 2020);

INSERT product(name, manufacturer, model, type_product, rating, price, characteristic, release_date) 
	VALUES ("Сканер canon zx1", 1, "zx1", 5, 5, 5100.00, "", 2017);

INSERT product(name, manufacturer, model, type_product, rating, price, characteristic, release_date) 
	VALUES ("Монитор LG nf4k", 4, "nf4k", 3, 4.4, 55000.00, "4k монитор насыщаный цвет", 2021);

INSERT product(name, manufacturer, model, type_product, rating, price, characteristic, release_date) 
	VALUES ("Механическая клавиатура Logi z5", 9, "z5", 2, 3.5, 5000.00, "механическая клавиатура", 0);

# Заполнение количество на складах 
INSERT warehouse(product, address, quantity) VALUES (1, "Москва", 15);
INSERT warehouse(product, address, quantity) VALUES (1, "Казань", 5);
INSERT warehouse(product, address, quantity) VALUES (5, "Москва", 10);
INSERT warehouse(product, address, quantity) VALUES (7, "Санкт-Петербург", 7);
INSERT warehouse(product, address, quantity) VALUES (6, "Курск", 2);
INSERT warehouse(product, address, quantity) VALUES (8, "Москва", 1);
INSERT warehouse(product, address, quantity) VALUES (6, "Москва", 1);

# Заполнение корзины 
INSERT basket(product, buyer, quantity) VALUES (1, 2, 1);
INSERT basket(product, buyer, quantity) VALUES (5, 2, 1);
INSERT basket(product, buyer, quantity) VALUES (1, 3, 5);
INSERT basket(product, buyer, quantity) VALUES (7, 1, 2);













