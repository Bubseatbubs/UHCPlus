# Assign team scoreboards
scoreboard players set @e[distance=..4] uhcp_initStatus -1
scoreboard players set @e[distance=..4,type=!#uhcp:inanimate_mobs] uhcp_initStatus 0
execute as @a[distance=..4,gamemode=adventure] run scoreboard players operation @s uhcp_initStatus = @s uhcp_team
scoreboard players set @s[scores={uhcp_initStatus=0}] uhcp_initStatus -1

# Push entities
execute as @e[distance=..3,scores={uhcp_initStatus=0..}] unless score @s uhcp_initStatus = @p[tag=UHCP_Init] uhcp_initStatus at @s run tp @s ~ ~5 ~
