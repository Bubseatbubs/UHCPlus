execute if entity @p[distance=..16] run scoreboard players add @s uhcp_timer 1

execute unless block ~ ~ ~ minecraft:chiseled_deepslate run function uhcp:titans/gigantus/graves/delete
execute if block ~ ~-1 ~ #minecraft:air run function uhcp:titans/gigantus/graves/delete

execute at @s[scores={uhcp_timer=150}] run function uhcp:titans/gigantus/graves/summon
scoreboard players reset @s[scores={uhcp_timer=150..}] uhcp_timer
