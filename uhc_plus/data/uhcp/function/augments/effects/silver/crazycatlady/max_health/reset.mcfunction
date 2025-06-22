# Remove temporary max health modifier
execute if score %time uhcp_game_time > @s uhcp_game_time run return run function uhcp:augments/effects/silver/crazycatlady/max_health/time
attribute @s minecraft:max_health modifier remove uhcp:max_health
scoreboard players operation @s uhcp_game_time = @s uhcp_aug_time
tag @s remove UHCP_CLHeal
