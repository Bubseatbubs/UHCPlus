# Gets the coords of a player

execute store result score @s ch_x run data get entity @s Pos[0]
execute store result score @s ch_y run data get entity @s Pos[1]
execute store result score @s ch_z run data get entity @s Pos[2]

execute if score @s ch_x matches ..0 run scoreboard players add @s ch_x 1
execute if score @s ch_z matches ..0 run scoreboard players add @s ch_z 1