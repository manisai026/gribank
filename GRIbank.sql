-- Active: 1677780075444@@localhost@3306@gribank
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
CREATE TABLE `customers` (
  `cid` int(11) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `cmail` varchar(30) NOT NULL,
  `abalance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `customers` (`cid`, `cname`, `cmail`, `abalance`) VALUES
(1, 'Mani Sai', 'manisai255@gmail.com', 6150),
(2, 'Varshith', 'varshith1819@gmail.com', 17456),
(3, 'Rajesh Kumar', 'rajeshkumar435@gmail.com', 8290),
(4, 'Sai Prasad', 'saiprasad1234@gmail.com', 1220),
(5, 'balaji Sharma', 'balajisharma2424@gmail.com', 5339),
(6, 'ajith verma', 'ajithverma24@gmail.com', 5557.2),
(7, 'vineethverma', 'vineethverma24@gmail.com', 4500),
(8, 'mani kanta', 'manikanta@gmail.com', 3590),
(9, 'nishith', 'nishithkunta07@gmail.com', 8400),
(10, 'willson', 'willsonbabu@gmail.com', 2079);


CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` varchar(30) NOT NULL,
  `receiver` varchar(30) NOT NULL,
  `amount` double NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `amount`, `datetime`) VALUES
(1, 'willson','nishith', 25, '2023-03-03 10:41:12'),
(2, 'balaji sharma', 'vineethverma', 20, '2023-03-03 10:40:15'),
(3, 'mani kanta', 'ajith verma', 200,'2023-03-03 10:39:02');

ALTER TABLE `customers`
  ADD PRIMARY KEY (`cid`);


ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);


ALTER TABLE `customers`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;


ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;
