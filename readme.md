<p align="center">
    <img width="140" src="https://icons.iconarchive.com/icons/iconarchive/red-orb-alphabet/128/Letter-M-icon.png" />  
    <h1 align="center">Hi 👋, I'm MaDHouSe</h1>
    <h3 align="center">A passionate allround developer </h3>    
</p>

<p align="center">
  <a href="https://github.com/MaDHouSe79/mh-walkstyle/issues">
    <img src="https://img.shields.io/github/issues/MaDHouSe79/mh-walkstyle"/> 
  </a>
  <a href="https://github.com/MaDHouSe79/mh-walkstyle/watchers">
    <img src="https://img.shields.io/github/watchers/MaDHouSe79/mh-walkstyle"/> 
  </a> 
  <a href="https://github.com/MaDHouSe79/mh-walkstyle/network/members">
    <img src="https://img.shields.io/github/forks/MaDHouSe79/mh-walkstyle"/> 
  </a>  
  <a href="https://github.com/MaDHouSe79/mh-walkstyle/stargazers">
    <img src="https://img.shields.io/github/stars/MaDHouSe79/mh-walkstyle?color=white"/> 
  </a>
  <a href="https://github.com/MaDHouSe79/mh-walkstyle/blob/main/LICENSE">
    <img src="https://img.shields.io/github/license/MaDHouSe79/mh-walkstyle?color=black"/> 
  </a>      
</p>

<p align="center">
  <img alig src="https://github-profile-trophy.vercel.app/?username=MaDHouSe79&margin-w=15&column=6" />
</p>

## 🙈 Youtube
- [Youtube](https://www.youtube.com/@MaDHouSe79) for videos

# mh-walkstyle (QB/ESX/Standalone)
- Press [END] ro save your walk style, when you reconnect to the server you get this walkstyle automaticly.

# Dependencies
- [oxmysql](https://github.com/overextended/oxmysql/releases/tag/v1.9.3)
- [ox_lib](https://github.com/overextended/ox_lib/releases/)

### Screenshot
![foto](https://raw.githubusercontent.com/MaDHouSe79/mh-walkstyle/main/screenshots/Schermafbeelding%202024-05-01%20142805.png)
![foto](https://github.com/MaDHouSe79/mh-walkstyle/blob/main/screenshots/Schermafbeelding%202024-05-01%20142843.png)

# Database
```sql
CREATE TABLE IF NOT EXISTS `player_walkstyle` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `license` varchar(255) NOT NULL,
  `style` varchar(255) NOT NULL DEFAULT 'move_m@multiplayer',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
```

# LICENSE
[GPL LICENSE](./LICENSE)<br />
&copy; [MaDHouSe79](https://www.youtube.com/@MaDHouSe79)
