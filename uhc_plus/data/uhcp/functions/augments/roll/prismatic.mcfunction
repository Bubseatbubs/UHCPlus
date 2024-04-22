tag @s add UHCP_GeneratingAugments
# Roll prismatic augments
loot replace entity @s hotbar.3 loot uhcp:augments/prismatic
loot replace entity @s hotbar.4 loot uhcp:augments/prismatic
loot replace entity @s hotbar.5 loot uhcp:augments/prismatic

# Roll Reroll augments
loot replace entity @s container.30 loot uhcp:augments/prismatic
loot replace entity @s container.31 loot uhcp:augments/prismatic
loot replace entity @s container.32 loot uhcp:augments/prismatic

# Add Patron Augment if Hera is selected
execute if score @s uhcp_aug_patron matches 8 run loot replace entity @s hotbar.7 loot uhcp:augments/prismatic

# Store rerolled augments onto an armor stand
execute in uhcp:main positioned 0 32 0 summon chest_minecart run function uhcp:augments/roll/store
tag @s remove UHCP_GeneratingAugments