-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 29, 2018 at 05:27 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_roku`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `comments_id` int(10) UNSIGNED NOT NULL,
  `comments_copy` varchar(400) NOT NULL,
  `comments_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comments_movie` int(11) NOT NULL,
  `comments_rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_comments`
--

INSERT INTO `tbl_comments` (`comments_id`, `comments_copy`, `comments_date`, `comments_movie`, `comments_rating`) VALUES
(1, 'I loved it!', '2018-04-20 06:45:43', 1, 5),
(2, '', '2018-04-20 22:17:44', 3, 3),
(3, 'Great movie!', '2018-04-20 22:47:09', 3, 3),
(4, 'Great movie!', '2018-04-20 22:47:13', 3, 4),
(5, 'sdfknjdnfjdv sd v f hvdfgbk g fgf ggyrg   bhfggmkgkgkgmgnfvd mv m vd v vdvfnnnjgnb g n .  fmkn bgbg bf gb bfgg g', '2018-04-20 22:54:54', 3, 3),
(6, 'fdgdg', '2018-04-20 22:55:05', 3, 3),
(7, 'fdgdgdfgf', '2018-04-20 22:55:09', 3, 3),
(8, 'fdgdgdfgffgdgdbfg', '2018-04-20 22:55:12', 3, 3),
(9, 'fdgdgdfgffgdgdbfgfgdgsfgsd', '2018-04-20 22:55:14', 3, 3),
(10, 'fdgdgdfgffgdgdbfgfgdgsfgsd', '2018-04-20 22:55:15', 3, 3),
(11, 'Great movie', '2018-04-20 23:40:47', 1, 3),
(12, 'Obsessed', '2018-04-20 23:43:27', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `genre_id` int(10) UNSIGNED NOT NULL,
  `genre_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'ACTION'),
(2, 'COMEDY'),
(3, 'DRAMA'),
(4, 'KIDS');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kids`
--

CREATE TABLE `tbl_kids` (
  `kids_id` smallint(5) UNSIGNED NOT NULL,
  `kids_title` varchar(200) NOT NULL,
  `kids_stars` varchar(200) NOT NULL DEFAULT 'stars.png',
  `kids_desc` varchar(2000) NOT NULL,
  `kids_video` varchar(200) NOT NULL DEFAULT 'default.png',
  `kids_thumb` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_kids`
--

INSERT INTO `tbl_kids` (`kids_id`, `kids_title`, `kids_stars`, `kids_desc`, `kids_video`, `kids_thumb`) VALUES
(1, 'All I Want For Christmas', 'stars.png', 'All I Want for Christmas is a 1991 American romantic comedy film directed by Robert Lieberman, and starring Harley Jane Kozak, Lauren Bacall, Thora Birch, Ethan Randall', 'christmas.mp4', 'christmas.jpeg'),
(2, 'Beyond Beyond', 'stars.png', 'Johan is a young bunny whose life is torn apart when his beloved mother is taken away by the Feather King to the afterlife after she develops a bad cough. Unwilling to accept that his mother is gone, Johan plots to travel to the other side and bring her back. He finally gains his chance when an old dog gives Johan his ticket to the afterlife.', 'beyondbeyond.mp4', 'beyond.jpg'),
(3, 'Gnome Alone', 'stars.png', 'The film centers on a centuries-old war waged between the grizzled Gnomes who protect earth and the wacky and hungry Troggs determined to consume everything in sight. When the reluctant high school student Chloe (Becky G) discovers that her new home’s garden gnomes are not what they seem, she must decide between the pursuit of a desired high school life or taking up the fight against the Troggs.', 'gnomealone.mp4', 'gnomealone.jpg'),
(4, 'Monkey King', 'stars.png', 'A 2014 Hong Kong[1]-Chinese[3] action-fantasy film directed by Cheang Pou-soi and starring Donnie Yen as the titular protagonist. Yen also serves as the film\'s action director. Production began in Beijing on 18 October 2010[5] and was filmed in 3D.[6] The plot is based on an episode of Journey to the West, a Chinese literary classic written in the Ming Dynasty by Wu Cheng\'en', 'monkeyking.mp4', 'monkeyking.jpg'),
(5, 'Neo Yokio', 'stars.png', 'An American-Japanese co-produced animated television series created by Ezra Koenig of American rock band Vampire Weekend, and produced by Japanese anime studios Production I.G. and Studio Deen. The first season, consisting of six episodes, premiered on Netflix', 'neoyokio.mp4', 'neoyokio.jpg'),
(6, 'Ozzy', 'stars.png', 'A short time after the events of the first film, Littlefoot and his friends are living happily in their new home in the Great Valley, under their families\' watchful eyes. One day, the gang attempts to get to the sheltering grass to play, but land in the sinking sand surrounding it. The grownups come and save them, and afterwards chastise them for crossing the sinking sand without help.', 'ozzy.mp4', 'ozzy.jpg'),
(7, 'Paddington', 'stars.png', 'In the deep jungles of darkest Peru, British geographer Montgomery Clyde happens upon a previously unknown species of bear. He is about to shoot it to take back a specimen to the United Kingdom when another bear playfully takes his gun away. He learns that this family of bears is intelligent and can learn English, and that they have a deep appetite for marmalade. He names them Lucy and Pastuzo. As he departs, he throws his hat to Pastuzo and tells the bears that they are always welcome should they wish to go to London.', 'paddington.mp4', 'paddington.jpg'),
(8, 'The Boss Baby', 'stars.png', 'A man named Tim Templeton tells a story about his 7-year-old self who lives with his parents, Ted and Janice. Ted and Janice work in a puppy factory called Puppy Co. founded by a man named Francis E. Francis. One day, Tim is surprised when an infant wearing a business suit shows up in a taxi at his house, and Ted and Janice call him Tim\'s little brother. Tim is envious of the attention the baby receives, not to mention suspicious when the infant acts odd around him.', 'thebossbaby.mp4', 'bossbaby.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kidsComments`
--

CREATE TABLE `tbl_kidsComments` (
  `comments_id` int(10) UNSIGNED NOT NULL,
  `comments_copy` varchar(400) NOT NULL,
  `comments_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comments_movie` int(11) NOT NULL,
  `comments_rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_kidsComments`
--

INSERT INTO `tbl_kidsComments` (`comments_id`, `comments_copy`, `comments_date`, `comments_movie`, `comments_rating`) VALUES
(1, 'lovely movie', '2018-04-21 01:25:41', 6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movie_id` smallint(5) UNSIGNED NOT NULL,
  `movie_title` varchar(200) NOT NULL,
  `movie_stars` varchar(200) NOT NULL DEFAULT 'default.png',
  `movie_desc` varchar(2000) NOT NULL,
  `movie_video` varchar(500) NOT NULL DEFAULT 'default.png',
  `movie_thumb` varchar(300) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movie_id`, `movie_title`, `movie_stars`, `movie_desc`, `movie_video`, `movie_thumb`) VALUES
(1, '12 Strong', 'stars.png', '12 Strong tells the story of the first Special Forces team deployed to Afghanistan after 9/11; under the leadership of a new captain, the team must work with an Afghan warlord to take down for the Taliban.', '12strong.mp4', '12.jpg'),
(2, 'Rendel', 'stars.png', 'Rendel is a 2017 Finnish superhero film written, produced and directed by Jesse Haaja. The film is based on Haaja\'s self-created superhero, Rendel. Lead roles are played by Kris Gummerus, Matti Onnismaa, Rami Rusinen and Renne Korppila. The rest of the cast includes Alina Tomnikov, Tero Salenius, Aake Kalliala, Anu Palevaara and Kristina Karjalainen.', 'rendel.mp4', 'rendel.jpg'),
(3, 'Fast and Furious 9 ', 'stars.png', 'Dom infiltrates a base in Russia to use the EMP device to disable their security and then to disable a nuclear submarine, enabling Cipher to hijack it and attempt to use its arsenal to trigger a nuclear war. They are once again intercepted by the team, who attempt to shut down the sub, and then drive out toward the gates that would prevent the sub from leaving into open waters. ', 'ff9.mp4', 'ff9.jpg'),
(4, 'Mission Impossible ', 'stars.png', 'When an IMF mission ends badly, the world is faced with dire consequences. As Ethan Hunt takes it upon himself to fulfill his original briefing, the CIA begin to question his loyalty and his motives. Hunt finds himself in a race against time, hunted by assassins and former allies while trying to prevent a global catastrophe.', 'missionimp.mp4', 'mission-imp.jpg'),
(5, 'The house', 'stars.png', 'During their visit to Bucknell University, husband and wife Scott (Ferrell) and Kate Johansen (Poehler) warn their daughter of the dangers being in college. Alex (Simpkins) acknowledges her parents warnings and expressed her interest to attend the same University her parents went to. Alex gets accepted to the University which the Johansens expect to be funded by their community\'s scholarship program.', 'thehouse.mp4', 'house.jpg'),
(6, 'Game Night', 'stars.png', 'Game Night is a 2018 American black comedy film directed by John Francis Daley and Jonathan Goldstein and written by Mark Perez. The film stars Jason Bateman and Rachel McAdams.', 'gamenight.mp4', 'gamenight.jpg'),
(7, 'Life of the Party', 'stars.png', 'Life of the Party is an upcoming comedy film directed by Ben Falcone and written by Falcone and Melissa McCarthy. The film stars McCarthy, Molly Gordon, Gillian Jacobs, Maya Rudolph, Julie Bowen, Matt Walsh, Debby Ryan, Stephen Root and Jacki Weaver. Produced by On the Day, the film is scheduled to be released May 11, 2018 by Warner Bros. Pictures.', 'lifeoftheparty.mp4', 'party.jpg'),
(8, 'Downsizing', 'stars.png', 'Paul and Audrey Safranek are a married couple in Omaha with financial issues. At a college reunion, they encounter Dave and Carol Johnson who have \"downsized,\" an irreversible process invented 15 years earlier that involves shrinking humans to a height of five inches. ', 'downsizing.mp4', 'downsizing.jpg'),
(9, 'Cruella', 'stars.png', 'Anita soon discovers that Perdy is pregnant and is then informed by Nanny that she (Anita) is, too, much to her shock. Some time later, Cruella visits their home and expresses contempt upon meeting Roger. Her initial disgust at them having a baby turns to excitement when she finds out Perdy is expecting too. ', 'cruella.mp4', 'cruella.jpg'),
(10, 'Certain Women', 'stars.png', 'Certain Women is a 2016 American drama film edited, written, and directed by Kelly Reichardt. Based on three short stories from Maile Meloy\'s collections, Half in Love and Both Ways Is the Only Way I Want It, the film stars Laura Dern, Kristen Stewart, Michelle Williams, Lily Gladstone, James Le Gros, and Jared Harris.\r\n\r\n', 'certainwomen.mp4', 'women.jpg'),
(11, 'The Seagull', 'stars.png', 'An aging actress named Irina Arkadina pays summer visits to her brother Pjotr Nikolayevich Sorin and her son Konstantin on a country estate. On one occasion, she brings Boris Trigorin, a successful novelist and her lover. Nina, a free and innocent girl on a neighboring estate who is in a relationship with Konstantin, falls in love with Boris.', 'theseagull.mp4', 'seagull.jpg'),
(12, 'On Chesil Beach', 'stars.png', 'A 2017 British drama film directed by Dominic Cooke in his motion picture directorial debut. Ian McEwan adapted his own 2007 Booker Prize-nominated novella On Chesil Beach. It stars Saoirse Ronan and Billy Howle. The film tells about young spouses Florence and Edward, who destroy their marriage because of fear of intimate relations.\r\n', 'OnChesilBeach.mp4', 'beach.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_gen`
--

CREATE TABLE `tbl_mov_gen` (
  `mov_gen_id` mediumint(9) UNSIGNED NOT NULL,
  `movie_id` smallint(8) NOT NULL,
  `genre_id` smallint(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_gen`
--

INSERT INTO `tbl_mov_gen` (`mov_gen_id`, `movie_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 2),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 3),
(10, 10, 3),
(11, 11, 3),
(12, 12, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`comments_id`);

--
-- Indexes for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tbl_kids`
--
ALTER TABLE `tbl_kids`
  ADD PRIMARY KEY (`kids_id`);

--
-- Indexes for table `tbl_kidsComments`
--
ALTER TABLE `tbl_kidsComments`
  ADD PRIMARY KEY (`comments_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movie_id`),
  ADD KEY `movie_thumb` (`movie_thumb`(255));

--
-- Indexes for table `tbl_mov_gen`
--
ALTER TABLE `tbl_mov_gen`
  ADD PRIMARY KEY (`mov_gen_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `comments_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `genre_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_kids`
--
ALTER TABLE `tbl_kids`
  MODIFY `kids_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_kidsComments`
--
ALTER TABLE `tbl_kidsComments`
  MODIFY `comments_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movie_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_mov_gen`
--
ALTER TABLE `tbl_mov_gen`
  MODIFY `mov_gen_id` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
