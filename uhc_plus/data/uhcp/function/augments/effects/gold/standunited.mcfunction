# Assign Team Scoreboards
scoreboard players set @a uhcp_initStatus 0
execute as @a[gamemode=survival] run scoreboard players operation @s uhcp_initStatus = @s uhcp_team

tag @s add UHCP_StandUnited
execute as @a[distance=..4,scores={uhcp_initStatus=1..}] if score @s uhcp_initStatus = @p[tag=UHCP_StandUnited,scores={uhcp_initStatus=1..}] uhcp_initStatus run effect give @p[tag=UHCP_StandUnited,scores={uhcp_initStatus=1..}] minecraft:strength 1 0 false
tag @s remove UHCP_StandUnited
