scoreboard players add @s uhcp_aug_count 1
execute unless block ~ ~ ~ cobweb run kill @s

execute if score @s uhcp_aug_count matches 40.. run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace cobweb
execute if score @s uhcp_aug_count matches 40.. run kill @s