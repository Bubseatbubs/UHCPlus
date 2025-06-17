# Portal Gates Tick Function
# This function runs every tick for entities tagged UHCP_Summon and UHCP_Gate, called from entity/update

# Calculates how long marker has been alive
execute as @s if score %time uhcp_game_time matches 0.. run scoreboard players operation @s uhcp_initStatus = %time uhcp_game_time
execute as @s if score %time uhcp_game_time matches 0.. run scoreboard players operation @s uhcp_initStatus -= @s uhcp_game_time

execute as @s if score @s uhcp_initStatus matches 1 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1.5
execute as @s if score @s uhcp_initStatus matches 21 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1.7
execute as @s if score @s uhcp_initStatus matches 41 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1.9

# Age > 3 seconds (60 ticks) - Portal is active
execute as @s if score @s uhcp_initStatus matches 60 run playsound block.respawn_anchor.charge master @a ~ ~ ~ 1
execute as @s if score @s uhcp_initStatus matches 61.. run function ssiege:augments/effects/gold/gates/portal/portal_active

# Age 30, 31, 32 seconds - Play closing note block sounds
execute as @s if score @s uhcp_initStatus matches 600 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1.9
execute as @s if score @s uhcp_initStatus matches 620 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1.7
execute as @s if score @s uhcp_initStatus matches 640 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1.5

# Age 33 seconds - Summon explosion particle, play sound, delete marker
execute as @s if score @s uhcp_initStatus matches 661.. run kill @s
execute as @s if score @s uhcp_initStatus matches 660.. run particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0 5 force
execute as @s if score @s uhcp_initStatus matches 660.. run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.5 1.2


