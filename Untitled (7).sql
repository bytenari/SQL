CREATE TABLE `user` (
  `id` INT,
  `name` varchar(255),
  `email` varchar(255),
  `roleid` int
);

CREATE TABLE `content` (
  `id` int,
  `title` varchar(255),
  `body` varchar(255),
  `created_at` timestamp,
  `userid` int
);

CREATE TABLE `content_category` (
  `id` int,
  `contentid` int,
  `categoryid` int
);

CREATE TABLE `category` (
  `id` int PRIMARY KEY,
  `name` varchar(255)
);

CREATE TABLE `role` (
  `id` int,
  `name` varchar(255)
);

ALTER TABLE `user` ADD FOREIGN KEY (`roleid`) REFERENCES `role` (`id`);

ALTER TABLE `user` ADD FOREIGN KEY (`id`) REFERENCES `content` (`userid`);

ALTER TABLE `content` ADD FOREIGN KEY (`id`) REFERENCES `content_category` (`contentid`);

ALTER TABLE `content_category` ADD FOREIGN KEY (`categoryid`) REFERENCES `category` (`id`);
