tellraw @s {"text":"Your Iron Will's Invulnerability duration is almost over!","color":"red"}
execute at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

execute if score @s uhcp_game_time >= @s uhcp_aug_time run function uhcp:augments/effects/silver/ironwill/clear
execute unless score @s uhcp_game_time matches ..-1 run scoreboard players operation @s uhcp_game_time = @s uhcp_aug_time
scoreboard players reset @s uhcp_aug_time
execute if score %time uhcp_game_time >= @s[scores={uhcp_game_time=0..}] uhcp_game_time run function uhcp:augments/effects/timed
