CREATE TABLE `city` (
  `city_id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `city` varchar(88) NOT NULL,
  `teste` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `country_id` smallint unsigned NOT NULL,
  `population` int unsigned DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`city_id`),
  KEY `idx_fk_country_id` (`country_id`),
  CONSTRAINT `fk_city_country` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=601 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
