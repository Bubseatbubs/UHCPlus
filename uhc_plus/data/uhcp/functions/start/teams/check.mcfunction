# Check if only one team is playing
scoreboard players set %end uhcp_initStatus 1
tag @r[tag=!UHCP_Spectator] add UHCP_Compare
execute as @a[tag=!UHCP_Spectator,tag=!UHCP_Compare] unless score @s uhcp_team = @a[tag=UHCP_Compare,limit=1] uhcp_team run scoreboard players set %end uhcp_initStatus 0
