execute if entity @s[predicate=uhcp:top/hurt] at @s run function uhcp:top/cancel
scoreboard players add @s uhcp_top_charge 1
particle glow ~ ~ ~ 0.5 0.5 0.5 1 10 normal
execute store result bossbar uhcp:top_charge value run scoreboard players get @s uhcp_top_charge
execute if score @s uhcp_top_charge matches 60.. at @s run function uhcp:top/teleport
