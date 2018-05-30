CREATE TABLE IF NOT EXISTS `user` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`name` varchar(255) NOT NULL,
`description` varchar(255) NOT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `event` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`user_id` int(10) unsigned NOT NULL,
`type` varchar(20) NOT NULL, -- working, break, home
`event_at` DATETIME NOT NULL, -- время события
PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

INSERT INTO `event` (`id`, `user_id`, `type`, `event_at`) VALUES
(1, 1, 'working', '2017-01-10 10:08:00'),
(2, 2, 'working', '2017-01-10 10:23:00'),
(4, 2, 'break', '2017-01-10 11:38:00'),
(5, 1, 'break', '2017-01-10 11:39:00'),
(6, 1, 'working', '2017-01-10 11:54:00'),
(7, 2, 'working', '2017-01-10 11:54:00'),
(8, 3, 'working', '2017-01-10 16:53:00'),
(9, 1, 'break', '2017-01-10 13:02:00'),
(10, 2, 'break', '2017-01-10 13:02:00'),
(11, 1, 'working', '2017-01-10 15:48:00'),
(12, 1, 'break', '2017-01-10 15:32:00'),
(13, 3, 'break', '2017-01-10 19:08:00'),
(14, 3, 'working', '2017-01-10 21:30:00'),
(15, 1, 'home', '2017-01-10 19:29:00'),
(16, 2, 'home', '2017-01-10 19:46:00'),
(17, 3, 'home', '2017-01-11 01:14:00'),
(18, 3, 'working', '2017-01-09 23:37:00'),
(19, 3, 'home', '2017-01-10 00:53:00'),
(20, 2, 'working', '2017-01-10 14:22:00');

INSERT INTO `user` (`id`, `name`, `description`) VALUES
(1, 'Александр', 'Прекрасный сотрудник. Всегда радует коллег и начальство.'),
(2, 'Иван', 'Замечательный сотрудник. Прилежно относится к работе.'),
(3, 'Петр', 'Внимательный и чуткий собеседник. <b>"!"</b>');