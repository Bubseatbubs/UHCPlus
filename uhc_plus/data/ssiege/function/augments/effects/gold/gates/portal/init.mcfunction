# Remnants of team system
#execute as @s[team=red] rotated as @s run summon marker ~ ~ ~ {Tags:["UHCP_Summon","UHCP_Gate","UHCP_NewGate","UHCP_TeamRed"]}
#execute as @s[team=blue] rotated as @s run summon marker ~ ~ ~ {Tags:["UHCP_Summon","UHCP_Gate","UHCP_NewGate","UHCP_TeamBlue"]}

scoreboard players operation @s uhcp_game_time = %time uhcp_game_time
scoreboard players add @s uhcp_game_time 4800
execute if score @s uhcp_augment matches 341 run scoreboard players add @s uhcp_game_time 1200
execute if score @s uhcp_augment matches 563 run effect give @s speed 60 0 true

summon marker ~ ~ ~ {Tags:["UHCP_Summon","UHCP_Gate","UHCP_NewGate"]}

# Tried to rotate it multiple times same as player not sure why the rotational context didn't work for marker until the @p
execute as @e[tag=UHCP_NewGate,limit=1,sort=nearest] at @s rotated as @p run function ssiege:augments/effects/gold/gates/portal/find_coords

execute as @e[tag=UHCP_NewGate] run tag @s remove UHCP_NewGate

scoreboard players set @s uhcp_gate_time 0