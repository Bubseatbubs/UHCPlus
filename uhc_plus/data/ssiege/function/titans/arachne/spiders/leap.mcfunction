execute store result score @s uhcp_motion_x1 run data get entity @s Pos[0] 1000
execute store result score @s uhcp_motion_y1 run data get entity @s Pos[1] 1000
execute store result score @s uhcp_motion_z1 run data get entity @s Pos[2] 1000

execute at @s facing entity @p[gamemode=survival] eyes run tp @s ^ ^0.01 ^0.01 ~ ~

execute store result score @s uhcp_motion_x2 run data get entity @s Pos[0] 1000
execute store result score @s uhcp_motion_y2 run data get entity @s Pos[1] 1000
execute store result score @s uhcp_motion_z2 run data get entity @s Pos[2] 1000

execute store result entity @s Motion[0] double 0.12 run scoreboard players operation @s uhcp_motion_x2 -= @s uhcp_motion_x1
execute store result entity @s Motion[1] double 0.09 run scoreboard players operation @s uhcp_motion_y2 -= @s uhcp_motion_y1
execute store result entity @s Motion[2] double 0.12 run scoreboard players operation @s uhcp_motion_z2 -= @s uhcp_motion_z1