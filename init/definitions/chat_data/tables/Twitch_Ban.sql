CREATE TABLE IF NOT EXISTS `chat_data`.`Twitch_Ban` (
  `ID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `User_Alias` INT(10) UNSIGNED NOT NULL,
  `Channel` INT(10) UNSIGNED NOT NULL,
  `Length` INT(10) UNSIGNED DEFAULT NULL,
  `Issued` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `Notes` TEXT DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_Twitch_Ban_User_Alias` (`User_Alias`),
  KEY `FK_Twitch_Ban_Channel` (`Channel`),
  KEY `Issued` (`Issued`),
  CONSTRAINT `FK_Twitch_Ban_Channel` FOREIGN KEY (`Channel`) REFERENCES `Channel` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Twitch_Ban_User_Alias` FOREIGN KEY (`User_Alias`) REFERENCES `User_Alias` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;