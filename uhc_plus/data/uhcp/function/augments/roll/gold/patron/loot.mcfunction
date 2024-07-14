# Generate loot
execute if score @s uhcp_aug_patron matches 8 run return run function uhcp:augments/roll/gold/patron/roll
scoreboard players set @s uhcp_aug_choosingAugment 0
loot replace entity @s container.3 loot uhcp:augments/patron/gold
