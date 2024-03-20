scoreboard players add @s uhcp_a_count 1
execute unless block ~ ~ ~ cobweb run kill @s

execute if score @s uhcp_a_count matches 20.. run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace cobweb
execute if score @s uhcp_a_count matches 20.. run kill @s