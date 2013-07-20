-- phpMyAdmin SQL Dump
-- version 3.3.2deb1ubuntu1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 15, 2013 at 09:06 PM
-- Server version: 5.1.67
-- PHP Version: 5.3.2-1ubuntu4.19

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `warderi`
--

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE IF NOT EXISTS `recipes` (
  `recipeID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `author` varchar(20) NOT NULL,
  `source` varchar(30) NOT NULL,
  `category` varchar(20) NOT NULL,
  `ingredients` varchar(255) NOT NULL,
  `instructions` varchar(255) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `dateAdded` varchar(20) NOT NULL,
  PRIMARY KEY (`recipeID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`recipeID`, `title`, `author`, `source`, `category`, `ingredients`, `instructions`, `photo`, `dateAdded`) VALUES
(1, 'Chocolate Cake', 'warderi', 'Joy of Cooking', 'Dessert', '1/2 cup butter, 1 cup sugar, 2 eggs, 2 cups flour, 1/2 cup cocoa', '1. Mix ingredients, 2. Bake at 350 degrees for half an hour, 3. When cool, ice with icing', 'default.png', '2013-04-08'),
(4, 'apple pie', 'ken', 'me', 'Lunch', 'apple & pie', 'put it all together', 'default.png', '2013-04-09'),
(6, 'I Don''t Know', 'warderi', 'nowhere', 'Breakfast', 'yes', 'yes', 'default.png', '2013-04-12'),
(3, 'Chow Mein', 'warderi', 'China', 'Dinner', 'noodles, chicken, veggies, soy sauce, oil', 'cook things', '/~warderi/foodfood/images/recipe/Capture2.JPG', '2013-04-12'),
(7, 'Something', 'warderi', 'more', 'Breakfast', 'ha', 'ha', 'default.png', '2013-04-12'),
(9, 'espresso', 'ken', 'i don''t know', 'Breakfast', 'coffee beans, milk, sugar, brewing machine, espresso shot cup, foaming pitcher, espresso thermometer, coffee cup', 'grind coffee beans', '/~warderi/foodfood/images/recipe/2012-05-0811.10.59.jpg', '2013-04-12'),
(10, 'hotdog', 'ken', 'streets', 'Lunch', 'dog', 'cut and cook', '/~warderi/foodfood/images/recipe/2012-06-2004.56.59.jpg', '2013-04-12'),
(11, 'Flower Eggs', 'erin', 'Pinterest', 'Breakfast', 'peppers, eggs, salt', 'blahblah', '/~warderi/foodfood/images/recipe/6205095149_ee1ab6e6b8.jpg', '2013-04-12'),
(12, 'Grey Goose', 'ken', 'France', 'Dinner', 'Worlds best tasting vodka', 'pour ingredients together into shaker & shake hard, double strain pour into flute glass, enjoy responsibly.', 'default.png', '2013-04-12'),
(18, 'Simply Salad', 'kaur203', 'cooking website', 'Lunch', '1 cucumber (chopped), 1 pomegranite', 'Take a small bowl and mix tomatoes, pomegranate, cucumber and green chilies together. Add few drops of lemon over this mix. Now refrigerate it for thirty minutes. Add peanuts, salt, black salt and coriander leaves and mix it thoroughly. It is ready to', 'default.png', '2013-04-15'),
(14, 'Truffle Xiao Long Bao', 'ken', 'Din Tai Fung', 'Breakfast', 'Secret Recipe', 'Buy from Din Tai Fung HK and place on plate :)', '/~warderi/foodfood/images/recipe/548158_10150924065281587_58460842_n.jpg', '2013-04-12'),
(17, 'Egg Cheese Burger', 'kaur203', 'my sweet mother', 'Breakfast', 'Egg :-1, Burger bun :-1, Salt :-To taste, Black pepper powder :-1/2 tsp., Mustard paste :-1/2 tsp., Mayonnaise :-2 tsp., Cheddar cheese :-1 slice, Chili-garlic sauce :-1/2 tsp., Oil :-1-1/2 tbsp.i', 'In a bowl, combine egg, dark pepper powder andsalt together. Beat it well. Using burger cutting knife, half the bun horizontally, Heat the pan on medium flame and add little oil, Spread garlic, chili and then mustard paste on an upper part of bun cut f', 'default.png', '2013-04-15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `email` varchar(50) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `town` varchar(20) NOT NULL,
  `prov` varchar(20) NOT NULL,
  `about` varchar(255) NOT NULL,
  `userPhoto` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`userID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `firstName`, `lastName`, `town`, `prov`, `about`, `userPhoto`, `website`, `username`, `password`, `userID`) VALUES
('erinxward@gmail.com', 'erin', 'ward', 'london', 'ontario', 'blah blah', 'user.png', 'http://forkinaround.tumblr.com', 'warderi', '991252147', 1),
('daniel@gmail.com', 'daniel', 'saulnier', 'bradford', 'Ontario', 'i am smart.', 'user.png', 'google.com', 'daniel', 'dan', 2),
('ken@gmail.com', 'ken', 'ang', 'mississauga', 'Ontario', 'i am ken.', 'user.png', 'google.com', 'ken', 'ken', 3),
('kozlovac@sheridanc.on.ca', 'Misa', 'Kozlovacki', 'Etobicoke', 'Ontario', 'im so awsome', 'user.png', 'www.google.com', 'kozlovac', 'M2i8s3a0!', 5),
('kaur203@sheridanc.on.ca', 'Hardeep', 'kaur', 'Oakville', 'Ontario', 'i love cooking......', 'user.png', '', 'kaur203', '991297115', 4),
('colinxr@gmail.com', 'Colin', 'Rabyniuk', 'Oakville', 'Ontario', 'cookin'' like a boss', 'user.png', 'colinarabyniuk.com', 'colinxr', 'fuckshitfood', 7),
('erinxward@gmail.com', 'Erin', 'Ward', 'Oakville', 'Ontario', 'I like making websites and food.', '/~warderi/foodfood/images/user/321594_10150301511749389_515859388_8059911_2081675378_n.jpg', 'http://forkinaround.tumblr.com', 'erin', 'erinward', 6),
('piakuhrana@yahoo.com', 'Hardeep', 'kaur', 'oakville', 'Ontario', 'i love cooking. i like to learn cook new dish.... ', 'user.png', '', 'deepkailey', '17aug2012', 8),
('kozlovac@sheridanc.on.ca', 'Misa', 'Kozlovacki', 'Etobicoke', 'Ontario', 'I''m an awsome kid who tries many great foods', 'user.png', 'www.google.com', 'misa.kozlovacki', 'M2i8s3a0!', 9);
