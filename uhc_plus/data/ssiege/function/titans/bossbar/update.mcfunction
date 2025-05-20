tag @s[tag=!UHCP_TitanHealthVisible] add UHCP_TitanHealthVisible 
execute store result storage uhcp:id player.id short 1 run scoreboard players get @s uhcp_id
function uhcp:titans/bossbar/macro_update with storage uhcp:id player
