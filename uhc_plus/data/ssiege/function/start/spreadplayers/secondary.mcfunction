# Secondary spread
scoreboard players set @a uhcp_initStatus 0
execute as @a[tag=!UHCP_Spectator,scores={uhcp_team=1..14}] run scoreboard players operation @s uhcp_initStatus = @s uhcp_team
execute if entity @a[scores={uhcp_initStatus=1..}] run function uhcp:start/spreadplayers/secondary/teams
