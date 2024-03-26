execute if entity @p[distance=..16] run scoreboard players add @s uhcp_timer 1

execute unless block ~ ~ ~ chiseled_deepslate run function uhcp:titans/gigantus/graves/delete
execute if block ~ ~-1 ~ air run function uhcp:titans/gigantus/graves/delete

execute if score @s uhcp_timer matches 150 at @s run function uhcp:titans/gigantus/graves/summon
execute if score @s uhcp_timer matches 150.. run scoreboard players reset @s uhcp_timer