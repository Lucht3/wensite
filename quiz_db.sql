-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2024 at 07:14 PM
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
-- Database: `quiz_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(6) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `option4` varchar(255) DEFAULT NULL,
  `correct_answer` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `correct_answer`) VALUES
(1, 'คุณสมบัติในข้อใดเป็นคุณสมบัติของวงจรไฟฟ้าแบบอนุกรม', ' ผลรวมของแรงดันที่ตกคร่อมเท่ากับผลรวมของแรงดันที่จ่ายให้กับวงจร\r\n', 'ผลรวมของกระแสที่ตกคร่อมเท่ากับผลรวมของกระแสที่จ่ายให้กับวงจร', 'กำลังไฟฟ้าคืออัตราส่วนระหว่างกระแสกับค่าความต้านทาน\r\n', 'แรงดันแปรผันตรงกับกระแสไฟฟ้า', 1),
(2, 'จากกฎของโอห์มข้อใดกล่าวถูกต้อง', 'กระแสไฟฟ้าแปรผันตรงกับค่าความต้านทาน\r\n', 'แรงดันแปรผันตรงกับค่าความต้านทาน', 'ความต้านทานแปรผันตรงกับกำลังไฟฟ้า', 'กระแสไฟฟ้าแปรผันตรงกับแรงดันไฟฟ้า', 2),
(3, 'กฎแรงดันของเคอร์ซอฟกล่าวว่าอะไร\r\n?', 'ในวงจรไฟฟ้าปิดใด  ผลรวมทางพีชคณิตของแรงดันไฟฟ้ามีค่าเท่ากับศูนย์\r\n', 'ผลรวมของแรงดันตกคร่อมทั้งวงจร', 'ผลรวมของแรงดันที่จ่ายให้แก่วงจร', 'ผลรวมของกระแสไฟฟ้าเท่ากับกระแสไฟฟ้าที่ไหลผ่านในแต่ละสาขา', 1),
(4, 'คำกล่าวในข้อใดกล่าวได้ถูกต้องตามวิธีของกระแสเมช', 'แก้ปัญหาวงจรไฟฟ้ารวดเร็วขึ้น', 'ง่ายต่อการแก้ปัญหาวงจรไฟฟ้า', 'ลดขั้นตอนในการแก้ปัญหาวงจรไฟฟ้า', 'ถูกทุกข้อ', 4),
(5, 'เพราะเหตุใดจึงเรียกมอเตอร์ไฟฟ้ากระแสสลับว่า อินดักชั่นมอเตอร์\r\n', 'พลังงานเอ้าพุทเกิดจากการเหนี่ยวนำ', 'พลังงานอินพุทเกิดจากการเหนี่ยวนำ', 'โรเตอร์เป็นแบบกรงกระรอก', 'โรเตอร์เป็นแบบวาวด์โรเตอร์', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(6) UNSIGNED NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(3, 'Snao', '$2y$10$5gHLtX43n/cn2MTEZL14E.6fnShL2Mr6eG91onmb0eJ', 'Snao@gmail.com'),
(4, 'tes', '$2y$10$VaMPyui57J7FvfBFJMUDNOuNtg5R7mJEfm30FbHIt2J', 'tes@gmail.com'),
(5, 'wasd', '1234', ''),
(6, '1234', '$2y$10$Jcd3.UH87TQ87BXXJso6reFYFHJtZWvrqZy4fdb5ggH', '1234@gmail.com'),
(7, 'zxc', '$2y$10$ZYGkY5pO4fTWzHmpMXSbxeu/Y/yF43mCUONg8Y5N.kP', 'zxc@gmail.com');

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
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
