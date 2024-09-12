CREATE DATABASE IF NOT EXISTS store;
USE store;

-- Drop tables if they already exist
DROP TABLE IF EXISTS `items`;
DROP TABLE IF EXISTS `users`;
DROP TABLE IF EXISTS `user_item`;

-- Create `items` table
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Create `users` table
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Create `user_item` table
CREATE TABLE `user_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` enum('Added to cart','Confirmed') NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Insert sample data into `users` table
INSERT INTO `users` (`id`, `name`, `email`, `password`, `contact`, `city`, `address`) VALUES
(1, 'Vishwa', 'vish@gmail.com', '708175b3fdb269c4ebe8e7751bb3fccd', '9283746352', 'Bengaluru', 'JP Nagar 2nd Phase'),
(2, 'Vishal', 'vishal@gmail.com', '72eea11febe23ae3dcab2bf59794c54c', '9120394750', 'Chennai', 'T Nagar');

-- Insert sample data into `items` table
INSERT INTO `items` (`id`, `name`, `price`) VALUES
(1, 'Item 1', 36000),
(2, 'Item 2', 40000),
(3, 'Item 3', 45000),
(4, 'Item 4', 50000),
(5, 'Item 5', 13000),
(6, 'Item 6', 3000),
(7, 'Item 7', 8000),
(8, 'Item 8', 18000),
(9, 'Item 9', 800),
(10, 'Item 10', 1000),
(11, 'Item 11', 1500),
(12, 'Item 12', 1300);

-- Insert sample data into `user_item` table with status 'Added to cart'
INSERT INTO `user_item` (`user_id`, `item_id`, `status`, `date_time`) VALUES
(1, 1, 'Added to cart', '2023-10-01 10:00:00'),
(1, 2, 'Added to cart', '2023-10-01 10:05:00'),
(1, 3, 'Added to cart', '2023-10-01 10:10:00'),
(1, 4, 'Added to cart', '2023-10-01 10:15:00'),
(1, 5, 'Added to cart', '2023-10-01 10:20:00'),
(1, 6, 'Added to cart', '2023-10-01 10:25:00'),
(1, 7, 'Added to cart', '2023-10-01 10:30:00'),
(1, 8, 'Added to cart', '2023-10-01 10:35:00'),
(1, 9, 'Added to cart', '2023-10-01 10:40:00'),
(1, 10, 'Added to cart', '2023-10-01 10:45:00'),
(1, 11, 'Added to cart', '2023-10-01 10:50:00'),
(1, 12, 'Added to cart', '2023-10-01 10:55:00'),
(2, 1, 'Added to cart', '2023-10-01 11:00:00'),
(2, 2, 'Added to cart', '2023-10-01 11:05:00'),
(2, 3, 'Added to cart', '2023-10-01 11:10:00'),
(2, 4, 'Added to cart', '2023-10-01 11:15:00'),
(2, 5, 'Added to cart', '2023-10-01 11:20:00'),
(2, 6, 'Added to cart', '2023-10-01 11:25:00'),
(2, 7, 'Added to cart', '2023-10-01 11:30:00'),
(2, 8, 'Added to cart', '2023-10-01 11:35:00'),
(2, 9, 'Added to cart', '2023-10-01 11:40:00'),
(2, 10, 'Added to cart', '2023-10-01 11:45:00'),
(2, 11, 'Added to cart', '2023-10-01 11:50:00'),
(2, 12, 'Added to cart', '2023-10-01 11:55:00');