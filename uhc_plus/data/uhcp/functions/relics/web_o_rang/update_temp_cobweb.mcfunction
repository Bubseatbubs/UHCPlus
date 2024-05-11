scoreboard players add @s uhcp_aug_count 1
execute unless block ~ ~ ~ cobweb run kill @s

execute if score @s uhcp_aug_count matches 80.. run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:cobweb
execute if score @s uhcp_aug_count matches 80.. run kill @s