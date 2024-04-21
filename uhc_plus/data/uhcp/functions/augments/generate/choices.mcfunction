##
# Generate augment choices
##

scoreboard players set @s uhcp_aug_choosingAugment 1
execute if score %tier uhcp_aug_tier matches 0 run function uhcp:augments/roll/silver
execute if score %tier uhcp_aug_tier matches 1 run function uhcp:augments/roll/gold
execute if score %tier uhcp_aug_tier matches 2 run function uhcp:augments/roll/prismatic
scoreboard players set @s uhcp_aug_choosingAugment 0

execute if score %augment_reroll uhcp_itemInv matches 1 run function uhcp:augments/generate/choices
