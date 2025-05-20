# When player is hurt
advancement revoke @s only uhcp:entity_actions/hurt

# Armaments
execute if items entity @s armor.chest *[minecraft:custom_data~{uhcp_armaments:0b}] at @s run function uhcp:armaments/bone_cage/hurt
execute if items entity @s armor.head *[minecraft:custom_data~{uhcp_armaments:1b}] at @s run function uhcp:armaments/kalyxs_thorns/hurt

# Augments
execute as @s[scores={uhcp_augment=110,uhcp_aug_tier=1}] run function uhcp:augments/effects/silver/prophunt/reset
