# Multiply healing by number of minutes passed
scoreboard players set @s uhcp_aug_count 1
scoreboard players operation @s uhcp_aug_time = %time uhcp_game_time
scoreboard players operation @s uhcp_aug_time /= #1200 uhcp_const
scoreboard players operation @s uhcp_game_time /= #1200 uhcp_const
scoreboard players add @s uhcp_aug_time 1
scoreboard players operation @s uhcp_aug_time -= @s uhcp_game_time
scoreboard players operation @s uhcp_aug_count += @s uhcp_aug_time
scoreboard players operation @s uhcp_game_time += @s uhcp_aug_time
scoreboard players operation @s uhcp_game_time *= #1200 uhcp_const
scoreboard players operation @s uhcp_initStatus *= @s uhcp_aug_count
