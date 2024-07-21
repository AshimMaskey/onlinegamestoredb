-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2024 at 07:46 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinegamestore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `email`, `phone`, `date_of_birth`, `password`) VALUES
(1, 'Ashim Maskey', 'ashimmaskey9@gmail.com', '9810073430', '2003-01-14', 'ashim123'),
(2, 'Sapana Dahal', 'dsapana370@gmai.com', '9827754788', '2003-03-19', 'sapana123');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `user_id` int(11) DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL,
  `added_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`user_id`, `game_id`, `added_at`) VALUES
(1, 6, '2024-07-21 01:25:31'),
(1, 2, '2024-07-21 17:39:44');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `game_id` int(11) NOT NULL,
  `game_title` varchar(255) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `release_date` date NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `download_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`game_id`, `game_title`, `description`, `price`, `genre`, `release_date`, `image_url`, `download_url`) VALUES
(1, 'Genshin Impact', '\"Genshin Impact\" immerses players into a visually captivating world of Teyvat through a cinematic intro. It introduces the protagonist, the Traveler, on a quest to reunite with their lost sibling, unveiling a world filled with diverse landscapes and vibrant characters. As players embark on their jouney, they encounter various elemental beings known as \"Visions,\" which grant individuals control over elemental powers.\r\nThe game features an expansive open-world environment where players can explore cities, villages, and vast wilderness areas. ', 200, 'adventure', '2021-06-09', 'uploadsgame/66123de511c93.jpg', 'uploadsgame/66123de512499.exe'),
(2, 'Clash of Clans', '\"Clash of Clans\" is a massively popular mobile strategy game developed and published by Supercell. Set in a fantasy world, players assume the role of a village chief tasked with building and expanding their own settlement while defending it from attacks by other players and AI-controlled goblins.\r\n\r', 190, 'strategy', '2012-08-12', 'uploadsgame/661242fa4d7fd.jpg', 'uploadsgame/661242fa4df26.exe'),
(3, 'Chess', 'Chess, a timeless classic, stands as the epitome of strategy and intellect, captivating players worldwide for centuries. Set upon an 8x8 grid board, players maneuver their army of pieces, aiming to outwit opponents by strategically positioning and tactically sacrificing pieces to achieve the ultimate goal: checkmate. Each piece holds its unique power, from the humble pawn, which can transform into a mighty queen upon reaching the opponent\'s back rank, to the regal queen herself, capable of traversing the board with grace and devastation.', 0, 'strategy', '2020-01-01', 'uploadsgame/66125608b176c.jpg', 'uploadsgame/66125608b1f01.exe'),
(4, 'Valorant', '\"Valorant\" is a popular multiplayer tactical first-person shooter developed and published by Riot Games. Set in a near-future Earth, the game pits two teams of five players against each other in high-stakes, round-based combat.\r\nPlayers assume the roles of \"agents,\" each with unique abilities and \r\ndistinctive playstyles, ranging from duelists focused on aggressive offense to controllers adept at manipulating the battlefield.\r\nTeam coordination and strategic planning are essential as players compete in various game modes, including the classic \"Bomb Defusal\" mode, where one team attempts to plant and detonate a bomb while the other team defends and tries to defuse it.', 100, 'FPS', '2020-05-01', 'uploadsgame/661257eccec8d.jpg', 'uploadsgame/661257eccf4d5.exe'),
(6, 'Prince of Persia', '\"Prince of Persia\" is a critically acclaimed action-adventure video game series developed and published by various companies over the years, with the most notable entries being developed by Ubisoft. The series is known for its engaging storytelling, fluid parkour-inspired movement mechanics, and charismatic protagonist, the Prince.\r\nOriginally released in 1989, the series gained widespread recognition with the release of \"Prince of Persia: The Sands of Time\" in 2003. This installment introduced players to the acrobatic and agile Prince as he navigated treacherous environments, solved puzzles, and battled enemies using a combination of swordplay and time-manipulating abilities.', 250, 'action', '1998-01-02', 'uploadsgame/66125aaa63b15.jpg', 'uploadsgame/66125aaa63e44.exe'),
(7, 'Tic Tac Toe', '\"Tic-Tac-Toe\" is a classic paper-and-pencil game played by two players. The game is typically played on a 3x3 grid, although larger grids can be used for variations. The objective of the game is for players to create a line of three of their symbols (traditionally X or O) either horizontally, vertically, or diagonally.', 0, 'strategy', '1997-01-04', 'uploadsgame/6612645b5c4c5.jpg', 'uploadsgame/6612645b7cbb3.exe'),
(9, 'Sudoku', 'Sudoku is a logic-based number-placement puzzle game that became popular in the late 20th century. The objective of Sudoku is to fill a 9x9 grid with digits so that each column, each row, and each of the nine 3x3 subgrids (also called \"boxes\" or \"regions\") contain all of the digits from 1 to 9.', 0, 'strategy', '1969-01-01', 'uploadsgame/661744a53bac2.jpg', 'uploadsgame/661744a54058d.exe'),
(15, 'honkai impact', 'Honkai Impact is a popular action role-playing game developed by miHoYo. Set in a futuristic world plagued by catastrophic events known as Honkai, players assume the role of powerful heroines known as Valkyries who wield unique abilities to combat monstrous creatures and otherworldly threats. With its stunning visuals, deep storyline, and engaging gameplay mechanics, Honkai Impact has captivated players worldwide since its release, offering a blend of fast-paced combat and strategic team-building elements that keep players immersed in its dynamic universe.', 20, 'adventure', '2001-01-01', 'uploadsgame/HONKAI STAR RAIL.jfif', 'uploadsgame/667d7174b45fb.exe');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `genre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `genre`) VALUES
(4, 'action'),
(1, 'adventure'),
(10, 'FPS'),
(23, 'strategy');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `Author` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `title`, `description`, `date`, `Author`, `image_url`, `link`) VALUES
(1, 'Riot Games shakes up League of Legends franchise business model', 'Game developer and publisher Riot Games has announced a new business model for franchised League of Legends teams, which will see focus shift from sponsorship revenue sharing toward sharing proceeds from in-game digital purchases.', '2024-05-15', 'Lee Jones', 'uploads/1.webp', 'https://esportsinsider.com/2024/03/league-of-legends-esports-business-model'),
(2, 'Sony and True Gamers host League of Legends showmatch for International Women’s Day', 'True Gamers, a network of esports lounges, has partnered with multinational technology company Sony to host a women’s showmatch for International Women’s Day (March 8th) for the MENA region.', '2024-08-05', 'Dafydd Gwynn', 'uploads/2.webp', 'https://esportsinsider.com/2024/03/true-gamers-sony-hosts-league-of-legends-tournament-international-womens-day'),
(3, 'Mobile Legends: Bang Bang expands global esports ecosystem with Snapdragon Pro Series', 'ESL FACEIT Group, the organiser of the mobile esports tournament Snapdragon Pro Series, has announced a significant partnership with MOONTON Games, the company behind the mobile MOBA game Mobile Legends: Bang Bang (MLBB).', '2024-05-11', 'Ivan Simic', 'uploads/3.png', 'https://esportsinsider.com/2024/03/snapdragon-pro-series-mlbb'),
(4, 'Mobile Legends rebrands international esports event to Mid Season Cup', 'The 2024 esports roadmap for the mobile MOBA game Mobile Legends: Bang Bang has been unveiled with a notable change made to one of the title’s most popular tournaments.', '2024-01-02', 'Ivan Šimić', 'uploads/3.jpg', 'https://esportsinsider.com/2024/01/mobile-legends-msc-to-mid-season-cup'),
(5, 'VCT Masters Madrid sets new VALORANT viewership record', 'VALORANT’s VCT 2024: Masters Madrid event has become the game’s most-watched tournament ever.', '2024-05-26', 'Ivan Šimić', 'uploads/4.webp', 'https://esportsinsider.com/2024/03/vct-masters-madrid-record-viewership'),
(7, 'Kinguin Esports Performance Center in Warsaw announces closure', 'Polish esports and gaming marketplace Kinguin has announced that its Esports Performance Center (EPC) in Warsaw, the country’s capital, will shut down in May 2024.', '2024-06-04', 'Ivan Šimić', 'uploads/5.webp', 'https://esportsinsider.com/2024/04/kinguin-esports-performance-center-close');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `transaction_code` varchar(255) DEFAULT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `transaction_code`, `product_code`, `status`, `user_id`, `amount`, `created_at`) VALUES
(1, '0007T64', 'EPAYTEST', 'COMPLETE', 1, 350.00, '2024-06-19 17:25:17'),
(2, '0007T6D', 'EPAYTEST', 'COMPLETE', 1, 250.00, '2024-06-19 18:55:13'),
(3, '0007T6T', 'EPAYTEST', 'COMPLETE', 1, 390.00, '2024-06-20 01:20:24'),
(4, '0007TG0', 'EPAYTEST', 'COMPLETE', 1, 100.00, '2024-06-20 17:15:57'),
(5, '0007VGI', 'EPAYTEST', 'COMPLETE', 1, 650.00, '2024-06-27 16:42:12'),
(6, '0008BQI', 'EPAYTEST', 'COMPLETE', 1, 440.00, '2024-07-21 17:41:12');

-- --------------------------------------------------------

--
-- Table structure for table `payment_items`
--

CREATE TABLE `payment_items` (
  `id` int(11) NOT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_items`
--

INSERT INTO `payment_items` (`id`, `payment_id`, `game_id`) VALUES
(1, 1, 4),
(2, 1, 6),
(3, 2, 3),
(4, 2, 6),
(5, 3, 1),
(6, 3, 2),
(7, 4, 4),
(8, 5, 1),
(9, 5, 6),
(10, 5, 15),
(11, 6, 6),
(12, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `phone`, `date_of_birth`, `password`, `status`) VALUES
(1, 'Ashim Maskey', 'ashimmaskey4@gmail.com', '9810073430', '2059-09-30', 'ashim123', 1),
(2, 'Rajin Dangal', 'rajindangal@gmail.com', '98180111111', '2059-10-20', 'rajin123', 1),
(3, 'Sapana Dahal', 'sapana@gmail.com', '9810000000', '2058-01-01', 'sapana123', 1),
(4, 'Rachit Dangal', 'rachit@gmail.com', '9810063636', '2057-01-01', 'rachit123', 1),
(9, 'Sumit', 'ashimmaskey9@gmail.com', '9810073430', '2020-10-12', 'ashim123', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `game_id` (`game_id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`game_id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `genre` (`genre`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_items`
--
ALTER TABLE `payment_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `game_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_items`
--
ALTER TABLE `payment_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`game_id`) REFERENCES `games` (`game_id`);

--
-- Constraints for table `payment_items`
--
ALTER TABLE `payment_items`
  ADD CONSTRAINT `payment_items_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
