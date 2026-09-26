-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2026 at 12:55 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `esquilador`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `book_name` varchar(200) NOT NULL,
  `author` varchar(200) NOT NULL,
  `year_published` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book_name`, `author`, `year_published`) VALUES
(2, 'To Kill a Mockingbird', 'Harper Lee', '1961'),
(3, '1984', 'George Orwell', '1949'),
(4, 'Pride and Prejudice', 'Jane Austen', '0000'),
(5, 'Moby-Dick', 'Herman Melville', '0000'),
(6, 'The Catcher in the Rye', 'J.D. Salinger', '1951'),
(7, 'The Lord of the Rings', 'J.R.R. Tolkien', '1954'),
(8, 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', '1997'),
(9, 'The Hobbit', 'J.R.R. Tolkien', '1937'),
(10, 'Brave New World', 'Aldous Huxley', '1932');

-- --------------------------------------------------------

--
-- Table structure for table `borrow_book`
--

CREATE TABLE `borrow_book` (
  `stud_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `book_name` varchar(200) NOT NULL,
  `date_returned` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrow_book`
--

INSERT INTO `borrow_book` (`stud_id`, `name`, `book_name`, `date_returned`) VALUES
(0, 'yuY', 'Pride and Prejudice', '0000-00-00'),
(104, 'Michael Johnson', 'The Catcher in the Rye', '2025-03-18'),
(105, 'Emily Davis', 'Harry Potter and the Sorcerer\'s Stone', '2025-03-20'),
(106, 'Christopher Brown', 'The Hobbit', '2025-03-22'),
(107, 'Jessica Wilson', 'To Kill a Mockingbird', '2025-03-25'),
(108, 'Daniel Martinez', 'Brave New World', '2025-03-28'),
(109, 'Sophia Anderson', 'Moby-Dick', '2025-03-30'),
(110, 'Matthew Thomas', 'The Lord of the Rings', '2025-04-02'),
(346, 'Djahaira Aspa', 'evsb', '2025-05-16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(220) NOT NULL,
  `email` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`) VALUES
(1, 'Ruthiemay Esquilador', 'ruthiemaysaasfdsgfdgafdsgexample.com'),
(2, 'John Doe', 'johndoe@example.com'),
(3, 'Jane Smith', 'janesmith@example.com'),
(4, 'Michael Johnson', 'michaelj@example.com'),
(5, 'Emily Davis', 'emilydavis@example.com'),
(6, 'Christopher Brown', 'chrisbrown@example.com'),
(7, 'Jessica Wilson', 'jessicaw@example.com'),
(8, 'Daniel Martinez', 'danmartinez@example.com'),
(9, 'Sophia Anderson', 'sophiaa@example.com'),
(10, 'Matthew Thomas', 'matthewt@example.com'),
(11, 'Esquilador, Ruthiemay, Tañamor', 'ruesquilador@my.cspc.edu.ph');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `borrow_book`
--
ALTER TABLE `borrow_book`
  ADD PRIMARY KEY (`stud_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `borrow_book`
--
ALTER TABLE `borrow_book`
  MODIFY `stud_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=347;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
