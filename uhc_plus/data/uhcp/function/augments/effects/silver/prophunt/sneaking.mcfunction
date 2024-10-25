scoreboard players add @s uhcp_aug_count 1
execute if score @s uhcp_aug_count matches 20 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1 1
execute if score @s uhcp_aug_count matches 40 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1 1

execute unless score @s uhcp_aug_count matches 60.. run return 0
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2 1
execute unless score @s uhcp_aug_tier matches 1 run return run function uhcp:augments/effects/silver/prophunt/transform
function uhcp:augments/effects/silver/prophunt/reset
