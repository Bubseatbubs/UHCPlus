tag @s add UHCP_InfernusFireball
tag @s add UHCP_Summon
data modify entity @s Motion[1] set value 0.25d
execute at @s run scoreboard players operation @s uhcp_game_id = @n[tag=UHCP_Infernus] uhcp_game_id
scoreboard players set %motion uhcp_motion_x1 -100
scoreboard players set %motion uhcp_motion_z1 -100
execute store result score %motion uhcp_motion_x2 run random value 0..200
execute store result score %motion uhcp_motion_z2 run random value 0..200
execute store result entity @s Motion[0] double 0.01 run scoreboard players operation %motion uhcp_motion_x1 += %motion uhcp_motion_x2
execute store result entity @s Motion[2] double 0.01 run scoreboard players operation %motion uhcp_motion_z1 += %motion uhcp_motion_z2
