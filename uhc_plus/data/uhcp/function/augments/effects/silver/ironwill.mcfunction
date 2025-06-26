# Calculate time to remove resistance (3 minute minimum)
scoreboard players operation @s uhcp_game_time = %pvp_retain uhcp_settings
execute if score @s uhcp_game_time matches ..3599 run scoreboard players set @s uhcp_game_time 3600
scoreboard players operation @s uhcp_aug_time = @s uhcp_game_time

# Grant resistance
scoreboard players operation @s uhcp_game_time -= %time uhcp_game_time
execute if score @s uhcp_game_time matches 1.. run function uhcp:augments/effects/silver/ironwill/resistance
scoreboard players operation @s uhcp_game_time = @s uhcp_aug_time

# Notification time
scoreboard players remove @s uhcp_game_time 1200
execute if score %time uhcp_game_time >= @s uhcp_game_time run function uhcp:augments/effects/silver/ironwill/determine
