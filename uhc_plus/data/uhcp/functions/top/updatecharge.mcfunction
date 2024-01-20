execute if entity @s[predicate=uhcp:top/hurt] run function uhcp:top/cancel
scoreboard players add @s uhcp_topCD 1
particle glow ~ ~ ~ 0.5 0.5 0.5 1 10 normal
execute store result bossbar uhcp_topcd value run scoreboard players get @s uhcp_topCD
execute if score @s uhcp_topCD matches 60.. at @s run function uhcp:top/teleport

