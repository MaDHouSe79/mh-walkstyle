
CREATE TABLE IF NOT EXISTS `player_walkstyle` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `license` varchar(255) NOT NULL,
  `walkstyle` varchar(255) NOT NULL DEFAULT 'move_m@multiplayer',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;