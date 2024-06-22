scoreboard players add @s uhcp_aug_count 1
execute unless block ~ ~ ~ minecraft:fire run kill @s

execute if score @s uhcp_aug_count matches 200.. run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:fire
kill @s[scores={uhcp_aug_count=200..}]
