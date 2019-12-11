DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS post;

CREATE TABLE user (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL
);

CREATE TABLE post (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  author_id INTEGER NOT NULL,
  created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  title TEXT NOT NULL,
  body TEXT NOT NULL,
  FOREIGN KEY (author_id) REFERENCES user (id)
);

CREATE TABLE `wm01_ddc_geolocations` (
  `location` varchar(13) NOT NULL,
  `x_coord` int(11) NOT NULL DEFAULT '0',
  `y_coord` int(11) NOT NULL DEFAULT '0',
  `z_coord` int(11) NOT NULL DEFAULT '0',
  `orientation` int(2) NOT NULL DEFAULT '4',
  PRIMARY KEY (`location`),
  KEY `x_coord` (`x_coord`),
  KEY `y_coord` (`y_coord`),
  KEY `z_coord` (`z_coord`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `wm01_ddc_location_stats` (
	`location` varchar(13) NOT NULL,
	`task_date`  datetime  NOT NULL DEFAULT '0000-00-00 00:00:00',
	`task`  int(11) NOT NULL DEFAULT '0',
	`task_count`  int(11) NOT NULL DEFAULT '0',
	`task_quantity`  int(11) NOT NULL DEFAULT '0',
	PRIMARY KEY (`location`, `task_date`, `task`),
	KEY `task_date` (`task_date`),
	KEY `task` (`task`)) 
ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE `wm01_ddc_location_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_type` varchar(10) NOT NULL,
  `description` varchar(100) NOT NULL,
  `length` int(11) NOT NULL DEFAULT '0',
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `volume` int(11) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `location_type` (`location_type`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;