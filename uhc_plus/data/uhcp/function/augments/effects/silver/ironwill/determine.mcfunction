# Notify player
execute if score @s uhcp_aug_time matches 0.. run return run function uhcp:augments/effects/silver/ironwill/notify

# Clear resistance
effect clear @s minecraft:resistance
tellraw @a {"text":"Resistance has worn off.","color":"red"}
execute at @s run playsound minecraft:block.conduit.deactivate master @s ~ ~ ~ 1 1 1

scoreboard players set @s uhcp_game_time -1
