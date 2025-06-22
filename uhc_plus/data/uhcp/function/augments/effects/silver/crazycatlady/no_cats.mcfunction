# No owned cats were found
execute unless score @s uhcp_aug_count matches -1 run function uhcp:augments/effects/silver/crazycatlady/failure

# Set timed event to next minute mark
scoreboard players operation @s uhcp_game_time = %time uhcp_game_time
scoreboard players operation @s uhcp_game_time /= #1200 uhcp_const
scoreboard players add @s uhcp_game_time 1
scoreboard players operation @s uhcp_game_time *= #1200 uhcp_const
