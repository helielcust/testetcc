CREATE DEFINER=`root`@`localhost` TRIGGER `rental_date` BEFORE INSERT ON `rental` FOR EACH ROW SET NEW.rental_date = NOW();
