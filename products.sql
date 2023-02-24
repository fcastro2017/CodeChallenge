CREATE DATABASE `products` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) DEFAULT NULL,
  `keyword` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `hierarchy` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_category` int DEFAULT NULL,
  `hierarchy_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category2_idx` (`id_category`),
  CONSTRAINT `fk_category2` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `subcategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_hierarchy` int DEFAULT NULL,
  `subcategory_name` varchar(200) DEFAULT NULL,
  `id_category` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKk8ffo5tjobbow8vywcpyhrgyo` (`id_category`),
  CONSTRAINT `FKk8ffo5tjobbow8vywcpyhrgyo` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `category_subcategory` (
  `id_category` int NOT NULL,
  `id_subcategory` int NOT NULL,
  PRIMARY KEY (`id_category`,`id_subcategory`),
  KEY `fk_subcategory_idx` (`id_subcategory`),
  CONSTRAINT `fk_category` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`),
  CONSTRAINT `fk_subcategory` FOREIGN KEY (`id_subcategory`) REFERENCES `subcategory` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



------CATEGORY------------------
INSERT INTO `products`.`category`
(`category_name`,
`keyword`)
VALUES
('Furniture',
'Furn');

INSERT INTO `products`.`category`
(`category_name`,
`keyword`)
VALUES
('Electronics',
'Elec');

INSERT INTO `products`.`category`
(`category_name`,
`keyword`)
VALUES
('Home Appliances',
'home');

INSERT INTO `products`.`category`
(`category_name`,
`keyword`)
VALUES
('Major Appliances',
'major');

------HIERARCHY------------------

INSERT INTO `products`.`hierarchy`
(`id_category`,
`hierarchy_name`)
VALUES
(3,
'Home Appliances');

INSERT INTO `products`.`hierarchy`
(`id_category`,
`hierarchy_name`)
VALUES
(3,
'Home Appliances');

INSERT INTO `products`.`hierarchy`
(`id_category`,
`hierarchy_name`)
VALUES
(4,
'Major Appliances');



--------SUBCATEGORY----------------

INSERT INTO `products`.`subcategory`
(`id_hierarchy`,
`subcategory_name`,
`id_category`)
VALUES
(3,
'Major Appliances',
3);

INSERT INTO `products`.`subcategory`
(`id_hierarchy`,
`subcategory_name`,
`id_category`)

VALUES
(3,
'Minor Appliances',
3);

INSERT INTO `products`.`subcategory`
(`id_hierarchy`,
`subcategory_name`,
`id_category`)
VALUES
(3,
'Lawn & Garden',
3);


INSERT INTO `products`.`subcategory`
(`id_hierarchy`,
`subcategory_name`,
`id_category`)
VALUES
(4,
'Kitchen Appliances',
4);

INSERT INTO `products`.`subcategory`
(`id_hierarchy`,
`subcategory_name`,
`id_category`)
VALUES
(4,
'General Appliances',
4);


-----CATEGORY_SUBCATEGORY--------------------

INSERT INTO `products`.`category_subcategory`
(`id_category`,
`id_subcategory`)
VALUES
('1',
'1');

INSERT INTO `products`.`category_subcategory`
(`id_category`,
`id_subcategory`)
VALUES
('2',
'2');

INSERT INTO `products`.`category_subcategory`
(`id_category`,
`id_subcategory`)
VALUES
('3',
'3');

INSERT INTO `products`.`category_subcategory`
(`id_category`,
`id_subcategory`)
VALUES
('4',
'4');

