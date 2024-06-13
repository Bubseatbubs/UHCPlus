advancement revoke @s only uhcp:augments/late_game_specialist
execute store result score @s uhcp_aug_tier run xp query @s levels

execute if score @s uhcp_aug_tier matches ..24 run return 0

give @s minecraft:gold_ingot 32
scoreboard players set @s uhcp_aug_tier 100
