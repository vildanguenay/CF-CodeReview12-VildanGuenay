-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2019 at 02:58 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travelomatic`
--

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` bigint(20) NOT NULL,
  `category` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `web` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `category`, `name`, `address`, `phone`, `type`, `web`, `description`, `image`, `date`, `time`) VALUES
(1, 'todo', 'Alice Fairytale', 'Wien Mitte The Mall Landstraßer Hauptstraße 1b, 1030 Vienna', '+43 67761414485', 'must see', 'https://www.goodplayshow.com', 'The world famous story in a new format! You have not seen this before: projections, sensory walls, magic lanterns, giant pencils!', 'https://scontent-vie1-1.xx.fbcdn.net/v/t1.0-9/71586076_466280774101231_8990886247396278272_n.jpg?_nc_cat=110&_nc_oc=AQkT4wzQjPjhb3Lm-NZRYVEQ_vgKlIgUXd9Emkaiuaq56f1a0IOq3vtVxR-DQPjyoBA&_nc_ht=scontent-vie1-1.xx&oh=4eb1e50869c16c08eda6b5cb42db14c1&oe=5DFB84FE', NULL, NULL),
(2, 'todo', 'Clock Museum', 'Schulhof 2, \r\n1010 Vienna', '+43 (0)1 533 22 65', 'museum', 'https://www.wienmuseum.at/en/locations/uhrenmuseum.html', 'A unique gem in the heart of the city, the Clock Museum presides over one of the most significant collections of time pieces in Europe.', 'https://www.wienmuseum.at/fileadmin/_processed_/e/b/csm_Uhrenmuseum_Innenansicht_astronomische_Kunstuhr_7810e96928.jpg', NULL, NULL),
(3, 'todo', 'Kriminalmuseum', 'Große Sperlgasse 24, \r\n1020 Vienna', '+ 43 664 300 56 77', 'museum', 'http://wien.kriminalmuseum.at/en/news/', 'Skulls, medieval torture devices, bloody gloves, depictions of murder, death masks, and rusty axes - the Kriminalmuseum in Vienna, Austria is not for the faint of heart.', 'https://steemitimages.com/0x0/http://i38.photobucket.com/albums/e148/tatjanalackner/Krimi2_zpsyvwyiwi9.jpg', NULL, NULL),
(4, 'todo', 'The Imperial Butterfly Park', 'Schmetterlinghaus Hofburg, \r\n1010 Vienna', '+43 1 533 857 0', 'museum', 'http://www.schmetterlinghaus.at/en/', 'In one of the most beautiful Art Noveau palm houses in the world, you enter a fantastic environment of adventure and excitement, populated by one of nature‘s most gentle and colourful creatures, the butterfly.', 'http://www.schmetterlinghaus.at/fileadmin/_processed_/csm_AttacusAtlas__Schmetterlinghaus_42daba491c.jpg', NULL, NULL),
(5, 'restaurant', 'Justizcafe', 'Schmerlingplatz 10, 1016 Vienna', '+43 (1) 521 523 828 ', 'Austrian', 'https://www.atlasobscura.com/places/justizcafe-vienna', 'Once you arrive at Justizcafe—tucked on the roof of Vienna’s Palace of Justice—you’ll be served lunch surrounded by lawyers, judges, and a 360-degree view of Vienna’s city center.', 'https://assets.atlasobscura.com/media/W1siZiIsInVwbG9hZHMvcGxhY2VfaW1hZ2VzLzVlMzM1ZTQ4LTE5YTYtNDkyNy04YTZkLTM4ZTg5MjEyN2VhNDk1N2VjMWMzMDE0MjE5ZWQzMl9JTUdfMDQ0Mi5qcGciXSxbInAiLCJ0aHVtYiIsIngzOTA-Il0sWyJwIiwiY29udmVydCIsIi1xdWFsaXR5IDgxIC1hdXRvLW9yaWVudCJdXQ/IMG_0442.jpg', NULL, NULL),
(6, 'restaurant', 'NENI am Naschmarkt', 'Naschmarkt 510, 1060 Vienna', '+4315852020', 'Middle Eastern', 'https://neni.at/restaurants/naschmarkt/', 'Nirgends ist der Ferne Osten so nah wie im NENI am Naschmarkt.', 'https://neni.at/wp-content/themes/neni/gfx/intro_1_de.jpg', NULL, NULL),
(7, 'restaurant', 'L\'Osteria', 'Florianigasse 55, 1080 Vienna', '+431402400010', 'Italian', 'https://losteria.net/at/restaurants/restaurant/wien-florianigasse/', 'Die Florianigasse zählt zu den ältesten Straßen des 8. Wiener Bezirks und ist gleich neben dem historischen Zentrum von Wien zu finden.', 'https://s3-media4.fl.yelpcdn.com/bphoto/CUCJdghZul3i-sEJjJewFA/348s.jpg', NULL, NULL),
(8, 'restaurant', 'Pera', 'Genochplatz 8, 1220 Vienna', '0664 7617878', 'Turkish', 'https://www.facebook.com/PeraWien/', 'Turkish Cuisine at its best!', 'https://scontent-vie1-1.xx.fbcdn.net/v/t1.0-9/26239712_804869499716619_8650666419263597779_n.jpg?_nc_cat=107&_nc_oc=AQmxWhwq8l0NsfIL1wGtfQxnHQZLOan6p9sWgU0Nx97h0JgT8dDE2kyIemdD53OCrd4&_nc_ht=scontent-vie1-1.xx&oh=2e2432f7aa1be66284b6988401b944fc&oe=5DF4FA21', NULL, NULL),
(9, 'concert', 'Seiler und Speer', 'Wiener Stadthalle - Halle D,\r\n1150 Vienna', '+43 1 513 11 11', 'entertainment', 'https://www.viennaticketoffice.com/seiler-und-speer-tickets-371804-en.html', 'Das Duo „Seiler und Speer“ besteht aus dem Komiker und Schauspieler Christopher Seiler und dem Filmemacher Bernhard Speer.', 'https://images04.noen.at/Seiler%2526Speer1_2016_%2528c%2529ThomasUnterberger_web.jpg/teaser-col-8-2019/26.384.596', '2019-12-13', '19:30:00'),
(10, 'concert', 'Dianne Reeves', 'Brucknerhaus Linz, Linz', '+43 1 513 11 11', 'jazz', 'https://www.viennaticketoffice.com/dianne-reeves-tickets-378430-en.html', 'Mit ihrer ausdrucksstarken und unverwechselbaren Stimme gehï¿½rt die fï¿½nffache Grammy-Preistrï¿½gerin zu den auï¿½ergewï¿½hnlichsten Vokalinterpretinnen der Jazzwelt.', 'https://static.az-cdn.ch/__ip/acyheF9L8quk2rR8xOIXithS0mE/19e907bb55f01ee6c6cf0237a9043eb27e8aae43/remote.adjust.rotate=0&remote.size.w=3200&remote.size.h=2133&local.crop.h=1799&local.crop.w=3200&local.crop.x=0&local.crop.y=213&r=1,n-large-16x9-far', '2020-03-18', '21:30:00'),
(11, 'concert', 'Fidelio', 'State Opera Vienna', '+43 1 513 11 11', 'opera', 'https://www.viennaticketoffice.com/fidelio-tickets-18-en.html', 'Fidelio, Ludwig van Beethoven`s only opera, received no less than three world premieres. ', 'https://images-na.ssl-images-amazon.com/images/I/61LquajvblL.jpg', '2020-04-22', '00:00:00'),
(12, 'concert', 'Turandot', 'State Opera Vienna', '+43 1 513 11 11', 'opera', 'https://www.viennaticketoffice.com/turandot-tickets-281674-en.html', 'In his last, unfinished opera, Giacomo Puccini once again takes up the theme of love and death.', 'https://9b16f79ca967fd0708d1-2713572fef44aa49ec323e813b06d2d9.ssl.cf2.rackcdn.com/1140x_a10-7_cTC/Turandot2-1-1532300975.jpg', '2020-02-27', '00:00:00'),
(13, 'concert', 'figaro', 'opera', '067761414485', 'opera', '', 'none', 'https://images-na.ssl-images-amazon.com/images/I/4105jZhS76L._SX330_BO1,204,203,200_.jpg', '2020-05-12', '21:30:00'),
(15, 'concert', 'Vildan GÃ¼nay', 'Kreuzfeldgasse 15/ 11', '067761414485', 'opera', '', 'none', 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.incimages.com%2Fuploaded_files%2Fimage%2F970x450%2Fgetty_883231284_200013331818843182490_335833.jpg&imgrefurl=https%3A%2F%2Fwww.inc.com%2Fmareo-mccracken%2F12-great-books-you-should-definitely-read-in-2018.html&docid=gy-BJxHwoMWyPM&tbnid=mcnATwpTTbMfZM%3A&vet=10ahUKEwiirpaR-tXkAhXqQUEAHSVMAQMQMwg8KAEwAQ..i&w=970&h=450&bih=834&biw=1638&q=book&ved=0ahUKEwiirpaR-tXkAhXqQUEAHSVMAQMQMwg8KAEwAQ&iact=mrc&uact=8', '2020-05-12', '21:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `administrator` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`, `administrator`) VALUES
(1, 'Vildan Guenay', 'vildan-guenay@hotmail.com', '0148a529e4761bc417a4e6fed819510f2310b3c67f76456b390daf15e5cde077', 1),
(2, 'Jakob Guenay', 'jakob.guenay@gmail.com', 'bff8acabe58d185a4a69ed967a1218a7ffa56f0968c732e4facbd5f4bd5b99a4', NULL),
(3, 'Paul Mustermann', 'paul@paul.com', 'eee202edf6d1fcdd71f39d3284f79b8f4ca2c4fcbd4b1a5896f92445d717a580', NULL),
(4, 'paul koenig', 'koenig@paul.com', 'ae643c3b563163224f908c65cd04aa717ff50f7aee7e8196b609e946c36b9071', NULL),
(5, 'Paul Obermann', 'paul@obermann.com', '1362810ffa042b2129a35b06aee8663fd63b98c881fa2566491db189135b03ba', NULL),
(6, 'bertl obi', 'obi@bertl.com', '6743c487c584df8c43f7f4c7a46870eac7f2f30da57accc176cd2df06a75bfa3', NULL),
(7, 'test', 'test@gmail.com', '37268335dd6931045bdcdf92623ff819a64244b53d0e746d438797349d4da578', NULL),
(8, 'jakob', 'jakob.lulelele@test.com', 'd52f6a908f2085abbceed704233c81920c2b2b89126179ba9d7e05fdefc49f1d', NULL),
(9, 'furz', 'furz@feuchterfurz.at', 'c17a00d2db1f7bf90852ed6b67e260c174d6224e01df69cc402dd09553938261', NULL),
(10, 'mama', 'mama@mama.at', '0999a6992fc68052e7a745bd02c37ef1791cff78e7a05e4cc8ecb03fd556bec9', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
