##
# Gives player the augment they selected
# When the ID returns 0, that means the augment does nothing at the start of the game
##

# Augment tiers
execute if score @s uhcp_augment matches 300..499 run function ssiege:augments/effects/init/gold
execute if score @s uhcp_augment matches 500..699 run function ssiege:augments/effects/init/prismatic

# Universal effects
scoreboard players reset @s uhcp_aug_stack
particle minecraft:totem_of_undying ~ ~ ~ 0.5 0.5 0.5 0.25 100 normal
