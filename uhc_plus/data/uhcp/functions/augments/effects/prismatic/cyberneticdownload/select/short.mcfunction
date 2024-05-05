scoreboard players operation @s uhcp_aug_cd_upgrade = @s uhcp_aug_cd_firstOption
scoreboard players operation @s uhcp_game_time = %time uhcp_game_time
scoreboard players add @s uhcp_game_time 6000
tellraw @s [{"text":"Downloading new upgrade... Please wait","color":"gray"},{"text":" 5 minutes","color":"aqua","bold":true},{"text":".","color":"gray"}]