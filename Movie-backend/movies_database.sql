-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Már 12. 11:22
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `movies_database`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A tábla adatainak kiíratása `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `movies`
--

CREATE TABLE `movies` (
  `budget` int(11) NOT NULL,
  `genre` int(11) DEFAULT NULL,
  `homepage` varchar(255) DEFAULT NULL,
  `id` varchar(255) NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `original_language` varchar(10) DEFAULT NULL,
  `original_title` varchar(255) DEFAULT NULL,
  `overview` text DEFAULT NULL,
  `popularity` float DEFAULT NULL,
  `production_companies` text DEFAULT NULL,
  `production_countries` text DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `revenue` int(11) DEFAULT NULL,
  `runtime` int(11) DEFAULT NULL,
  `spoken_languages` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `tagline` text DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `vote_average` float DEFAULT NULL,
  `vote_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `movies`
--

INSERT INTO `movies` (`budget`, `genre`, `homepage`, `id`, `keywords`, `original_language`, `original_title`, `overview`, `popularity`, `production_companies`, `production_countries`, `release_date`, `revenue`, `runtime`, `spoken_languages`, `status`, `tagline`, `title`, `vote_average`, `vote_count`) VALUES
(175000000, 0, 'http://movies.disney.com/the-good-dinosaur', '105864', '[{\'id\': 1720, \'name\': \'tyrannosaurus rex\'}, {\'id\': 9713, \'name\': \'friends\'}, {\'id\': 12026, \'name\': \'alternate history\'}, {\'id\': 12616, \'name\': \'dinosaur\'}, {\'id\': 13073, \'name\': \'fear\'}, {\'id\': 14527, \'name\': \'storm\'}, {\'id\': 18330, \'name\': \'nature\'}, {\'i', 'en', 'The Good Dinosaur', 'An epic journey into the world of dinosaurs where an Apatosaurus named Arlo makes an unlikely human friend.', 51.693, '[{\'name\': \'Walt Disney Pictures\', \'id\': 2}, {\'name\': \'Pixar Animation Studios\', \'id\': 3}]', '[{\'iso_3166_1\': \'US\', \'name\': \'United States of America\'}]', '2015-11-14', 331926147, 93, '[{\'iso_639_1\': \'en\', \'name\': \'English\'}]', 'Released', 'Little Arms With Big Attitude', 'The Good Dinosaur', 6.6, 1736),
(200000000, 0, 'http://www.mgm.com/view/movie/234/Quantum-of-Solace/', '10764', '[{\'id\': 627, \'name\': \'killing\'}, {\'id\': 1568, \'name\': \'undercover\'}, {\'id\': 4289, \'name\': \'secret agent\'}, {\'id\': 156095, \'name\': \'british secret service\'}]', 'en', 'Quantum of Solace', 'Quantum of Solace continues the adventures of James Bond after Casino Royale. Betrayed by Vesper, the woman he loved, 007 fights the urge to make his latest mission personal. Pursuing his determination to uncover the truth, Bond and M interrogate Mr. White, who reveals that the organization that blackmailed Vesper is far more complex and dangerous than anyone had imagined.', 107.929, '[{\'name\': \'Eon Productions\', \'id\': 7576}]', '[{\'iso_3166_1\': \'GB\', \'name\': \'United Kingdom\'}, {\'iso_3166_1\': \'US\', \'name\': \'United States of America\'}]', '2008-10-30', 586090727, 106, '[{\'iso_639_1\': \'en\', \'name\': \'English\'}, {\'iso_639_1\': \'es\', \'name\': \'Español\'}, {\'iso_639_1\': \'it\', \'name\': \'Italiano\'}, {\'iso_639_1\': \'fr\', \'name\': \'Français\'}, {\'iso_639_1\': \'de\', \'name\': \'Deutsch\'}]', 'Released', 'For love, for hate, for justice, for revenge.', 'Quantum of Solace', 6.1, 2965),
(150000000, 0, 'http://www.jurassicworld.com/', '135397', '[{\'id\': 1299, \'name\': \'monster\'}, {\'id\': 1718, \'name\': \'dna\'}, {\'id\': 1720, \'name\': \'tyrannosaurus rex\'}, {\'id\': 1766, \'name\': \'velociraptor\'}, {\'id\': 2041, \'name\': \'island\'}, {\'id\': 9663, \'name\': \'sequel\'}, {\'id\': 9937, \'name\': \'suspense\'}, {\'id\': 10617,', 'en', 'Jurassic World', 'Twenty-two years after the events of Jurassic Park, Isla Nublar now features a fully functioning dinosaur theme park, Jurassic World, as originally envisioned by John Hammond.', 418.709, '[{\'name\': \'Universal Studios\', \'id\': 13}, {\'name\': \'Amblin Entertainment\', \'id\': 56}, {\'name\': \'Legendary Pictures\', \'id\': 923}, {\'name\': \'Fuji Television Network\', \'id\': 3341}, {\'name\': \'Dentsu\', \'id\': 6452}]', '[{\'iso_3166_1\': \'US\', \'name\': \'United States of America\'}]', '2015-06-09', 1513528810, 124, '[{\'iso_639_1\': \'en\', \'name\': \'English\'}]', 'Released', 'The park is open.', 'Jurassic World', 6.5, 8662),
(270000000, 0, 'http://www.superman.com', '1452', '[{\'id\': 83, \'name\': \'saving the world\'}, {\'id\': 849, \'name\': \'dc comics\'}, {\'id\': 8872, \'name\': \'invulnerability\'}, {\'id\': 9663, \'name\': \'sequel\'}, {\'id\': 9715, \'name\': \'superhero\'}, {\'id\': 9717, \'name\': \'based on comic book\'}, {\'id\': 163420, \'name\': \'kry', 'en', 'Superman Returns', 'Superman returns to discover his 5-year absence has allowed Lex Luthor to walk free, and that those he was closest too felt abandoned and have moved on. Luthor plots his ultimate revenge that could see millions killed and change the face of the planet forever, as well as ridding himself of the Man of Steel.', 57.9256, '[{\'name\': \'DC Comics\', \'id\': 429}, {\'name\': \'Legendary Pictures\', \'id\': 923}, {\'name\': \'Warner Bros.\', \'id\': 6194}, {\'name\': \'Bad Hat Harry Productions\', \'id\': 9168}]', '[{\'iso_3166_1\': \'US\', \'name\': \'United States of America\'}]', '2006-06-28', 391081192, 154, '[{\'iso_639_1\': \'en\', \'name\': \'English\'}, {\'iso_639_1\': \'fr\', \'name\': \'Français\'}, {\'iso_639_1\': \'de\', \'name\': \'Deutsch\'}]', 'Released', '', 'Superman Returns', 5.4, 1400),
(190000000, 0, 'http://www.furious7.com/', '168259', '[{\'id\': 830, \'name\': \'car race\'}, {\'id\': 3428, \'name\': \'speed\'}, {\'id\': 9748, \'name\': \'revenge\'}, {\'id\': 9937, \'name\': \'suspense\'}, {\'id\': 33885, \'name\': \'car\'}, {\'id\': 40870, \'name\': \'race\'}, {\'id\': 205399, \'name\': \'muscle car\'}]', 'en', 'Furious 7', 'Deckard Shaw seeks revenge against Dominic Toretto and his family for his comatose brother.', 102.322, '[{\'name\': \'Universal Pictures\', \'id\': 33}, {\'name\': \'Original Film\', \'id\': 333}, {\'name\': \'Fuji Television Network\', \'id\': 3341}, {\'name\': \'Dentsu\', \'id\': 6452}, {\'name\': \'One Race Films\', \'id\': 7154}, {\'name\': \'China Film Co.\', \'id\': 40890}, {\'name\': \'Québec Production Services Tax Credit\', \'id\': 86352}, {\'name\': \'Media Rights Capital (MRC)\', \'id\': 86655}, {\'name\': \'Abu Dhabi Film Commission\', \'id\': 87857}, {\'name\': \'Colorado Office of Film, Television & Media\', \'id\': 87858}]', '[{\'iso_3166_1\': \'JP\', \'name\': \'Japan\'}, {\'iso_3166_1\': \'US\', \'name\': \'United States of America\'}]', '2015-04-01', 1506249360, 137, '[{\'iso_639_1\': \'en\', \'name\': \'English\'}]', 'Released', 'Vengeance Hits Home', 'Furious 7', 7.3, 4176),
(145000000, 0, 'http://www.themummy.com/', '1735', '[]', 'en', 'The Mummy: Tomb of the Dragon Emperor', 'Archaeologist Rick O\'Connell travels to China, pitting him against an emperor from the 2,000-year-old Han dynasty who\'s returned from the dead to pursue a quest for world domination. This time, O\'Connell enlists the help of his wife and son to quash the so-called \'Dragon Emperor\' and his abuse of supernatural power.', 60.0342, '[{\'name\': \'Universal Pictures\', \'id\': 33}, {\'name\': \'China Film Co-Production Corporation\', \'id\': 2269}, {\'name\': \'Relativity Media\', \'id\': 7295}, {\'name\': \'Alphaville Films\', \'id\': 11462}, {\'name\': \'Sommers Company, The\', \'id\': 19643}]', '[{\'iso_3166_1\': \'DE\', \'name\': \'Germany\'}, {\'iso_3166_1\': \'US\', \'name\': \'United States of America\'}]', '2008-07-01', 401128639, 112, '[{\"iso_639_1\": \"en\", \"name\": \"English\"}, {\"iso_639_1\": \"zh\", \"name\": \"\\u666e\\u901a\\u8bdd\"}, {\"iso_639_1\": \"sa\", \"name\": \"\"}]', 'Released', 'A New Evil Awakens.', 'The Mummy: Tomb of the Dragon Emperor', 5.2, 1387),
(380000000, 0, 'http://disney.go.com/pirates/index-on-stranger-tides.html#/video/', '1865', '[{\'id\': 658, \'name\': \'sea\'}, {\'id\': 1316, \'name\': \'captain\'}, {\'id\': 1860, \'name\': \'mutiny\'}, {\'id\': 1938, \'name\': \'sword\'}, {\'id\': 2569, \'name\': \'prime minister\'}, {\'id\': 3180, \'name\': \'sailing\'}, {\'id\': 3625, \'name\': \'silver\'}, {\'id\': 3799, \'name\': \'shi', 'en', 'Pirates of the Caribbean: On Stranger Tides', 'Captain Jack Sparrow crosses paths with a woman from his past, and he\'s not sure if it\'s love -- or if she\'s a ruthless con artist who\'s using him to find the fabled Fountain of Youth. When she forces him aboard the Queen Anne\'s Revenge, the ship of the formidable pirate Blackbeard, Jack finds himself on an unexpected adventure in which he doesn\'t know who to fear more: Blackbeard or the woman from his past.', 135.414, '[{\'name\': \'Walt Disney Pictures\', \'id\': 2}, {\'name\': \'Jerry Bruckheimer Films\', \'id\': 130}, {\'name\': \'Moving Picture Company (MPC)\', \'id\': 20478}]', '[{\'iso_3166_1\': \'US\', \'name\': \'United States of America\'}]', '2011-05-14', 1045713802, 136, '[{\'iso_639_1\': \'en\', \'name\': \'English\'}, {\'iso_639_1\': \'es\', \'name\': \'Español\'}]', 'Released', 'Live Forever Or Die Trying.', 'Pirates of the Caribbean: On Stranger Tides', 6.4, 4948),
(215000000, 0, 'http://www.theamazingspiderman.com', '1930', '[{\'id\': 1872, \'name\': \'loss of father\'}, {\'id\': 7002, \'name\': \'vigilante\'}, {\'id\': 8803, \'name\': \'serum\'}, {\'id\': 8828, \'name\': \'marvel comic\'}, {\'id\': 156855, \'name\': \'scientific experiment\'}, {\'id\': 158124, \'name\': \'spider bite\'}, {\'id\': 158456, \'name\':', 'en', 'The Amazing Spider-Man', 'Peter Parker is an outcast high schooler abandoned by his parents as a boy, leaving him to be raised by his Uncle Ben and Aunt May. Like most teenagers, Peter is trying to figure out who he is and how he got to be the person he is today. As Peter discovers a mysterious briefcase that belonged to his father, he begins a quest to understand his parents\' disappearance – leading him directly to Oscorp and the lab of Dr. Curt Connors, his father\'s former partner. As Spider-Man is set on a collision course with Connors\' alter ego, The Lizard, Peter will make life-altering choices to use his powers and shape his destiny to become a hero.', 89.8663, '[{\'name\': \'Columbia Pictures\', \'id\': 5}, {\'name\': \'Laura Ziskin Productions\', \'id\': 326}, {\'name\': \'Marvel Entertainment\', \'id\': 7505}]', '[{\'iso_3166_1\': \'US\', \'name\': \'United States of America\'}]', '2012-06-27', 752215857, 136, '[{\'iso_639_1\': \'en\', \'name\': \'English\'}]', 'Released', 'The untold story begins.', 'The Amazing Spider-Man', 6.5, 6586),
(237000000, 0, 'http://www.avatarmovie.com/', '19995', '[{\'id\': 1463, \'name\': \'culture clash\'}, {\'id\': 2964, \'name\': \'future\'}, {\'id\': 3386, \'name\': \'space war\'}, {\'id\': 3388, \'name\': \'space colony\'}, {\'id\': 3679, \'name\': \'society\'}, {\'id\': 3801, \'name\': \'space travel\'}, {\'id\': 9685, \'name\': \'futuristic\'}, {\'i', 'en', 'Avatar', 'In the 22nd century, a paraplegic Marine is dispatched to the moon Pandora on a unique mission, but becomes torn between following orders and protecting an alien civilization.', 150.438, '[{\'name\': \'Ingenious Film Partners\', \'id\': 289}, {\'name\': \'Twentieth Century Fox Film Corporation\', \'id\': 306}, {\'name\': \'Dune Entertainment\', \'id\': 444}, {\'name\': \'Lightstorm Entertainment\', \'id\': 574}]', '[{\'iso_3166_1\': \'US\', \'name\': \'United States of America\'}, {\'iso_3166_1\': \'GB\', \'name\': \'United Kingdom\'}]', '2009-12-10', 2147483647, 162, '[{\'iso_639_1\': \'en\', \'name\': \'English\'}, {\'iso_639_1\': \'es\', \'name\': \'Español\'}]', 'Released', 'Enter the World of Pandora.', 'Avatar', 7.2, 11800),
(170000000, 0, 'http://disney.go.com/tron/', '20526', '[{\'id\': 310, \'name\': \'artificial intelligence\'}, {\'id\': 1308, \'name\': \'secret identity\'}, {\'id\': 4286, \'name\': \'computer program\'}, {\'id\': 4565, \'name\': \'dystopia\'}, {\'id\': 6104, \'name\': \'computer\'}, {\'id\': 9758, \'name\': \'deception\'}, {\'id\': 12965, \'name\'', 'en', 'TRON: Legacy', 'Sam Flynn, the tech-savvy and daring son of Kevin Flynn, investigates his father\'s disappearance and is pulled into The Grid. With the help of a mysterious program named Quorra, Sam quests to stop evil dictator Clu from crossing into the real world.', 73.7951, '[{\'name\': \'Walt Disney Pictures\', \'id\': 2}, {\'name\': \'LivePlanet\', \'id\': 7161}, {\'name\': \'Prana Studios\', \'id\': 18713}, {\'name\': \'Sean Bailey Productions\', \'id\': 23791}, {\'name\': \'Revolution Sun Studios\', \'id\': 76043}, {\'name\': \'Kontsept Film Company\', \'id\': 76067}]', '[{\'iso_3166_1\': \'US\', \'name\': \'United States of America\'}]', '2010-12-10', 400062763, 125, '[{\'iso_639_1\': \'en\', \'name\': \'English\'}]', 'Released', 'The Game Has Changed.', 'TRON: Legacy', 6.3, 2841),
(245000000, 0, 'http://www.sonypictures.com/movies/spectre/', '206647', '[{\'id\': 470, \'name\': \'spy\'}, {\'id\': 818, \'name\': \'based on novel\'}, {\'id\': 4289, \'name\': \'secret agent\'}, {\'id\': 9663, \'name\': \'sequel\'}, {\'id\': 14555, \'name\': \'mi6\'}, {\'id\': 156095, \'name\': \'british secret service\'}, {\'id\': 158431, \'name\': \'united kingdo', 'en', 'Spectre', 'A cryptic message from Bond’s past sends him on a trail to uncover a sinister organization. While M battles political forces to keep the secret service alive, Bond peels back the layers of deceit to reveal the terrible truth behind SPECTRE.', 107.377, '[{\'name\': \'Columbia Pictures\', \'id\': 5}, {\'name\': \'Danjaq\', \'id\': 10761}, {\'name\': \'B24\', \'id\': 69434}]', '[{\'iso_3166_1\': \'GB\', \'name\': \'United Kingdom\'}, {\'iso_3166_1\': \'US\', \'name\': \'United States of America\'}]', '2015-10-26', 880674609, 148, '[{\'iso_639_1\': \'fr\', \'name\': \'Français\'}, {\'iso_639_1\': \'en\', \'name\': \'English\'}, {\'iso_639_1\': \'es\', \'name\': \'Español\'}, {\'iso_639_1\': \'it\', \'name\': \'Italiano\'}, {\'iso_639_1\': \'de\', \'name\': \'Deutsch\'}]', 'Released', 'A Plan No One Escapes', 'Spectre', 6.3, 4466),
(185000000, 0, 'http://www.indianajones.com/site/index.html', '217', '[{\'id\': 83, \'name\': \'saving the world\'}, {\'id\': 483, \'name\': \'riddle\'}, {\'id\': 1294, \'name\': \'whip\'}, {\'id\': 1454, \'name\': \'treasure\'}, {\'id\': 1547, \'name\': \'mexico city\'}, {\'id\': 2650, \'name\': \'leather jacket\'}, {\'id\': 4276, \'name\': \'machinegun\'}, {\'id\':', 'en', 'Indiana Jones and the Kingdom of the Crystal Skull', 'Set during the Cold War, the Soviets – led by sword-wielding Irina Spalko – are in search of a crystal skull which has supernatural powers related to a mystical Lost City of Gold. After being captured and then escaping from them, Indy is coerced to head to Peru at the behest of a young man whose friend – and Indy\'s colleague – Professor Oxley has been captured for his knowledge of the skull\'s whereabouts.', 75.6745, '[{\'name\': \'Lucasfilm\', \'id\': 1}, {\'name\': \'Paramount Pictures\', \'id\': 4}]', '[{\'iso_3166_1\': \'US\', \'name\': \'United States of America\'}]', '2008-05-21', 786636033, 122, '[{\'iso_639_1\': \'en\', \'name\': \'English\'}, {\'iso_639_1\': \'de\', \'name\': \'Deutsch\'}, {\'iso_639_1\': \'ru\', \'name\': \'Pусский\'}]', 'Released', 'The adventure continues . . .', 'Indiana Jones and the Kingdom of the Crystal Skull', 5.7, 2495),
(180000000, 0, 'http://www.goldencompassmovie.com/index_german.html', '2268', '[{\'id\': 392, \'name\': \'england\'}, {\'id\': 1461, \'name\': \'compass\'}, {\'id\': 1706, \'name\': \'experiment\'}, {\'id\': 2596, \'name\': \'lordship\'}, {\'id\': 6464, \'name\': \'uncle\'}, {\'id\': 6678, \'name\': \'polar bear\'}, {\'id\': 13014, \'name\': \'orphan\'}, {\'id\': 18165, \'name', 'en', 'The Golden Compass', 'After overhearing a shocking secret, precocious orphan Lyra Belacqua trades her carefree existence roaming the halls of Jordan College for an otherworldly adventure in the far North, unaware that it\'s part of her destiny.', 42.9909, '[{\'name\': \'New Line Cinema\', \'id\': 12}, {\'name\': \'Ingenious Film Partners\', \'id\': 289}, {\'name\': \'Depth of Field\', \'id\': 1473}, {\'name\': \'Scholastic Productions\', \'id\': 1938}]', '[{\'iso_3166_1\': \'GB\', \'name\': \'United Kingdom\'}, {\'iso_3166_1\': \'US\', \'name\': \'United States of America\'}]', '2007-12-04', 372234864, 113, '[{\'iso_639_1\': \'is\', \'name\': \'Íslenska\'}, {\'iso_639_1\': \'en\', \'name\': \'English\'}, {\'iso_639_1\': \'ru\', \'name\': \'Pусский\'}, {\'iso_639_1\': \'fr\', \'name\': \'Français\'}]', 'Released', 'There are worlds beyond our own - the compass will show the way.', 'The Golden Compass', 5.8, 1303),
(220000000, 0, 'http://marvel.com/avengers_movie/', '24428', '[{\'id\': 242, \'name\': \'new york\'}, {\'id\': 5539, \'name\': \'shield\'}, {\'id\': 8828, \'name\': \'marvel comic\'}, {\'id\': 9715, \'name\': \'superhero\'}, {\'id\': 9717, \'name\': \'based on comic book\'}, {\'id\': 14909, \'name\': \'alien invasion\'}, {\'id\': 155030, \'name\': \'superh', 'en', 'The Avengers', 'When an unexpected enemy emerges and threatens global safety and security, Nick Fury, director of the international peacekeeping agency known as S.H.I.E.L.D., finds himself in need of a team to pull the world back from the brink of disaster. Spanning the globe, a daring recruitment effort begins!', 144.449, '[{\'name\': \'Paramount Pictures\', \'id\': 4}, {\'name\': \'Marvel Studios\', \'id\': 420}]', '[{\'iso_3166_1\': \'US\', \'name\': \'United States of America\'}]', '2012-04-25', 1519557910, 143, '[{\'iso_639_1\': \'en\', \'name\': \'English\'}]', 'Released', 'Some assembly required.', 'The Avengers', 7.4, 11776),
(178000000, 0, 'http://www.foxmovies.com/movies/x-men-apocalypse', '246655', '[{\'id\': 1852, \'name\': \'mutant\'}, {\'id\': 4769, \'name\': \'supernatural powers\'}, {\'id\': 8828, \'name\': \'marvel comic\'}, {\'id\': 9715, \'name\': \'superhero\'}, {\'id\': 9717, \'name\': \'based on comic book\'}, {\'id\': 10761, \'name\': \'superhuman\'}, {\'id\': 12332, \'name\': ', 'en', 'X-Men: Apocalypse', 'After the re-emergence of the world\'s first mutant, world-destroyer Apocalypse, the X-Men must unite to defeat his extinction level plan.', 139.272, '[{\'name\': \'Twentieth Century Fox Film Corporation\', \'id\': 306}, {\'name\': \"Donners\' Company\", \'id\': 431}, {\'name\': \'Marvel Entertainment\', \'id\': 7505}, {\'name\': \'Bad Hat Harry Productions\', \'id\': 9168}, {\'name\': \'TSG Entertainment\', \'id\': 22213}, {\'name\': \'Kinberg Genre\', \'id\': 78091}]', '[{\'iso_3166_1\': \'US\', \'name\': \'United States of America\'}]', '2016-05-18', 543934787, 144, '[{\'iso_639_1\': \'en\', \'name\': \'English\'}]', 'Released', 'Only the strong will survive', 'X-Men: Apocalypse', 6.4, 4721),
(207000000, 0, '', '254', '[{\'id\': 774, \'name\': \'film business\'}, {\'id\': 776, \'name\': \'screenplay\'}, {\'id\': 837, \'name\': \'show business\'}, {\'id\': 886, \'name\': \'film making\'}, {\'id\': 887, \'name\': \'film producer\'}, {\'id\': 911, \'name\': \'exotic island\'}, {\'id\': 1299, \'name\': \'monster\'}', 'en', 'King Kong', 'In 1933 New York, an overly ambitious movie producer coerces his cast and hired ship crew to travel to mysterious Skull Island, where they encounter Kong, a giant ape who is immediately smitten with the leading lady.', 61.226, '[{\'name\': \'WingNut Films\', \'id\': 11}, {\'name\': \'Universal Pictures\', \'id\': 33}, {\'name\': \'Big Primate Pictures\', \'id\': 68}, {\'name\': \'MFPV Film\', \'id\': 69}]', '[{\'iso_3166_1\': \'NZ\', \'name\': \'New Zealand\'}, {\'iso_3166_1\': \'US\', \'name\': \'United States of America\'}, {\'iso_3166_1\': \'DE\', \'name\': \'Germany\'}]', '2005-12-14', 550000000, 187, '[{\'iso_639_1\': \'en\', \'name\': \'English\'}]', 'Released', 'The eighth wonder of the world.', 'King Kong', 6.6, 2337),
(300000000, 0, 'http://disney.go.com/disneypictures/pirates/', '285', '[{\'id\': 270, \'name\': \'ocean\'}, {\'id\': 726, \'name\': \'drug abuse\'}, {\'id\': 911, \'name\': \'exotic island\'}, {\'id\': 1319, \'name\': \'east india trading company\'}, {\'id\': 2038, \'name\': \"love of one\'s life\"}, {\'id\': 2052, \'name\': \'traitor\'}, {\'id\': 2580, \'name\': \'', 'en', 'Pirates of the Caribbean: At World\'s End', 'Captain Barbossa, long believed to be dead, has come back to life and is headed to the edge of the Earth with Will Turner and Elizabeth Swann. But nothing is quite as it seems.', 139.083, '[{\'name\': \'Walt Disney Pictures\', \'id\': 2}, {\'name\': \'Jerry Bruckheimer Films\', \'id\': 130}, {\'name\': \'Second Mate Productions\', \'id\': 19936}]', '[{\'iso_3166_1\': \'US\', \'name\': \'United States of America\'}]', '2007-05-19', 961000000, 169, '[{\'iso_639_1\': \'en\', \'name\': \'English\'}]', 'Released', 'At the end of the world, the adventure begins.', 'Pirates of the Caribbean: At World\'s End', 6.9, 4500),
(210000000, 0, '', '36668', '[{\'id\': 1852, \'name\': \'mutant\'}, {\'id\': 8828, \'name\': \'marvel comic\'}, {\'id\': 9717, \'name\': \'based on comic book\'}, {\'id\': 10761, \'name\': \'superhuman\'}, {\'id\': 161271, \'name\': \'beast\'}, {\'id\': 161893, \'name\': \'cyclops\'}, {\'id\': 179430, \'name\': \'aftercredi', 'en', 'X-Men: The Last Stand', 'When a cure is found to treat mutations, lines are drawn amongst the X-Men and The Brotherhood, a band of powerful mutants organized under Xavier\'s former ally, Magneto.', 3.85753, '[{\'name\': \'Ingenious Film Partners\', \'id\': 289}, {\'name\': \'Twentieth Century Fox Film Corporation\', \'id\': 306}, {\'name\': \"Donners\' Company\", \'id\': 431}, {\'name\': \'Dune Entertainment\', \'id\': 444}, {\'name\': \'Major Studio Partners\', \'id\': 445}, {\'name\': \'Bad Hat Harry Productions\', \'id\': 9168}, {\'name\': \'thinkfilm\', \'id\': 12247}, {\'name\': \'Marvel Enterprises\', \'id\': 19551}, {\'name\': \'X3 Canada Productions\', \'id\': 79028}, {\'name\': \'X3US Productions\', \'id\': 79029}, {\'name\': \'XM3 Service\', \'id\': 79030}]', '[{\'iso_3166_1\': \'CA\', \'name\': \'Canada\'}, {\'iso_3166_1\': \'GB\', \'name\': \'United Kingdom\'}, {\'iso_3166_1\': \'US\', \'name\': \'United States of America\'}]', '2006-05-24', 459359555, 104, '[{\'iso_639_1\': \'en\', \'name\': \'English\'}]', 'Released', 'Take a Stand', 'X-Men: The Last Stand', 6.3, 3525),
(209000000, 0, '', '44833', '[{\'id\': 1721, \'name\': \'fight\'}, {\'id\': 4410, \'name\': \'u.s. navy\'}, {\'id\': 11265, \'name\': \'mind reading\'}, {\'id\': 12354, \'name\': \'hong kong\'}, {\'id\': 13042, \'name\': \'soccer\'}, {\'id\': 14760, \'name\': \'scientist\'}, {\'id\': 14946, \'name\': \'fictional war\'}, {\'id', 'en', 'Battleship', 'When mankind beams a radio signal into space, a reply comes from ‘Planet G’, in the form of several alien crafts that splash down in the waters off Hawaii. Lieutenant Alex Hopper is a weapons officer assigned to the USS John Paul Jones, part of an international naval coalition which becomes the world\'s last hope for survival as they engage the hostile alien force of unimaginable strength. While taking on the invaders, Hopper must also try to live up to the potential his brother, and his fiancée\'s father, Admiral Shane, expect of him.', 64.9284, '[{\'name\': \'Universal Pictures\', \'id\': 33}, {\'name\': \'Hasbro\', \'id\': 2598}, {\'name\': \'Bluegrass Films\', \'id\': 13778}, {\'name\': \'Film 44\', \'id\': 20153}]', '[{\'iso_3166_1\': \'US\', \'name\': \'United States of America\'}]', '2012-04-11', 303025485, 131, '[{\'iso_639_1\': \'en\', \'name\': \'English\'}, {\'iso_639_1\': \'th\', \'name\': \'ภาษาไทย\'}]', 'Released', 'The Battle for Earth Begins at Sea', 'Battleship', 5.5, 2114),
(250000000, 0, 'http://www.thedarkknightrises.com/', '49026', '[{\'id\': 849, \'name\': \'dc comics\'}, {\'id\': 853, \'name\': \'crime fighter\'}, {\'id\': 949, \'name\': \'terrorist\'}, {\'id\': 1308, \'name\': \'secret identity\'}, {\'id\': 1437, \'name\': \'burglar\'}, {\'id\': 3051, \'name\': \'hostage drama\'}, {\'id\': 3562, \'name\': \'time bomb\'}, ', 'en', 'The Dark Knight Rises', 'Following the death of District Attorney Harvey Dent, Batman assumes responsibility for Dent\'s crimes to protect the late attorney\'s reputation and is subsequently hunted by the Gotham City Police Department. Eight years later, Batman encounters the mysterious Selina Kyle and the villainous Bane, a new terrorist leader who overwhelms Gotham\'s finest. The Dark Knight resurfaces to protect a city that has branded him an enemy.', 112.313, '[{\'name\': \'Legendary Pictures\', \'id\': 923}, {\'name\': \'Warner Bros.\', \'id\': 6194}, {\'name\': \'DC Entertainment\', \'id\': 9993}, {\'name\': \'Syncopy\', \'id\': 9996}]', '[{\'iso_3166_1\': \'US\', \'name\': \'United States of America\'}]', '2012-07-16', 1084939099, 165, '[{\'iso_639_1\': \'en\', \'name\': \'English\'}]', 'Released', 'The Legend Ends', 'The Dark Knight Rises', 7.6, 9106),
(225000000, 0, 'http://www.manofsteel.com/', '49521', '[{\'id\': 83, \'name\': \'saving the world\'}, {\'id\': 849, \'name\': \'dc comics\'}, {\'id\': 9715, \'name\': \'superhero\'}, {\'id\': 9717, \'name\': \'based on comic book\'}, {\'id\': 10761, \'name\': \'superhuman\'}, {\'id\': 14909, \'name\': \'alien invasion\'}, {\'id\': 161184, \'name\':', 'en', 'Man of Steel', 'A young boy learns that he has extraordinary powers and is not of this earth. As a young man, he journeys to discover where he came from and what he was sent here to do. But the hero in him must emerge if he is to save the world from annihilation and become the symbol of hope for all mankind.', 99.398, '[{\'name\': \'Legendary Pictures\', \'id\': 923}, {\'name\': \'Warner Bros.\', \'id\': 6194}, {\'name\': \'DC Entertainment\', \'id\': 9993}, {\'name\': \'Syncopy\', \'id\': 9996}, {\'name\': \'Cruel and Unusual Films\', \'id\': 78685}]', '[{\'iso_3166_1\': \'GB\', \'name\': \'United Kingdom\'}, {\'iso_3166_1\': \'US\', \'name\': \'United States of America\'}]', '2013-06-12', 662845518, 143, '[{\'iso_639_1\': \'en\', \'name\': \'English\'}]', 'Released', 'You will believe that a man can fly.', 'Man of Steel', 6.5, 6359),
(260000000, 0, 'http://movies.disney.com/john-carter', '49529', '[{\'id\': 818, \'name\': \'based on novel\'}, {\'id\': 839, \'name\': \'mars\'}, {\'id\': 1456, \'name\': \'medallion\'}, {\'id\': 3801, \'name\': \'space travel\'}, {\'id\': 7376, \'name\': \'princess\'}, {\'id\': 9951, \'name\': \'alien\'}, {\'id\': 10028, \'name\': \'steampunk\'}, {\'id\': 10539', 'en', 'John Carter', 'John Carter is a war-weary, former military captain who\'s inexplicably transported to the mysterious and exotic planet of Barsoom (Mars) and reluctantly becomes embroiled in an epic conflict. It\'s a world on the brink of collapse, and Carter rediscovers his humanity when he realizes the survival of Barsoom and its people rests in his hands.', 43.927, '[{\'name\': \'Walt Disney Pictures\', \'id\': 2}]', '[{\'iso_3166_1\': \'US\', \'name\': \'United States of America\'}]', '2012-03-07', 284139100, 132, '[{\'iso_639_1\': \'en\', \'name\': \'English\'}]', 'Released', 'Lost in our world, found in another.', 'John Carter', 6.1, 2124),
(140000000, 0, '', '5174', '[{\'id\': 1704, \'name\': \'ambassador\'}]', 'en', 'Rush Hour 3', 'After an attempted assassination on Ambassador Han, Inspector Lee and Detective Carter are back in action as they head to Paris to protect a French woman with knowledge of the Triads\' secret leaders. Lee also holds secret meetings with a United Nations authority, but his personal struggles with a Chinese criminal mastermind named Kenji, which reveals that it\'s Lee\'s long-lost...brother.', 22.5718, '[{\'name\': \'New Line Cinema\', \'id\': 12}]', '[{\'iso_3166_1\': \'US\', \'name\': \'United States of America\'}]', '2007-08-08', 258022233, 91, '[{\'iso_639_1\': \'la\', \'name\': \'Latin\'}, {\'iso_639_1\': \'en\', \'name\': \'English\'}, {\'iso_639_1\': \'fr\', \'name\': \'Français\'}, {\'iso_639_1\': \'ja\', \'name\': \'日本語\'}, {\'iso_639_1\': \'zh\', \'name\': \'普通话\'}]', 'Released', 'The Rush Is On!', 'Rush Hour 3', 6.1, 783),
(258000000, 0, 'http://www.sonypictures.com/movies/spider-man3/', '559', '[{\'id\': 851, \'name\': \'dual identity\'}, {\'id\': 1453, \'name\': \'amnesia\'}, {\'id\': 1965, \'name\': \'sandstorm\'}, {\'id\': 2038, \'name\': \"love of one\'s life\"}, {\'id\': 3446, \'name\': \'forgiveness\'}, {\'id\': 3986, \'name\': \'spider\'}, {\'id\': 4391, \'name\': \'wretch\'}, {\'i', 'en', 'Spider-Man 3', 'The seemingly invincible Spider-Man goes up against an all-new crop of villain – including the shape-shifting Sandman. While Spider-Man’s superpowers are altered by an alien organism, his alter ego, Peter Parker, deals with nemesis Eddie Brock and also gets caught up in a love triangle.', 115.7, '[{\'name\': \'Columbia Pictures\', \'id\': 5}, {\'name\': \'Laura Ziskin Productions\', \'id\': 326}, {\'name\': \'Marvel Enterprises\', \'id\': 19551}]', '[{\'iso_3166_1\': \'US\', \'name\': \'United States of America\'}]', '2007-05-01', 890871626, 139, '[{\'iso_639_1\': \'en\', \'name\': \'English\'}, {\'iso_639_1\': \'fr\', \'name\': \'Français\'}]', 'Released', 'The battle within.', 'Spider-Man 3', 5.9, 3576),
(255000000, 0, 'http://disney.go.com/the-lone-ranger/', '57201', '[{\'id\': 1556, \'name\': \'texas\'}, {\'id\': 2673, \'name\': \'horse\'}, {\'id\': 5385, \'name\': \'survivor\'}, {\'id\': 5901, \'name\': \'texas ranger\'}, {\'id\': 9104, \'name\': \'partner\'}, {\'id\': 9503, \'name\': \'outlaw\'}, {\'id\': 10685, \'name\': \'escape\'}, {\'id\': 10909, \'name\': ', 'en', 'The Lone Ranger', 'The Texas Rangers chase down a gang of outlaws led by Butch Cavendish, but the gang ambushes the Rangers, seemingly killing them all. One survivor is found, however, by an American Indian named Tonto, who nurses him back to health. The Ranger, donning a mask and riding a white stallion named Silver, teams up with Tonto to bring the unscrupulous gang and others of that ilk to justice.', 49.047, '[{\'name\': \'Walt Disney Pictures\', \'id\': 2}, {\'name\': \'Jerry Bruckheimer Films\', \'id\': 130}, {\'name\': \'Infinitum Nihil\', \'id\': 2691}, {\'name\': \'Silver Bullet Productions (II)\', \'id\': 37380}, {\'name\': \'Blind Wink Productions\', \'id\': 37381}, {\'name\': \'Classic Media\', \'id\': 37382}]', '[{\'iso_3166_1\': \'US\', \'name\': \'United States of America\'}]', '2013-07-03', 89289910, 149, '[{\'iso_639_1\': \'en\', \'name\': \'English\'}]', 'Released', 'Never Take Off the Mask', 'The Lone Ranger', 5.9, 2311),
(105000000, 0, '', '64682', '[{\'id\': 818, \'name\': \'based on novel\'}, {\'id\': 1326, \'name\': \'infidelity\'}, {\'id\': 1523, \'name\': \'obsession\'}, {\'id\': 3929, \'name\': \'hope\'}, {\'id\': 209714, \'name\': \'3d\'}]', 'en', 'The Great Gatsby', 'An adaptation of F. Scott Fitzgerald\'s Long Island-set novel, where Midwesterner Nick Carraway is lured into the lavish world of his neighbor, Jay Gatsby. Soon enough, however, Carraway will see through the cracks of Gatsby\'s nouveau riche existence, where obsession, madness, and tragedy await.', 61.1961, '[{\'name\': \'Village Roadshow Pictures\', \'id\': 79}, {\'name\': \'Bazmark Films\', \'id\': 240}, {\'name\': \'Warner Bros.\', \'id\': 6194}, {\'name\': \'A&E Television Networks\', \'id\': 11858}, {\'name\': \'Red Wagon Entertainment\', \'id\': 14440}, {\'name\': \'Spectrum Films\', \'id\': 14604}]', '[{\'iso_3166_1\': \'US\', \'name\': \'United States of America\'}, {\'iso_3166_1\': \'AU\', \'name\': \'Australia\'}]', '2013-05-10', 351040419, 143, '[{\'iso_639_1\': \'en\', \'name\': \'English\'}]', 'Released', 'Reserving judgments is a matter of infinite hope... I come to the admission that it has a limit.', 'The Great Gatsby', 7.3, 3769),
(176000003, 0, 'http://www.jupiterascending.com', '76757', '[{\'id\': 306, \'name\': \'jupiter\'}, {\'id\': 9882, \'name\': \'space\'}, {\'id\': 187056, \'name\': \'woman director\'}, {\'id\': 209714, \'name\': \'3d\'}, {\'id\': 212760, \'name\': \'interspecies romance\'}]', 'en', 'Jupiter Ascending', 'In a universe where human genetic material is the most precious commodity, an impoverished young Earth woman becomes the key to strategic maneuvers and internal strife within a powerful dynasty…', 85.3691, '[{\'name\': \'Village Roadshow Pictures\', \'id\': 79}, {\'name\': \'Dune Entertainment\', \'id\': 444}, {\'name\': \'Anarchos Productions\', \'id\': 450}, {\'name\': \'Warner Bros.\', \'id\': 6194}]', '[{\'iso_3166_1\': \'US\', \'name\': \'United States of America\'}]', '2015-02-04', 183987723, 124, '[{\'iso_639_1\': \'en\', \'name\': \'English\'}]', 'Released', 'Expand your universe.', 'Jupiter Ascending', 5.2, 2768),
(195000000, 0, 'http://jackthegiantkiller.warnerbros.com', '81005', '[{\'id\': 179411, \'name\': \'based on fairy tale\'}, {\'id\': 189099, \'name\': \'giant\'}]', 'en', 'Jack the Giant Slayer', 'The story of an ancient war that is reignited when a young farmhand unwittingly opens a gateway between our world and a fearsome race of giants. Unleashed on the Earth for the first time in centuries, the giants strive to reclaim the land they once lost, forcing the young man, Jack into the battle of his life to stop them. Fighting for a kingdom, its people, and the love of a brave princess, he comes face to face with the unstoppable warriors he thought only existed in legend–and gets the chance to become a legend himself.', 43.3499, '[{\'name\': \'New Line Cinema\', \'id\': 12}, {\'name\': \'Original Film\', \'id\': 333}, {\'name\': \'Legendary Pictures\', \'id\': 923}, {\'name\': \'Warner Bros.\', \'id\': 6194}, {\'name\': \'Big Kid Pictures\', \'id\': 8406}, {\'name\': \'Bad Hat Harry Productions\', \'id\': 9168}]', '[{\'iso_3166_1\': \'US\', \'name\': \'United States of America\'}]', '2013-02-27', 197687603, 114, '[{\'iso_639_1\': \'en\', \'name\': \'English\'}]', 'Released', 'Prepare for a giant adventure', 'Jack the Giant Slayer', 5.5, 2598),
(280000000, 0, 'http://marvel.com/movies/movie/193/avengers_age_of_ultron', '99861', '[{\'id\': 8828, \'name\': \'marvel comic\'}, {\'id\': 9663, \'name\': \'sequel\'}, {\'id\': 9715, \'name\': \'superhero\'}, {\'id\': 9717, \'name\': \'based on comic book\'}, {\'id\': 10629, \'name\': \'vision\'}, {\'id\': 155030, \'name\': \'superhero team\'}, {\'id\': 179431, \'name\': \'durin', 'en', 'Avengers: Age of Ultron', 'When Tony Stark tries to jumpstart a dormant peacekeeping program, things go awry and Earth’s Mightiest Heroes are put to the ultimate test as the fate of the planet hangs in the balance. As the villainous Ultron emerges, it is up to The Avengers to stop him from enacting his terrible plans, and soon uneasy alliances and unexpected action pave the way for an epic and unique global adventure.', 134.279, '[{\'name\': \'Marvel Studios\', \'id\': 420}, {\'name\': \'Prime Focus\', \'id\': 15357}, {\'name\': \'Revolution Sun Studios\', \'id\': 76043}]', '[{\'iso_3166_1\': \'US\', \'name\': \'United States of America\'}]', '2015-04-22', 1405403694, 141, '[{\'iso_639_1\': \'en\', \'name\': \'English\'}]', 'Released', 'A New Age Has Come.', 'Avengers: Age of Ultron', 7.3, 6767),
(0, 0, 'homepage', 'id', 'keywords', 'original_l', 'original_title', 'overview', 0, 'production_companies', 'production_countries', '0000-00-00', 0, 0, 'spoken_languages', 'status', 'tagline', 'title', 0, 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- A tábla indexei `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- A tábla indexei `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
