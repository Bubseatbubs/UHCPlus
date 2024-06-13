
advancement revoke @s only uhcp:entity_actions/hurt

# Armaments
execute if items entity @s armor.chest *[minecraft:custom_data~{uhcp_armaments:0b}] at @s run function uhcp:armaments/bone_cage/hurt
execute if items entity @s armor.head *[minecraft:custom_data~{uhcp_armaments:1b}] at @s run function uhcp:armaments/kalyxs_thorns/hurt

# Augments
execute if score @s uhcp_augment matches 110 if score @s uhcp_aug_tier matches 1 run function uhcp:augments/effects/silver/prophunt/reset