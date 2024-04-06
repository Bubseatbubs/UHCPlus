scoreboard players set %motion uhcp_motion_x1 -15
scoreboard players set %motion uhcp_motion_z1 -15
execute store result score %motion uhcp_motion_x2 run random value 0..30
execute store result score %motion uhcp_motion_z2 run random value 0..30
execute store result entity @s Motion[0] double 0.01 run scoreboard players operation %motion uhcp_motion_x1 += %motion uhcp_motion_x2
execute store result entity @s Motion[2] double 0.01 run scoreboard players operation %motion uhcp_motion_z1 += %motion uhcp_motion_z2
data modify entity @s Owner set from entity @p[tag=UHCP_CurrentBoneCage] UUID
tag @s remove UHCP_BoneCageBone