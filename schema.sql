--author vblaha
-- db create
DROP DATABASE IF EXISTS recipeDB_test;
CREATE DATABASE recipeDB_test;

-- recipe table create
DROP TABLE IF EXISTS recipeDB_test.recipes;
CREATE TABLE IF NOT EXISTS recipeDB_test.recipes (`id` INTEGER NOT NULL auto_increment , `name` VARCHAR(255) NOT NULL, `instruction` VARCHAR(20000) NOT NULL, `TotalStars` INTEGER, `TotalVotes` INTEGER, `createdAt` DATETIME NOT NULL, `updatedAt` DATETIME NOT NULL, PRIMARY KEY (`id`)) ENGINE=InnoDB;
SHOW INDEX FROM recipeDB_test.recipes FROM `recipeDB`;

-- ingredients table create
DROP TABLE IF EXISTS recipeDB_test.ingredients;
CREATE TABLE IF NOT EXISTS recipeDB_test.ingredients (`id` INTEGER NOT NULL auto_increment , `name` VARCHAR(20000) NOT NULL, `createdAt` DATETIME NOT NULL, `updatedAt` DATETIME NOT NULL, `recipeId` INTEGER, PRIMARY KEY (`id`), FOREIGN KEY (`recipeId`) REFERENCES recipeDB_test.recipes(`id`) ON DELETE SET NULL ON UPDATE CASCADE) ENGINE=InnoDB;
SHOW INDEX FROM recipeDB_test.ingredients FROM `recipeDB`;

-- data load

-- vodka cranberry
INSERT INTO recipeDB_test.recipes (`id`,`name`,`instruction`,`TotalStars`,`TotalVotes`,`createdAt`,`updatedAt`) VALUES (1,'Cape Cod','Stir into glass over ice, garnish and serve',5,3,NOW(),NOW());
INSERT INTO recipeDB_test.ingredients (`id`,`name`,`createdAt`,`updatedAt`,`recipeId`) VALUES (DEFAULT,'1 oz Vodka',NOW(),NOW(),1);
INSERT INTO recipeDB_test.ingredients (`id`,`name`,`createdAt`,`updatedAt`,`recipeId`) VALUES (DEFAULT,'5 oz Cranberry Juice',NOW(),NOW(),1);
INSERT INTO recipeDB_test.ingredients (`id`,`name`,`createdAt`,`updatedAt`,`recipeId`) VALUES (DEFAULT,'1 Lime wedge',NOW(),NOW(),1);

-- gin and tonic
INSERT INTO recipeDB_test.recipes (`id`,`name`,`instruction`,`TotalStars`,`TotalVotes`,`createdAt`,`updatedAt`) VALUES (2,'Gin and Tonic','Stir over ice, garnish and serve',5,3,NOW(),NOW());
INSERT INTO recipeDB_test.ingredients (`id`,`name`,`createdAt`,`updatedAt`,`recipeId`) VALUES (DEFAULT,'2 oz Gin',NOW(),NOW(),2);
INSERT INTO recipeDB_test.ingredients (`id`,`name`,`createdAt`,`updatedAt`,`recipeId`) VALUES (DEFAULT,'5 oz Tonic',NOW(),NOW(),2);
INSERT INTO recipeDB_test.ingredients (`id`,`name`,`createdAt`,`updatedAt`,`recipeId`) VALUES (DEFAULT,'1 Lime wedge',NOW(),NOW(),2);

-- screwdriver
INSERT INTO recipeDB_test.recipes (`id`,`name`,`instruction`,`TotalStars`,`TotalVotes`,`createdAt`,`updatedAt`) VALUES (3,'Screwdriver','Stir over ice, garnish and serve',5,3,NOW(),NOW());
INSERT INTO recipeDB_test.ingredients (`id`,`name`,`createdAt`,`updatedAt`,`recipeId`) VALUES (DEFAULT,'1 oz vodka',NOW(),NOW(),3);
INSERT INTO recipeDB_test.ingredients (`id`,`name`,`createdAt`,`updatedAt`,`recipeId`) VALUES (DEFAULT,'5 oz pulp-free orange juice',NOW(),NOW(),3);

-- lit
INSERT INTO recipeDB_test.recipes (`id`,`name`,`instruction`,`TotalStars`,`TotalVotes`,`createdAt`,`updatedAt`) VALUES (4,'Long Island Iced Tea','Mix all contents in a highball glass and stir gently. Add dash of Coca-Cola for the coloring and garnish with lemon or lime twist',5,3,NOW(),NOW());
INSERT INTO recipeDB_test.ingredients (`id`,`name`,`createdAt`,`updatedAt`,`recipeId`) VALUES (DEFAULT,'1/2 oz Vodka',NOW(),NOW(),4);
INSERT INTO recipeDB_test.ingredients (`id`,`name`,`createdAt`,`updatedAt`,`recipeId`) VALUES (DEFAULT,'1/2 oz Tequila',NOW(),NOW(),4);
INSERT INTO recipeDB_test.ingredients (`id`,`name`,`createdAt`,`updatedAt`,`recipeId`) VALUES (DEFAULT,'1/2 oz Light rum',NOW(),NOW(),4);
INSERT INTO recipeDB_test.ingredients (`id`,`name`,`createdAt`,`updatedAt`,`recipeId`) VALUES (DEFAULT,'1/2 oz Gin',NOW(),NOW(),4);
INSERT INTO recipeDB_test.ingredients (`id`,`name`,`createdAt`,`updatedAt`,`recipeId`) VALUES (DEFAULT,'1 dash Coca-Cola',NOW(),NOW(),4);
INSERT INTO recipeDB_test.ingredients (`id`,`name`,`createdAt`,`updatedAt`,`recipeId`) VALUES (DEFAULT,'Twist of Lemon peel',NOW(),NOW(),4);

-- jack and coke
INSERT INTO recipeDB_test.recipes (`id`,`name`,`instruction`,`TotalStars`,`TotalVotes`,`createdAt`,`updatedAt`) VALUES (5,'Jack and Coke','Mix all contents in a highball glass and stir gently.',5,3,NOW(),NOW());
INSERT INTO recipeDB_test.ingredients (`id`,`name`,`createdAt`,`updatedAt`,`recipeId`) VALUES (DEFAULT,'2 oz Jack Daniels Tennessee Whiskey',NOW(),NOW(),5);
INSERT INTO recipeDB_test.ingredients (`id`,`name`,`createdAt`,`updatedAt`,`recipeId`) VALUES (DEFAULT,'5 oz Coca Cola',NOW(),NOW(),5);



