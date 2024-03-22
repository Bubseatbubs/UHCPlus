execute in minecraft:overworld run spreadplayers 0 0 10 200 false @s
execute at @s run forceload add ~-5 ~-5 ~5 ~5
execute store result score @s uhcp_motion_x1 run data get entity @e[tag=UHCP_TitanSpawn,limit=1,sort=nearest] Pos[0] 1
execute store result score @s uhcp_motion_y1 run data get entity @e[tag=UHCP_TitanSpawn,limit=1,sort=nearest] Pos[1] 1
execute store result score @s uhcp_motion_z1 run data get entity @e[tag=UHCP_TitanSpawn,limit=1,sort=nearest] Pos[2] 1