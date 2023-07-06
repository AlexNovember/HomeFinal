-- DROP DATABASE IF EXISTS `human_friends`; --

-- Создаем базу данных "human_friends", если ее еще нет
CREATE DATABASE IF NOT EXISTS `human_friends`;

-- Используем созданную базу данных
USE `human_friends`;

-- Создаем таблицу "animals"
CREATE TABLE `animals` (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY UNIQUE,
  animals_class VARCHAR(30)
);


-- Создаем таблицу "dogs" с внешним ключом на таблицу "animals"
CREATE TABLE `dogs` (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  `name` VARCHAR(50) NOT NULL,
  `skills` VARCHAR(100) NOT NULL,
  `birth_date` DATE NOT NULL,
  `animal_class_id` INT UNSIGNED NOT NULL,
  FOREIGN KEY (`animal_class_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE
);

-- Создаем таблицу "cats" с внешним ключом на таблицу "animals"
CREATE TABLE `cats` (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  `name` VARCHAR(50) NOT NULL,
  `skills` VARCHAR(100) NOT NULL,
  `birth_date` DATE NOT NULL,
  `animal_class_id` INT UNSIGNED NOT NULL,
  FOREIGN KEY (`animal_class_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE
);

-- Создаем таблицу "hamsters" с внешним ключом на таблицу "animals"
CREATE TABLE `hamsters` (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  `name` VARCHAR(50) NOT NULL,
  `skills` VARCHAR(100) NOT NULL,
  `birth_date` DATE NOT NULL,
  `animal_class_id` INT UNSIGNED NOT NULL,
  FOREIGN KEY (`animal_class_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE
);


-- Создаем таблицу "horses" с внешним ключом на таблицу "animals"
CREATE TABLE `horses` (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  `name` VARCHAR(50) NOT NULL,
  `skills` VARCHAR(100) NOT NULL,
  `birth_date` DATE NOT NULL,
  `animal_class_id` INT UNSIGNED NOT NULL,
  FOREIGN KEY (`animal_class_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE
);

-- Создаем таблицу "camels" с внешним ключом на таблицу "animals"
CREATE TABLE `camels` (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  `name` VARCHAR(50) NOT NULL,
  `skills` VARCHAR(100) NOT NULL,
  `birth_date` DATE NOT NULL,
  `animal_class_id` INT UNSIGNED NOT NULL,
  FOREIGN KEY (`animal_class_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE
);

-- Создаем таблицу "donkeys" с внешним ключом на таблицу "animals"
CREATE TABLE `donkeys` (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  `name` VARCHAR(50) NOT NULL,
  `skills` VARCHAR(100) NOT NULL,
  `birth_date` DATE NOT NULL,
  `animal_class_id` INT UNSIGNED NOT NULL,
  FOREIGN KEY (`animal_class_id`) REFERENCES `animals` (`id`) ON DELETE CASCADE
);

-- Заполняем таблицу "animals"
INSERT INTO `human_friends`.`animals` (`id`, `animals_class`) VALUES ('1', 'pet'),('2', 'wild');

-- Заполняем таблицу "dogs"
INSERT INTO `human_friends`.`dogs` (`name`, `skills`, `birth_date`, `animal_class_id`) VALUES
  ('Шарик', 'Сидеть, Стоять', '2019-03-11', 1),
  ('Бобик', 'Лапу, Фас', '2018-04-15', 1),
  ('Снежок', 'Ко мне, Гулять', '2020-11-06', 1),
  ('Бим', 'Голос, Лежать', '2017-09-17', 1);
  

-- Заполняем таблицу "cats"
INSERT INTO `human_friends`.`cats` (`name`, `skills`, `birth_date`, `animal_class_id`) VALUES
  ('Пушок', 'Лежать, Мяу', '2018-05-11', 1),
  ('Черныш', 'Спать, Кувырок', '2019-07-10', 1),
  ('Барсик', 'Лезть, Играть', '2022-11-07', 1),
  ('Компот', 'Царапать, Бегать', '2017-11-30', 1);
  

-- Заполняем таблицу "hamsters"
INSERT INTO `human_friends`.`hamsters` (`name`, `skills`, `birth_date`, `animal_class_id`) VALUES
  ('Чук', 'В колесо', '2021-01-03', 1),
  ('Гек', 'Прячься', '2022-02-14', 1),
  ('Орех', 'Кушать', '2020-11-20', 1),
  ('Пончик', 'Кувырок', '2019-10-05', 1);
  

-- Заполняем таблицу "horses"
INSERT INTO `human_friends`.`horses` (`name`, `skills`, `birth_date`, `animal_class_id`) VALUES
  ('Макс', 'Галлоп, Прогулка', '2015-08-20', 2),
  ('Люк', 'Прыжок, Центр', '2016-06-10', 2),
  ('Джек', 'Круг, Присесть', '2017-03-15', 2),
  ('Грэнни', 'Рысца, Ждать', '2018-11-25', 2);
  

-- Заполняем таблицу "camels"
INSERT INTO `human_friends`.`camels` (`name`, `skills`, `birth_date`, `animal_class_id`) VALUES
  ('Эмир', 'Погрузка, Дистанция', '2014-12-01', 2),
  ('Зара', 'Прогулка, Отдых', '2015-10-18', 2),
  ('Аман', 'Гонка, Трофи', '2016-07-24', 2),
  ('Эмиль', 'Катание по кругу, Сон', '2017-04-09', 2);
  

-- Заполняем таблицу "donkeys"
INSERT INTO `human_friends`.`donkeys` (`name`, `skills`, `birth_date`, `animal_class_id`) VALUES
  ('Зара', 'Погрузка, Разгрузка', '2019-08-12', 2),
  ('Иа', 'Отдых, Охранять', '2020-05-05', 2),
  ('Раджа', 'Рядом, Гулять', '2021-02-20', 2),
  ('Шоколад', 'Играть, Внимание', '2022-09-10', 2);

SELECT * FROM `animals`;
SELECT * FROM `cats`;
SELECT * FROM `dogs`;
SELECT * FROM `hamsters`;
SELECT * FROM `horses`;
SELECT * FROM `donkeys`;
SELECT * FROM `camels`;

  
-- Удалить таблицу "camels"
  DROP TABLE `human_friends`.`camels`;
  
-- Объединить таблицы "horses", и "donkeys" в одну таблицу
-- Создаем новую таблицу "horses_and_donkeys" для объединения "horses" и "donkeys"
CREATE TABLE `horses_and_donkeys` (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  `name` VARCHAR(50) NOT NULL,
  `skills` VARCHAR(100) NOT NULL,
  `birth_date` DATE NOT NULL,
  `animal_class_id` INT UNSIGNED NOT NULL,
  `species` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id`)
);

-- Вставляем данные из "horses" в таблицу "horses_and_donkeys"
INSERT INTO `horses_and_donkeys` (`name`, `skills`, `birth_date`, `animal_class_id`, `species`)
SELECT `name`, `skills`, `birth_date`, `animal_class_id`, 'Horse' AS `species`
FROM `horses`;

-- Вставляем данные из "donkeys" в таблицу "horses_and_donkeys"
INSERT INTO `horses_and_donkeys` (`name`, `skills`, `birth_date`, `animal_class_id`, `species`)
SELECT `name`, `skills`, `birth_date`, `animal_class_id`, 'Donkey' AS `species`
FROM `donkeys`;

SELECT * FROM `horses_and_donkeys`;


-- Создаем новую таблицу "young_animals"
CREATE TABLE `young_animals` (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(50) NOT NULL,
  `birth_date` DATE,
  `species` VARCHAR(20) NOT NULL,
  `age_months` INT NOT NULL
);


-- Вставляем данные из таблиц `dogs`, `cats`, `donkeys`, `hamsters`, и `horses` в таблицу `young_animals`
INSERT INTO `young_animals` (`name`, `birth_date`, `species`, `age_months`)
SELECT `name`, `birth_date`, 'Dog' AS `species`, TIMESTAMPDIFF(MONTH, `birth_date`, CURDATE()) AS `age_months`
FROM `dogs`
WHERE `birth_date` < DATE_SUB(CURDATE(), INTERVAL 1 YEAR) AND `birth_date` > DATE_SUB(CURDATE(), INTERVAL 3 YEAR);

INSERT INTO `young_animals` (`name`, `birth_date`, `species`, `age_months`)
SELECT `name`, `birth_date`, 'Cat' AS `species`, TIMESTAMPDIFF(MONTH, `birth_date`, CURDATE()) AS `age_months`
FROM `cats`
WHERE `birth_date` < DATE_SUB(CURDATE(), INTERVAL 1 YEAR) AND `birth_date` > DATE_SUB(CURDATE(), INTERVAL 3 YEAR);

INSERT INTO `young_animals` (`name`, `birth_date`, `species`, `age_months`)
SELECT `name`, `birth_date`, 'Donkey' AS `species`, TIMESTAMPDIFF(MONTH, `birth_date`, CURDATE()) AS `age_months`
FROM `donkeys`
WHERE `birth_date` < DATE_SUB(CURDATE(), INTERVAL 1 YEAR) AND `birth_date` > DATE_SUB(CURDATE(), INTERVAL 3 YEAR);

INSERT INTO `young_animals` (`name`, `birth_date`, `species`, `age_months`)
SELECT `name`, `birth_date`, 'Hamster' AS `species`, TIMESTAMPDIFF(MONTH, `birth_date`, CURDATE()) AS `age_months`
FROM `hamsters`
WHERE `birth_date` < DATE_SUB(CURDATE(), INTERVAL 1 YEAR) AND `birth_date` > DATE_SUB(CURDATE(), INTERVAL 3 YEAR);

INSERT INTO `young_animals` (`name`, `birth_date`, `species`, `age_months`)
SELECT `name`, `birth_date`, 'Horse' AS `species`, TIMESTAMPDIFF(MONTH, `birth_date`, CURDATE()) AS `age_months`
FROM `horses`
WHERE `birth_date` < DATE_SUB(CURDATE(), INTERVAL 1 YEAR) AND `birth_date` > DATE_SUB(CURDATE(), INTERVAL 3 YEAR);

SELECT * FROM `young_animals`;


-- Создаем новую таблицу "all_animals"
CREATE TABLE `all_animals` (
   id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  `name` VARCHAR(50) NOT NULL,
  `skills` VARCHAR(100) NOT NULL,
  `birth_date` DATE NOT NULL,
  `animal_class_id` INT UNSIGNED NOT NULL,
  `source_table` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`)
);

-- Вставляем данные из таблиц `dogs`, `cats`, `donkeys`, `hamsters`, и `horses` в таблицу `all_animals`
INSERT INTO `all_animals` (`name`, `skills`, `birth_date`, `animal_class_id`, `source_table`)
SELECT `name`, `skills`, `birth_date`, `animal_class_id`, 'dogs' AS `source_table`
FROM `dogs`;

INSERT INTO `all_animals` (`name`, `skills`, `birth_date`, `animal_class_id`, `source_table`)
SELECT `name`, `skills`, `birth_date`, `animal_class_id`, 'cats' AS `source_table`
FROM `cats`;

INSERT INTO `all_animals` (`name`, `skills`, `birth_date`, `animal_class_id`, `source_table`)
SELECT `name`, `skills`, `birth_date`, `animal_class_id`, 'donkeys' AS `source_table`
FROM `donkeys`;

INSERT INTO `all_animals` (`name`, `skills`, `birth_date`, `animal_class_id`, `source_table`)
SELECT `name`, `skills`, `birth_date`, `animal_class_id`, 'hamsters' AS `source_table`
FROM `hamsters`;

INSERT INTO `all_animals` (`name`, `skills`, `birth_date`, `animal_class_id`, `source_table`)
SELECT `name`, `skills`, `birth_date`, `animal_class_id`, 'horses' AS `source_table`
FROM `horses`;

SELECT * FROM `all_animals`