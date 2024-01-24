-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2024 at 02:56 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eparikha`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question_text` varchar(255) NOT NULL,
  `option_a` varchar(25) NOT NULL,
  `option_b` varchar(25) NOT NULL,
  `option_c` varchar(25) NOT NULL,
  `option_d` varchar(25) NOT NULL,
  `correct_answer` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question_text`, `option_a`, `option_b`, `option_c`, `option_d`, `correct_answer`) VALUES
(1, 'What is the capital of Germany?', 'Paris', 'Madrid', 'Rome', 'Berlin', 'd'),
(2, 'Who wrote \"Pride and Prejudice\"?', 'Mark Twain', 'Charles Dickens', 'Leo Tolstoy', 'Jane Austen', 'd'),
(3, 'Which planet is known as the \"Red Planet\"?', 'Saturn', 'Venus', 'Jupiter', 'Mars', 'd'),
(4, 'What is the largest mammal on Earth?', 'Hippopotamus', 'Elephant', 'Giraffe', 'Blue Whale', 'd'),
(5, 'Who painted the Mona Lisa?', 'Claude Monet', 'Vincent van Gogh', 'Pablo Picasso', 'Leonardo da Vinci', 'd'),
(6, 'In what year did World War I begin?', '1920', '1916', '1918', '1914', 'd'),
(7, 'What is the currency of Japan?', 'Pound', 'Euro', 'Dollar', 'Japanese Yen', 'd'),
(8, 'Which gas do plants absorb during photosynthesis?', 'Hydrogen', 'Oxygen', 'Nitrogen', 'Carbon Dioxide', 'd'),
(9, 'Who is the author of \"The Great Gatsby\"?', 'George Orwell', 'Ernest Hemingway', 'J.K. Rowling', 'F. Scott Fitzgerald', 'd'),
(10, 'What is the largest ocean on Earth?', 'Arctic Ocean', 'Atlantic Ocean', 'Indian Ocean', 'Pacific Ocean', 'd'),
(11, 'Who discovered penicillin?', 'Joseph Lister', 'Marie Curie', 'Louis Pasteur', 'Alexander Fleming', 'd'),
(12, 'What is the currency of China?', 'Dollar', 'Yen', 'Euro', 'Renminbi (Yuan)', 'd'),
(13, 'In which year did the Titanic sink?', '1925', '1915', '1920', '1912', 'd'),
(14, 'What is the main ingredient in guacamole?', 'Lime', 'Tomato', 'Onion', 'Avocado', 'd'),
(15, 'Who is known as the \"Father of Computer Science\"?', 'Ada Lovelace', 'Bill Gates', 'Steve Jobs', 'Alan Turing', 'd'),
(16, 'What is the capital of Australia?', 'Brisbane', 'Sydney', 'Melbourne', 'Canberra', 'd'),
(17, 'Who wrote \"Romeo and Juliet\"?', 'Mark Twain', 'Charles Dickens', 'Jane Austen', 'William Shakespeare', 'd'),
(18, 'What is the largest bird in the world?', 'Kiwi', 'Emu', 'Cassowary', 'Ostrich', 'd'),
(19, 'Which element has the chemical symbol \"Hg\"?', 'Copper', 'Gold', 'Silver', 'Mercury', 'd'),
(20, 'Who is the Greek god of thunder?', 'Apollo', 'Poseidon', 'Hades', 'Zeus', 'd'),
(21, 'What is the capital of Spain?', 'Paris', 'Madrid', 'Rome', 'Berlin', 'b'),
(22, 'Who wrote \"Oliver Twist\"?', 'Mark Twain', 'Charles Dickens', 'Leo Tolstoy', 'Jane Austen', 'b'),
(23, 'Which planet is known as the \"Gas Giant\"?', 'Saturn', 'Venus', 'Jupiter', 'Mars', 'c'),
(24, 'What is the smallest prime number?', '1', '2', '3', '5', 'b'),
(25, 'Who directed the movie \"Inception\"?', 'Christopher Nolan', 'Steven Spielberg', 'Quentin Tarantino', 'Martin Scorsese', 'b'),
(26, 'In what year did World War II end?', '1945', '1941', '1943', '1947', 'a'),
(27, 'What is the currency of Switzerland?', 'Euro', 'Swiss Franc', 'Dollar', 'Pound', 'b'),
(28, 'Which gas makes up the majority of Earth\'s atmosphere?', 'Nitrogen', 'Oxygen', 'Carbon Dioxide', 'Argon', 'b'),
(29, 'Who wrote \"The Catcher in the Rye\"?', 'F. Scott Fitzgerald', 'J.D. Salinger', 'George Orwell', 'Ernest Hemingway', 'b'),
(30, 'What is the smallest continent?', 'Asia', 'Europe', 'Australia', 'Africa', 'c'),
(31, 'Who developed the theory of relativity?', 'Isaac Newton', 'Albert Einstein', 'Galileo Galilei', 'Niels Bohr', 'b'),
(32, 'What is the currency of South Korea?', 'Yen', 'Won', 'Euro', 'Dollar', 'b'),
(33, 'In which year did the first manned moon landing occur?', '1969', '1971', '1967', '1973', 'a'),
(34, 'What is the main ingredient in hummus?', 'Chickpeas', 'Tomato', 'Onion', 'Lime', 'a'),
(35, 'Who is the creator of the Python programming language?', 'Guido van Rossum', 'Larry Page', 'Mark Zuckerberg', 'Bill Gates', 'c'),
(36, 'What is the capital of Canada?', 'Toronto', 'Ottawa', 'Vancouver', 'Montreal', 'b'),
(37, 'Who wrote \"Hamlet\"?', 'Mark Twain', 'Charles Dickens', 'Jane Austen', 'William Shakespeare', 'c'),
(38, 'What is the fastest land animal?', 'Cheetah', 'Lion', 'Gazelle', 'Leopard', 'a'),
(39, 'Which element has the chemical symbol \"O\"?', 'Osmium', 'Oxygen', 'Oganesson', 'Osmium', 'b'),
(40, 'Who is the Roman god of war?', 'Mars', 'Mercury', 'Jupiter', 'Neptune', 'a'),
(41, 'What is the capital of Italy?', 'Rome', 'Madrid', 'Paris', 'Berlin', 'a'),
(42, 'Who wrote \"The Great Expectations\"?', 'Charles Dickens', 'Jane Austen', 'Leo Tolstoy', 'Mark Twain', 'a'),
(43, 'Which planet is known as the \"Blue Planet\"?', 'Earth', 'Venus', 'Jupiter', 'Saturn', 'a'),
(44, 'What is the largest prime number?', '1', '2', '3', '5', 'c'),
(45, 'Who directed the movie \"Pulp Fiction\"?', 'Quentin Tarantino', 'Christopher Nolan', 'Steven Spielberg', 'Martin Scorsese', 'a'),
(46, 'In what year did World War I end?', '1918', '1916', '1914', '1920', 'c'),
(47, 'What is the currency of Sweden?', 'Swiss Franc', 'Euro', 'Swedish Krona', 'Pound', 'c'),
(48, 'Which gas makes up a significant portion of the Earth\'s atmosphere?', 'Carbon Dioxide', 'Oxygen', 'Nitrogen', 'Argon', 'c'),
(49, 'Who wrote \"Crime and Punishment\"?', 'Fyodor Dostoevsky', 'J.K. Rowling', 'George Orwell', 'Ernest Hemingway', 'a'),
(50, 'What is the second largest continent?', 'Asia', 'Europe', 'Australia', 'Africa', 'c'),
(51, 'Who developed the theory of gravity?', 'Isaac Newton', 'Albert Einstein', 'Galileo Galilei', 'Niels Bohr', 'a'),
(52, 'What is the currency of China?', 'Renminbi (Yuan)', 'Yen', 'Euro', 'Dollar', 'a'),
(53, 'In which year did the Titanic sink?', '1912', '1915', '1920', '1925', 'c'),
(54, 'What is the main ingredient in guacamole?', 'Avocado', 'Tomato', 'Onion', 'Lime', 'c'),
(55, 'Who is the founder of Microsoft?', 'Bill Gates', 'Steve Jobs', 'Mark Zuckerberg', 'Larry Page', 'a'),
(56, 'What is the capital of Russia?', 'Moscow', 'Saint Petersburg', 'Kiev', 'Minsk', 'a'),
(57, 'Who wrote \"Macbeth\"?', 'William Shakespeare', 'Charles Dickens', 'Jane Austen', 'Mark Twain', 'c'),
(58, 'What is the fastest bird?', 'Peregrine Falcon', 'Eagle', 'Ostrich', 'Swift', 'a'),
(59, 'Which element has the chemical symbol \"C\"?', 'Carbon', 'Calcium', 'Chlorine', 'Copper', 'c'),
(60, 'Who is the Greek goddess of wisdom?', 'Athena', 'Hera', 'Aphrodite', 'Artemis', 'a'),
(61, 'What is the capital of Canada?', 'Toronto', 'Ottawa', 'Vancouver', 'Montreal', 'b'),
(62, 'Who wrote \"To Kill a Mockingbird\"?', 'Harper Lee', 'J.K. Rowling', 'George Orwell', 'Ernest Hemingway', 'a'),
(63, 'Which planet is known as the \"Red Planet\"?', 'Mars', 'Venus', 'Jupiter', 'Saturn', 'a'),
(64, 'What is the smallest even prime number?', '2', '3', '5', '7', 'a'),
(65, 'Who directed the movie \"The Shawshank Redemption\"?', 'Frank Darabont', 'Christopher Nolan', 'Steven Spielberg', 'Quentin Tarantino', 'a'),
(66, 'In what year did World War II begin?', '1939', '1941', '1943', '1945', 'a'),
(67, 'What is the currency of Switzerland?', 'Swiss Franc', 'Euro', 'Dollar', 'Pound', 'a'),
(68, 'Which gas makes up the majority of Earth\'s atmosphere?', 'Nitrogen', 'Oxygen', 'Carbon Dioxide', 'Argon', 'b'),
(69, 'Who wrote \"1984\"?', 'George Orwell', 'F. Scott Fitzgerald', 'J.D. Salinger', 'Aldous Huxley', 'a'),
(70, 'What is the largest continent?', 'Asia', 'Europe', 'Australia', 'Africa', 'a'),
(71, 'Who developed the theory of relativity?', 'Albert Einstein', 'Isaac Newton', 'Galileo Galilei', 'Niels Bohr', 'a'),
(72, 'What is the currency of China?', 'Renminbi (Yuan)', 'Yen', 'Euro', 'Dollar', 'b'),
(73, 'In which year did the Titanic sink?', '1912', '1915', '1920', '1925', 'b'),
(74, 'What is the main ingredient in hummus?', 'Chickpeas', 'Tomato', 'Onion', 'Lime', 'a'),
(75, 'Who is the creator of the JavaScript programming language?', 'Brendan Eich', 'Bill Gates', 'Mark Zuckerberg', 'Larry Page', 'a'),
(76, 'What is the capital of Australia?', 'Canberra', 'Sydney', 'Melbourne', 'Brisbane', 'a'),
(77, 'Who wrote \"Romeo and Juliet\"?', 'William Shakespeare', 'Charles Dickens', 'Jane Austen', 'Mark Twain', 'b'),
(78, 'What is the largest bird in the world?', 'Ostrich', 'Emu', 'Cassowary', 'Kiwi', 'b'),
(79, 'Which element has the chemical symbol \"Hg\"?', 'Mercury', 'Gold', 'Silver', 'Copper', 'a'),
(80, 'Who is the Greek god of thunder?', 'Zeus', 'Poseidon', 'Hades', 'Apollo', 'a'),
(81, 'What is the capital of France?', 'Paris', 'Madrid', 'Rome', 'Berlin', 'a'),
(82, 'Who wrote \"The Adventures of Sherlock Holmes\"?', 'Arthur Conan Doyle', 'J.K. Rowling', 'Charles Dickens', 'Agatha Christie', 'a'),
(83, 'Which planet is known as the \"Blue Planet\"?', 'Earth', 'Venus', 'Jupiter', 'Saturn', 'a'),
(84, 'What is the smallest prime number?', '1', '2', '3', '5', 'a'),
(85, 'Who directed the movie \"The Dark Knight\"?', 'Christopher Nolan', 'Steven Spielberg', 'Quentin Tarantino', 'Martin Scorsese', 'a'),
(86, 'In what year did World War I end?', '1918', '1916', '1914', '1920', 'a'),
(87, 'What is the currency of Sweden?', 'Swedish Krona', 'Euro', 'Swiss Franc', 'Pound', 'a'),
(88, 'Which gas makes up a significant portion of Earth\'s atmosphere?', 'Oxygen', 'Nitrogen', 'Carbon Dioxide', 'Argon', 'a'),
(89, 'Who wrote \"The Old Man and the Sea\"?', 'Ernest Hemingway', 'F. Scott Fitzgerald', 'J.K. Rowling', 'George Orwell', 'a'),
(90, 'What is the second largest continent?', 'Asia', 'Europe', 'Australia', 'Africa', 'a'),
(91, 'Who developed the theory of gravity?', 'Isaac Newton', 'Albert Einstein', 'Galileo Galilei', 'Niels Bohr', 'a'),
(92, 'What is the currency of China?', 'Renminbi (Yuan)', 'Yen', 'Euro', 'Dollar', 'a'),
(93, 'In which year did the Titanic sink?', '1912', '1915', '1920', '1925', 'a'),
(94, 'What is the main ingredient in hummus?', 'Chickpeas', 'Tomato', 'Onion', 'Lime', 'a'),
(95, 'Who is the founder of Microsoft?', 'Bill Gates', 'Steve Jobs', 'Mark Zuckerberg', 'Larry Page', 'a'),
(96, 'What is the capital of Russia?', 'Moscow', 'Saint Petersburg', 'Kiev', 'Minsk', 'a'),
(97, 'Who wrote \"Macbeth\"?', 'William Shakespeare', 'Charles Dickens', 'Jane Austen', 'Mark Twain', 'a'),
(98, 'What is the fastest bird?', 'Peregrine Falcon', 'Eagle', 'Ostrich', 'Swift', 'a'),
(99, 'Which element has the chemical symbol \"C\"?', 'Carbon', 'Calcium', 'Chlorine', 'Copper', 'a'),
(100, 'Who is the Roman god of war?', 'Mars', 'Mercury', 'Jupiter', 'Neptune', 'a'),
(101, 'Who holds the record for the highest individual score in One Day Internationals (ODIs)?', 'Sachin Tendulkar', 'Ricky Ponting', 'Martin Guptill', 'Virender Sehwag', 'c'),
(102, 'In which year did India win its first Cricket World Cup?', '1983', '1975', '1987', '1992', 'a'),
(103, 'Who is known as the \"God of Cricket\"?', 'Sachin Tendulkar', 'Virat Kohli', 'Ricky Ponting', 'Brian Lara', 'a'),
(104, 'Which country has won the most ICC Cricket World Cups?', 'Australia', 'India', 'West Indies', 'Pakistan', 'a'),
(105, 'Who holds the record for the most wickets in Test cricket?', 'Shane Warne', 'Anil Kumble', 'Muttiah Muralitharan', 'Courtney Walsh', 'c'),
(106, 'In which city is the Melbourne Cricket Ground (MCG) located?', 'Sydney', 'Melbourne', 'Brisbane', 'Adelaide', 'b'),
(107, 'Who is the fastest bowler to reach 100 wickets in ODIs?', 'Mitchell Starc', 'Saqlain Mushtaq', 'Kagiso Rabada', 'Afghanistan', 'c'),
(108, 'Who is the current captain of the Indian cricket team in Test matches?', 'Virat Kohli', 'Ajinkya Rahane', 'Rohit Sharma', 'Cheteshwar Pujara', 'b'),
(109, 'What is the format of the Indian Premier League (IPL)?', 'Test Matches', 'One Day Internationals', 'Twenty20', 'T10', 'c'),
(110, 'Who won the ICC Men\'s T20 World Cup in 2020?', 'India', 'Australia', 'England', 'West Indies', 'd'),
(111, 'Which cricket stadium is known as the \"Home of Cricket\"?', 'Lord\'s Cricket Ground', 'Eden Gardens', 'MCG', 'The Oval', 'a'),
(112, 'Who was the first cricketer to score a double century in ODIs?', 'Rohit Sharma', 'Sachin Tendulkar', 'Virender Sehwag', 'Martin Guptill', 'c'),
(113, 'In which country did the sport of cricket originate?', 'India', 'England', 'Australia', 'West Indies', 'b'),
(114, 'Who is the highest run-scorer in Test cricket?', 'Sachin Tendulkar', 'Ricky Ponting', 'Kumar Sangakkara', 'Brian Lara', 'c'),
(115, 'Which cricketer is known as the \"Yorker King\"?', 'Wasim Akram', 'Jasprit Bumrah', 'Mitchell Starc', 'Lasith Malinga', 'b'),
(116, 'Who holds the record for the most sixes in T20 Internationals?', 'Chris Gayle', 'AB de Villiers', 'Rohit Sharma', 'Martin Guptill', 'd'),
(117, 'What is the nickname of the Australian national cricket team?', 'Kangaroos', 'Kiwis', 'Lions', 'Baggy Greens', 'd'),
(118, 'Who is the only player to have scored a century in a T20 International World Cup final?', 'Chris Gayle', 'Virat Kohli', 'Gautam Gambhir', 'Marlon Samuels', 'd'),
(119, 'Which cricketing event is also known as \"The Ashes\"?', 'India vs Pakistan series', 'Australia vs England seri', 'West Indies vs South Afri', 'New Zealand vs Sri Lanka ', 'b'),
(120, 'Who is the highest wicket-taker in T20 International cricket?', 'Shahid Afridi', 'Lasith Malinga', 'Rashid Khan', 'Saeed Ajmal', 'c');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(4, 'Jyotiprakash', '25d55ad283aa400af464c76d713c07ad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
