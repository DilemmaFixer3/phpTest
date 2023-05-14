CREATE TABLE cosmetic(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY ,
    name VARCHAR(150) NOT NULL ,
    producer VARCHAR(100) NOT NULL ,
    size INT NOT NULL ,
    type_size VARCHAR(5) NOT NULL
);

INSERT INTO cosmetic (id, name, producer, size, type_size)
VALUES
    ('1', 'Cream', 'Garnier', '80','ML'),
    ('2', 'Primer', 'Bielenda', '30','ML'),
    ('3', 'Concealer', 'Maybelline New York', '6','ML'),
    ('4', 'Tonal basis', 'Missha', '50','ML'),
    ('5', 'Blash', 'Lamel Professional', '4','GR'),
    ('6', 'Bronzer', 'Lamel Professional', '8','GR'),
    ('7', 'Mascara', 'Maybelline New York', '9','ML'),
    ('8', 'Eye shadow', 'Lamel Professional', '12','GR'),
    ('9', 'Eyebrow gel', 'LOreal Paris', '3','GR'),
    ('10', 'Eyebrow soap', 'Imagic', '10','GR'),
    ('11', 'Eyeliner', 'NYX Professional Makeup', '1','ML'),
    ('12', 'Shampoo', 'Esthetic House', '500','ML'),
    ('13', 'Conditioner', 'Esthetic House', '500','ML'),
    ('14', 'Hair mask', 'Brelil', '250','ML'),
    ('15', 'Hair oil', 'CHI', '15','ML');
