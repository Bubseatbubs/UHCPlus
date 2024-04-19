tag @s add UHCP_InfernusFireball
tag @s add UHCP_Summon
data merge entity @s {Motion:[0.0,0.25,0.0]}
execute at @s run scoreboard players operation @s uhcp_id = @e[tag=UHCP_Infernus,sort=nearest,limit=1] uhcp_id
scoreboard players set %motion uhcp_motion_x1 -100
scoreboard players set %motion uhcp_motion_z1 -100
execute store result score %motion uhcp_motion_x2 run random value 0..200
execute store result score %motion uhcp_motion_z2 run random value 0..200
execute store result entity @s Motion[0] double 0.01 run scoreboard players operation %motion uhcp_motion_x1 += %motion uhcp_motion_x2
execute store result entity @s Motion[2] double 0.01 run scoreboard players operation %motion uhcp_motion_z1 += %motion uhcp_motion_z2