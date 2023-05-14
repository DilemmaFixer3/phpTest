##1НФ(клітинки містять неподільні і однотипні значення, )
##2НФ(один з атрибутів сутності визначається як первинний ключ,
# а решта атрибутів залежать від первинного ключа)
##3НФ(стовпці таблиці / сутності неперехідно залежать від первинного ключа)
##додати скрипт для видалення таблиці

CREATE TABLE cosmetic(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY ,
    name VARCHAR(150) NOT NULL ,
    producer VARCHAR(100) NOT NULL ,
    foreign key (producer) references company (id) ON DELETE CASCADE,
    size INT NOT NULL ,
    type_size ENUM('ML','GR') NOT NULL
);

INSERT INTO cosmetic (id, name, producer, size, type_size)
VALUES
    ('1', 'Cream', 1, '80','ML'),
    ('2', 'Primer', 2, '30','ML'),
    ('3', 'Concealer', 3, '6','ML'),
    ('4', 'Tonal basis', 4, '50','ML'),
    ('5', 'Blash', 5, '4','GR'),
    ('6', 'Bronzer', 5, '8','GR'),
    ('7', 'Mascara', 3, '9','ML'),
    ('8', 'Eye shadow', 5, '12','GR'),
    ('9', 'Eyebrow gel', 6, '3','GR'),
    ('10', 'Eyebrow soap', 7, '10','GR'),
    ('11', 'Eyeliner', 8, '1','ML'),
    ('12', 'Shampoo', 9, '500','ML'),
    ('13', 'Conditioner', 9, '500','ML'),
    ('14', 'Hair mask', 10, '250','ML'),
    ('15', 'Hair oil', 11, '15','ML');

CREATE TABLE company(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY ,
    name VARCHAR(150) NOT NULL,
    country VARCHAR(150) NOT NULL
);

INSERT INTO company(id, name, country)
VALUES
    ('1', 'Garnier', 'France'),
    ('2', 'Bielenda', 'Poland'),
    ('3', 'Maybelline New York', 'USA'),
    ('4', 'Missha', 'South Korea'),
    ('5', 'Lamel Professional', 'United Kingdom'),
    ('6', 'LOreal Paris', 'France'),
    ('7', 'Imagic', 'China'),
    ('8', 'NYX Professional Makeup', 'USA'),
    ('9', 'Esthetic House', 'Korea'),
    ('10', 'Brelil', 'Italy'),
    ('11', 'CHI', 'USA');

DROP TABLE cosmetic;
DROP TABLE company;

