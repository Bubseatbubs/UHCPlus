# Wasn't super sure how else to define 2 positions that are only tagged to each other - for example if two people on the same team have this augment
scoreboard objectives add ssiege_posx dummy
scoreboard objectives add ssiege_posy dummy
scoreboard objectives add ssiege_posz dummy
scoreboard objectives add ssiege_posx2 dummy
scoreboard objectives add ssiege_posy2 dummy
scoreboard objectives add ssiege_posz2 dummy
scoreboard objectives add uhcp_gate_time dummy

#Find Pos1 and store into scoreboard
execute store result score @s ssiege_posx run data get entity @s Pos[0]
execute store result score @s ssiege_posy run data get entity @s Pos[1]
execute store result score @s ssiege_posz run data get entity @s Pos[2]

# Find Pos2 and store into scoreboard
# Basically does the same thing as the laser, wasn't sure how to make it more efficient
scoreboard players set @s uhcp_initStatus 200
execute positioned ~ ~2.2 ~ rotated ~ -60 positioned ^ ^ ^ run function ssiege:augments/effects/gold/gates/portal/find_portal

# Sets own gametime 
scoreboard players operation @s uhcp_game_time = %time uhcp_game_time