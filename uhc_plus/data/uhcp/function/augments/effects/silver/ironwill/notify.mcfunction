# Notification
tellraw @s {"text":"Iron Will's invulnerability duration is almost over!","color":"red"}
execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1.5 1

# Time until resistance clears
scoreboard players operation @s uhcp_game_time = @s uhcp_aug_time
scoreboard players reset @s uhcp_aug_time

# Clear resistance
execute if score %time uhcp_game_time >= @s uhcp_game_time run function uhcp:augments/effects/silver/ironwill/determine
