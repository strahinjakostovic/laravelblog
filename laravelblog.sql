-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2021 at 10:16 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_04_01_172031_posts', 1),
(5, '2021_04_02_163012_add_admin_to_users_table', 2),
(6, '2021_04_03_144848_add_approval_to_posts_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('simgametut36@gmail.com', '$2y$10$9EE1a61XmORaePaLgtbKNuljOYQtUNUjpFYXJtPEobNPQ8xY4F3bK', '2021-04-04 17:19:15');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `isApproved` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `slug`, `title`, `description`, `image_path`, `created_at`, `updated_at`, `user_id`, `isApproved`) VALUES
(1, 'grand-theft-auto-v', 'Grand Theft Auto V', 'Grand Theft Auto V is a 2013 action-adventure game developed by Rockstar North and published by Rockstar Games. It is the first main entry in the Grand Theft Auto series since 2008\'s Grand Theft Auto IV. Set within the fictional state of San Andreas, based on Southern California, the single-player story follows three protagonists—retired bank robber Michael De Santa, street gangster Franklin Clinton, and drug dealer and arms smuggler Trevor Philips—and their efforts to commit heists while under pressure from a corrupt government agency and powerful criminals. The open world design lets players freely roam San Andreas\' open countryside and the fictional city of Los Santos, based on Los Angeles.\r\n\r\nThe game is played from either a third-person or first-person perspective, and its world is navigated on foot and by vehicle. Players control the three lead protagonists throughout single-player and switch among them, both during and outside missions. The story is centred on the heist sequences, and many missions involve shooting and driving gameplay. A \"wanted\" system governs the aggression of law enforcement response to players who commit crimes. Grand Theft Auto Online, the game\'s online multiplayer mode, lets up to 30 players engage in a variety of different cooperative and competitive game modes.\r\n\r\nThe game\'s development began soon after Grand Theft Auto IV\'s release and was shared between many of Rockstar\'s studios worldwide. The development team drew influence from many of their previous projects such as Red Dead Redemption and Max Payne 3 and designed the game around three lead protagonists to innovate on the core structure of its predecessors. Much of the development work constituted the open world\'s creation, and several team members conducted field research around California to capture footage for the design team. The game\'s soundtrack features an original score composed by a team of producers who collaborated over several years. It was released in September 2013 for the PlayStation 3 and Xbox 360, in November 2014 for the PlayStation 4 and Xbox One, and April 2015 for Microsoft Windows. PlayStation 5 and Xbox Series X/S versions are scheduled to release in late 2021.\r\n\r\nExtensively marketed and widely anticipated, the game broke industry sales records and became the fastest-selling entertainment product in history, earning $800 million in its first day and $1 billion in its first three days. It received widespread critical acclaim, with praise directed at its multiple protagonist design, open world, presentation and gameplay. However, it caused controversies related to its depiction of violence and women. Considered one of seventh and eighth generation console gaming\'s most significant titles and among the best video games ever made, it won year-end accolades including Game of the Year awards from several gaming publications. It is the second best-selling video game of all time with over 140 million copies shipped and one of the most financially successful entertainment products of all time, with about $6 billion in worldwide revenue.', '606a0fd211710-Grand Theft Auto V.jpg', '2021-04-04 17:13:22', '2021-04-04 17:16:09', 5, 1),
(2, 'league-of-legends', 'League of Legends', 'League of Legends is a 2009 multiplayer online battle arena video game developed and published by Riot Games. Inspired by Defense of the Ancients, a custom map for Warcraft III, Riot\'s founders sought to develop a stand-alone game in the same genre. Since its release in October 2009, the game has been free-to-play, and is monetized through purchasable character customization. The game is available for Microsoft Windows and macOS.\r\n\r\nIn the game, two teams of five players battle in player versus player combat, each team occupying and defending their own half of the map. Each of the ten players controls a character, known as a \"champion\", with unique abilities and differing styles of play. During a match, champions become more powerful by collecting experience points and purchasing items to defeat the opposing team. In the game\'s main mode, Summoner\'s Rift, a team wins by pushing through to the enemy base and destroying their \"nexus\", a large structure located within it.\r\n\r\nLeague of Legends received generally positive reviews, critics highlighting its accessibility, character designs, and production value. The game\'s long lifespan has resulted in a critical reappraisal, with reviews trending positively. The player base\'s negative and abusive in-game behavior, criticized since early in the game\'s lifetime, persists despite attempts by Riot to fix the problem. In 2019, the game regularly peaked at eight million concurrent players, and its popularity has led to tie-ins such as music videos, comic books, short stories, and an upcoming animated series. Its success has also spawned several spin-off video games, including a mobile version and a digital collectible card game. A massively multiplayer online role-playing game is in development.\r\n\r\nThe game is often cited as the world\'s largest esport, with an international competitive scene composed of 13 leagues. The 2019 League of Legends World Championship had over 100 million unique viewers, peaking at a concurrent viewership of 44 million, with a minimum prize pool of US$2.5 million. The North American league is broadcast on cable television sports channel ESPN.', '606a1041b3022-League of Legends.jpg', '2021-04-04 17:15:13', '2021-04-04 17:16:15', 5, 1),
(3, 'counter-strike-global-offensive', 'Counter-Strike Global Offensive', 'Counter-Strike: Global Offensive (CS:GO) is a multiplayer first-person shooter developed by Valve and Hidden Path Entertainment. It is the fourth game in the Counter-Strike series. Developed for over two years, Global Offensive was released for Windows, macOS, Xbox 360, and PlayStation 3 in August 2012, and for Linux in 2014. Valve still regularly updates the game, both with smaller balancing patches and larger content additions.\r\n\r\nThe game pits two teams, Terrorists and Counter-Terrorists, against each other in different objective-based game modes. The most common game modes involve the Terrorists planting a bomb while Counter-Terrorists attempt to stop them, or Counter-Terrorists attempting to rescue hostages that the Terrorists have captured. There are eight official game modes, all of which have distinct characteristics specific to that mode. The game also has matchmaking support that allows players to play on dedicated Valve servers, in addition to community-hosted servers with custom maps and game modes. A battle-royale game-mode, \"Danger Zone\", was introduced in December 2018.\r\n\r\nGlobal Offensive received positive reviews from critics on release, who praised the game for its gameplay and faithfulness to the Counter-Strike series, though it was criticized for some early features and the differences between the console and PC versions. Since its release, it has drawn in an estimated 11 million players per month, and remains one of the most played games on Valve\'s Steam platform. In December 2018, Valve transitioned the game to a free-to-play model, focusing on revenue from cosmetic items.\r\n\r\nThe game has an active esports scene, continuing the history of international competitive play from previous games in the series. Teams compete in professional leagues and tournaments, and Global Offensive is now one of the largest global esports.', '606a122622232-Counter-Strike Global Offensive.jpg', '2021-04-04 17:23:18', '2021-04-04 17:27:29', 1, 1),
(4, 'nba-2020', 'NBA 2020', 'NBA 2K20 is a basketball simulation video game developed by Visual Concepts and published by 2K Sports, based on the National Basketball Association (NBA). It is the 21st installment in the NBA 2K franchise, the successor to NBA 2K19, and the predecessor to NBA 2K21. Anthony Davis of the Los Angeles Lakers is the cover athlete for the regular edition of the game, while Dwyane Wade is the cover athlete for the \'Legend Edition\'.\r\nThe player mainly plays NBA games with real-life or customized players and teams; games follow the rules and objectives of NBA games. Several game modes are present and many settings can be customized. Up to six expansion teams can be created and used in both MyLeague and MyGM Modes, with the possibility of a 36-team league, and any team can be relocated and rebranded. If you\'re creating a team you can download jerseys and teams that people from the NBA community has made.\r\n\r\nAlong with the current season\'s teams and players, previous games in the series have featured NBA teams from past eras, such as the 1995–96 Chicago Bulls and the 1985–86 Boston Celtics. NBA 2K20 adds six more such teams, such as the 2015-16 Cleveland Cavaliers and the 2013-14 San Antonio Spurs.\r\n\r\nAs with other games in the series, the in-studio pregame and halftime shows are based on the real-life NBA on TNT presentations, featuring Ernie Johnson, Kenny Smith, and Shaquille O\'Neal, with the latter two analysts also appearing as players on the 1993-94 Houston Rockets and 1994-95 Orlando Magic/2000-01 Los Angeles Lakers/2005-06 Miami Heat, respectively. During games, the announcers are Kevin Harlan, Greg Anthony, Chris Webber, Steve Smith and Clark Kellogg, with Doris Burke, and David Aldridge as the sideline reporters. Charles Barkley has not been added to the halftime show.\r\n\r\nFor the first time ever in the NBA 2K series, all twelve teams from the WNBA are included; however, they can be only used in Play Now (one-game exhibition) and single-season modes. It includes Candace Parker as well as other WNBA All-Stars. You cannot create rosters for the WNBA teams. \r\n\r\nA staple of the series, MyCareer, returns as one of the available game modes. MyCareer is a career mode in which the player creates their own customizable basketball player and plays through their basketball career. The mode features a storyline (with the voices of actors including Idris Elba) which plays out as the player competes in games as well as off-court activities. The creation tools have been overhauled. The Neighborhood also returns to MyCareer in which players can customize their wardrobe, get haircuts and tattoos, and purchase power-ups. They can also do their workouts and run drills to improve their attributes at their current team\'s practice facility. You gain more attributes when a Hall of Famer visits your practice facility\r\n\r\nThe game\'s returning MyGM and MyLeague game modes, which task the player with managing all basketball operations for a specific team, were a point of emphasis during development. MyGM is more focused on realism, whereas MyLeague offers more customization options. MyGM mode attempts to introduce more cutscene-style interactions than previous games in an attempt to give the mode a storyline, which is dubbed My GM 2.0.\r\n\r\nNBA 2K20 again, for the eighth time in the series, features MyTeam mode, a mode based around the idea of building the ultimate basketball team and maintaining a virtual trading card collection. Players assemble and play with their team in basketball tournament-style competitions against other players\' teams in several formats. Assets for a team are acquired through various means, including randomized card packs and the auction house. Virtual Currency (VC) is used extensively in the mode. Triple Threat Offline is changed to a ladder format where you accumulate wins to earn prizes. Domination is also changed, you now have to earn 5 stars in a division/section to advance to the next division/section, and each team now has three difficulties to choose from, the harder the difficulty, the more stars you get.', '606a12da6bb20-NBA 2020.jpg', '2021-04-04 17:26:18', '2021-04-04 17:27:34', 1, 1),
(5, 'playerunknown-s-battlegrounds', 'PlayerUnknown\'s Battlegrounds', 'PlayerUnknown\'s Battlegrounds (PUBG) is an online multiplayer battle royale game developed and published by PUBG Corporation, a subsidiary of South Korean video game company Bluehole. The game is based on previous mods that were created by Brendan \"PlayerUnknown\" Greene for other games, inspired by the 2000 Japanese film Battle Royale, and expanded into a standalone game under Greene\'s creative direction. In the game, up to one hundred players parachute onto an island and scavenge for weapons and equipment to kill others while avoiding getting killed themselves. The available safe area of the game\'s map decreases in size over time, directing surviving players into tighter areas to force encounters. The last player or team standing wins the round.\r\n\r\nPUBG was first released for Microsoft Windows via Steam\'s early access beta program in March 2017, with a full release in December 2017. The game was also released by Microsoft Studios for the Xbox One via its Xbox Game Preview program that same month, and officially released in September 2018. PUBG Mobile, a free-to-play mobile game version for Android and iOS, was released in 2018, in addition to a port for the PlayStation 4. A version for the Stadia streaming platform was released in April 2020. PUBG is one of the best-selling, highest-grossing and most-played video games of all time. The game has sold over 70 million copies on personal computers and game consoles as of 2020, in addition to PUBG Mobile accumulating 1 billion downloads as of March 2021 and grossing over $4.3 billion on mobile devices as of December 2020.\r\n\r\nPUBG received positive reviews from critics, who found that while the game had some technical flaws, it presented new types of gameplay that could be easily approached by players of any skill level and was highly replayable. The game was attributed to popularizing the battle royale genre, with a number of unofficial Chinese clones also being produced following its success. The game also received several Game of the Year nominations, among other accolades. PUBG Corporation has run several small tournaments and introduced in-game tools to help with broadcasting the game to spectators, as they wish for it to become a popular esport. The game has also been banned in some countries for allegedly being harmful and addictive to younger players.', '606a1c964954a-PlayerUnknown\'s Battlegrounds.jpg', '2021-04-04 18:07:50', '2021-04-04 18:08:51', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `isAdmin` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `isAdmin`) VALUES
(1, 'Strahinja', 'strahinjakostovic12@gmail.com', NULL, '$2y$10$8LitQweyaZrfx05QLjnGQuIK8cBUbgPv.RI16QQ1nc0fNx.Rhy3qC', 'xQO35qhmlum6eukpF8EfhqHEaa2v0LkbmQDie1D1JCFDR7mEyDP2rRfjkZJA', '2021-04-01 16:24:20', '2021-04-01 16:24:20', 0),
(2, 'Admin', 'admin@admin.com', NULL, '$2y$10$ksns6nc0Taire4kOjamHIeUY2/7Guq8k4wuXo5C3rDekGC8LHmbSa', NULL, NULL, NULL, 1),
(4, 'Aleksa', 'simgametut36@gmail.com', NULL, '$2y$10$SGa0K3JNGn46shazH3vgzOkUPdEqALC3zMWBQnbCNCe.rDqR3eFbq', NULL, '2021-04-04 17:11:59', '2021-04-04 17:11:59', 0),
(5, 'First User', 'user@user.com', NULL, '$2y$10$WpCdMi5.A.1uVGHZNnFAMecoydR/k7S8g/YzLWmzCh02U31Axr7We', NULL, '2021-04-04 17:21:16', '2021-04-04 17:21:16', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
