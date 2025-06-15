# Portal Gates Tick Function
# This function runs every tick for entities tagged UHCP_Summon and UHCP_Gate

execute as @s if score %time uhcp_game_time matches 1.. run scoreboard players operation @s uhcp_initStatus = %time uhcp_game_time
execute as @s if score %time uhcp_game_time matches 1.. run scoreboard players operation @s uhcp_initStatus -= @s uhcp_game_time

execute as @s if score @s uhcp_initStatus matches 0 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1
execute as @s if score @s uhcp_initStatus matches 20 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1.12
execute as @s if score @s uhcp_initStatus matches 40 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1.26

# Age > 3 seconds (60 ticks) - Portal is active
execute as @s if score @s uhcp_initStatus matches 60.. run function ssiege:augments/effects/gold/gates/portal/portal_active

# Age 10, 11, 12 seconds - Play closing note block sounds
execute as @s if score @s uhcp_initStatus matches 200 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.89
execute as @s if score @s uhcp_initStatus matches 220 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.79
execute as @s if score @s uhcp_initStatus matches 240 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0.71

# Age 13 seconds - Summon explosion particle, play sound, delete marker
execute as @s if score @s uhcp_initStatus matches 260.. run particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0 5 force
execute as @s if score @s uhcp_initStatus matches 260.. run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.5 1.2
execute as @s if score @s uhcp_initStatus matches 260.. run kill @s