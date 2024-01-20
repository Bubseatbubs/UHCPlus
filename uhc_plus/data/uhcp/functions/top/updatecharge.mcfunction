scoreboard players add @s uhcp_topCD 1
execute store result bossbar uhcp_topcd value run scoreboard players get @s uhcp_topCD
execute if score @s uhcp_topCD matches 60.. at @s run function uhcp:top/teleport
