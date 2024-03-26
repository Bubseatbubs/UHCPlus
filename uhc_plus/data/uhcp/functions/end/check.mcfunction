# Team score comparison
scoreboard players set %end uhcp_initStatus 1
tag @r[gamemode=survival] add UHCP_Compare
execute as @a[tag=!UHCP_Compare,gamemode=survival] unless score @s uhcp_team = @a[tag=UHCP_Compare,limit=1] uhcp_team run scoreboard players set %end uhcp_initStatus 0

execute if score %end uhcp_initStatus matches 1 run function uhcp:end/end

tag @a remove UHCP_Compare
scoreboard players set %end uhcp_game_time 20
