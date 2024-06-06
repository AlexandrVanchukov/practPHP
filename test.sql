SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

DROP DATABASE IF EXISTS `bank`;
CREATE DATABASE bank;

USE bank;

CREATE TABLE `Persons` (
  `id` INT NOT NULL,
  `first_name` VARCHAR(32) NOT NULL,
  `last_name` VARCHAR(32) NOT NULL,
  `middle_name` VARCHAR(32) DEFAULT NULL,
  `passport` VARCHAR(32) NOT NULL,
  `inn` VARCHAR(12) NOT NULL,
  `snils` VARCHAR(11) NOT NULL,
  `license` VARCHAR(11) DEFAULT NULL,
  `additional_papers` VARCHAR(32) DEFAULT NULL,
  `notes` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `Persons` (`id`, `first_name`, `last_name`, `middle_name`, `passport`, `inn`, `snils`, `license`, `additional_papers`, `notes`) VALUES
(1, 'Елена', 'Антонова', 'Игоревна', '1234 567890', '123456789012', '12345678901', '1234 567890', '123 123', 'about something'),
(2, 'Анна', 'Бобкова', 'Семёновна', '1234 567890', '123456789012', '12345678901', '1234 567890', '123 123', 'about something'),
(3, 'Иван', 'Иванов', 'Иванович', '1234 567890', '123456789012', '12345678901', '1234 567890', '123 123', 'about something'),
(4, 'Ольга', 'Шпак', 'Николаевна', '1234 567890', '123456789012', '12345678901', '1234 567890', '123 123', 'about something'),
(5, 'Андрей', 'Храмов', 'Игоревич', '1234 567890', '123456789012', '12345678901', '1234 567890', '123 123', 'about something');

COMMIT;