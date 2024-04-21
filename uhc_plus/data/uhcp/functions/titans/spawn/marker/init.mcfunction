tag @s add UHCP_TitanSpawn
execute store result score @s uhcp_titans_count run random value 1..11

execute if score @s uhcp_titans_count matches 11 store result score %random uhcp_titans_count 0..1
execute if score %random uhcp_titans_count matches 0 store result score @s uhcp_titans_count run random value 1..11

function uhcp:titans/spawn/marker/spread with storage uhcp:titan_radius radius
execute at @s run forceload add ~-6 ~-6 ~6 ~6
execute store result score @s uhcp_motion_x1 run data get entity @s Pos[0] 1
execute store result score @s uhcp_motion_y1 run data get entity @s Pos[1] 1
execute store result score @s uhcp_motion_z1 run data get entity @s Pos[2] 1
execute at @s run function uhcp:titans/spawn/marker/finish