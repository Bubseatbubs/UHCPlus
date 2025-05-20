execute unless entity @e[tag=UHCP_TopCheck,distance=..1] run function uhcp:top/cancel
execute at @s[predicate=uhcp:top/hurt] run function uhcp:top/cancel
scoreboard players add @s uhcp_top_charge 1
particle minecraft:glow ~ ~ ~ 0.5 0.5 0.5 1 10 normal
execute store result bossbar uhcp:top_charge value run scoreboard players get @s uhcp_top_charge
execute at @s[scores={uhcp_top_charge=60..}] run function uhcp:top/teleport
