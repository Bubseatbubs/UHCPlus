##
# Generate augment choices
##

tag @s add UHCP_GeneratingAugments
scoreboard players set @s uhcp_aug_choosingAugment 1
execute if score %tier uhcp_aug_tier matches 0 run return run function uhcp:augments/roll/silver
execute if score %tier uhcp_aug_tier matches 1 run return run function uhcp:augments/roll/gold
execute if score %tier uhcp_aug_tier matches 2 run return run function uhcp:augments/roll/prismatic

# End
tag @s remove UHCP_GeneratingAugments
scoreboard players set @s uhcp_aug_choosingAugment 0
