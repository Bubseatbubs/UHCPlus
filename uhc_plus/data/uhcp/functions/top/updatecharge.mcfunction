execute if entity @s[predicate=uhcp:top/hurt] at @s run function uhcp:top/cancel
scoreboard players add @s uhcp_topCharge 1
particle glow ~ ~ ~ 0.5 0.5 0.5 1 10 normal
execute store result bossbar uhcp_topcharge value run scoreboard players get @s uhcp_topCharge
execute if score @s uhcp_topCharge matches 60.. at @s run function uhcp:top/teleport
