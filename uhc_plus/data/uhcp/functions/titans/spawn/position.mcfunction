execute in minecraft:overworld run spreadplayers 0 0 10 200 false @s
execute at @s run forceload add ~-6 ~-6 ~6 ~6
execute store result score @s uhcp_motion_x1 run data get entity @s Pos[0] 1
execute store result score @s uhcp_motion_y1 run data get entity @s Pos[1] 1
execute store result score @s uhcp_motion_z1 run data get entity @s Pos[2] 1
