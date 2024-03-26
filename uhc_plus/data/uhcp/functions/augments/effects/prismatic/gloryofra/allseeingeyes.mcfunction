loot give @s loot uhcp:consumables/all-seeing_eye
scoreboard players remove %eyes uhcp_aug_count 1
execute if score %eyes uhcp_aug_count matches 1.. run function uhcp:augments/effects/prismatic/gloryofra/allseeingeyes
