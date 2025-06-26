# Give gold ingot
scoreboard players set @s uhcp_leave 1000
give @s minecraft:gold_ingot 1

# Add time
scoreboard players add @s uhcp_game_time 4800
execute if score %time uhcp_game_time < @s uhcp_game_time run return run scoreboard players reset @s uhcp_leave

# Calculate additional gold
scoreboard players operation @s uhcp_aug_time = %time uhcp_game_time
scoreboard players operation @s uhcp_aug_time /= #4800 uhcp_const
scoreboard players operation @s uhcp_game_time /= #4800 uhcp_const
scoreboard players add @s uhcp_aug_time 1
scoreboard players operation @s uhcp_aug_time -= @s uhcp_game_time
scoreboard players operation @s uhcp_game_time += @s uhcp_aug_time
scoreboard players operation @s uhcp_game_time *= #4800 uhcp_const

execute store result storage uhcp:augments DripEcon.count int 1 run scoreboard players get @s uhcp_aug_time
function uhcp:augments/effects/gold/dripeconomyii/additional with storage uhcp:augments DripEcon
scoreboard players reset @s uhcp_leave
