# NOT PERFECT WHATSOEVER. Just a moderate improvement on the other datapack

execute store result score @s uhcp_aug_count run execute if blocks ~-1 ~-1 ~-1 ~1 ~1 ~1 ~-1 ~-1 ~-1 masked
execute if score @s uhcp_aug_count matches 1.. on origin run effect give @s minecraft:resistance 1 6 true
