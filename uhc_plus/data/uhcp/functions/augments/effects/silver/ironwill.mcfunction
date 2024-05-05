effect give @s minecraft:resistance infinite 4 false

scoreboard players operation @s uhcp_game_time = %pvp uhcp_settings
scoreboard players operation @s uhcp_aug_time = @s uhcp_game_time
scoreboard players remove @s uhcp_game_time 1200
execute if score @s uhcp_game_time matches ..-1 run scoreboard players set @s uhcp_game_time 0
