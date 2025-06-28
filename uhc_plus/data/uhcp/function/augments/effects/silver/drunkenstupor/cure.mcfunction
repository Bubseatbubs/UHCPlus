# Reward
execute if score @s uhcp_game_time matches 3600 run return run function uhcp:augments/effects/silver/drunkenstupor/reward

# Clear effects afterward
effect clear @s minecraft:strength
effect clear @s minecraft:resistance
tellraw @a {"text":"Effects have worn off.","color":"red"}
execute at @s run playsound minecraft:block.conduit.deactivate master @s ~ ~ ~ 1 1 1

scoreboard players set @s uhcp_game_time -1
