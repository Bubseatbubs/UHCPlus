# Portal Gates Tick Function
# This function runs every tick for entities tagged UHCP_Summon and UHCP_Gate

# Age 0 (when marker uhcp_game_time = %time uhcp_game_time) - Play note block sound
execute as @s[scores={uhcp_game_time=0}] if score @s uhcp_game_time = %time uhcp_game_time run playsound minecraft:block.note_block.pling master @a[team=!,distance=..16] ~ ~ ~ 1 1

# Age 1 (when marker uhcp_game_time + 20 = %time uhcp_game_time) - Play note block sound 1 pitch higher
execute as @s if score %time uhcp_game_time matches 1.. run scoreboard players operation #temp uhcp_game_time = %time uhcp_game_time
execute as @s if score %time uhcp_game_time matches 1.. run scoreboard players operation #temp uhcp_game_time -= @s uhcp_game_time
execute as @s if score #temp uhcp_game_time matches 20 run playsound minecraft:block.note_block.pling master @a[team=!,distance=..16] ~ ~ ~ 1 1.12

# Age 2 (when marker uhcp_game_time + 40 = %time uhcp_game_time) - Play note block sound 2 pitch higher
execute as @s if score #temp uhcp_game_time matches 40 run playsound minecraft:block.note_block.pling master @a[team=!,distance=..16] ~ ~ ~ 1 1.26

# Age > 3 seconds (60 ticks) - Portal is active
execute as @s if score #temp uhcp_game_time matches 60.. run function ssiege:augments/effects/gold/gates/portal/portal_active

# Age 10, 11, 12 seconds - Play closing note block sounds
execute as @s if score #temp uhcp_game_time matches 200 run playsound minecraft:block.note_block.pling master @a[team=!,distance=..16] ~ ~ ~ 1 0.89
execute as @s if score #temp uhcp_game_time matches 220 run playsound minecraft:block.note_block.pling master @a[team=!,distance=..16] ~ ~ ~ 1 0.79
execute as @s if score #temp uhcp_game_time matches 240 run playsound minecraft:block.note_block.pling master @a[team=!,distance=..16] ~ ~ ~ 1 0.71

# Age 13 seconds - Summon explosion particle, play sound, delete marker
execute as @s if score #temp uhcp_game_time matches 260.. run particle minecraft:explosion ~ ~ ~ 0.5 0.5 0.5 0 5 force
execute as @s if score #temp uhcp_game_time matches 260.. run playsound minecraft:entity.generic.explode master @a[distance=..32] ~ ~ ~ 0.5 1.2
execute as @s if score #temp uhcp_game_time matches 260.. run kill @s