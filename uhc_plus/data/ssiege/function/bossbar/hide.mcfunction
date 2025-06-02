tag @s remove SSIEGE_SnifferHealthVisible 
execute store result storage uhcp:id player.id short 1 run scoreboard players get @s uhcp_id
function ssiege:bossbar/macro_hide with storage uhcp:id player