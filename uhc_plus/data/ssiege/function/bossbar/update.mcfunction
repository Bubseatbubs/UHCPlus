tag @s[tag=!SSIEGE_SnifferHealthVisible] add SSIEGE_SnifferHealthVisible
execute store result storage uhcp:id player.id short 1 run scoreboard players get @s uhcp_id
function ssiege:bossbar/macro_update with storage uhcp:id player
