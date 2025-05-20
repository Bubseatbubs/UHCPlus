tag @s add UHCP_TritonTridentHitbox
tag @s add UHCP_Summon
data merge entity @s {Motion:[0.0d,1.0d,0.0d],pickup:0b,crit:1b}
scoreboard players set %motion uhcp_motion_x1 -50
scoreboard players set %motion uhcp_motion_z1 -50
execute store result score %motion uhcp_motion_x2 run random value 0..100
execute store result score %motion uhcp_motion_z2 run random value 0..100
execute store result entity @s Motion[0] double 0.01 run scoreboard players operation %motion uhcp_motion_x1 += %motion uhcp_motion_x2
execute store result entity @s Motion[2] double 0.01 run scoreboard players operation %motion uhcp_motion_z1 += %motion uhcp_motion_z2
