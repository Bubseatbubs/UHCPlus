scoreboard players add @s uhcp_aug_count 1

execute unless score @s uhcp_aug_count matches 80.. run return fail
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:cobweb
kill @s
