# First half
execute if score @s uhcp_aug_sh_item3 matches 0..9 run return run function uhcp:augments/effects/gold/scavengerhunt/items/3/first_half

# Second half
execute if score @s uhcp_aug_sh_item3 matches 10 run return run execute if predicate uhcp:augments/scavenger_hunt/horse_armor run function uhcp:augments/effects/gold/scavengerhunt/items/3/horse_armor
execute if score @s uhcp_aug_sh_item3 matches 11 run return run execute if predicate uhcp:augments/scavenger_hunt/emerald_block run function uhcp:augments/effects/gold/scavengerhunt/items/3/emerald_block
execute if score @s uhcp_aug_sh_item3 matches 12 run return run execute if predicate uhcp:augments/scavenger_hunt/sculk_shrieker run function uhcp:augments/effects/gold/scavengerhunt/items/3/sculk_shrieker
execute if score @s uhcp_aug_sh_item3 matches 13 run return run execute if predicate uhcp:augments/scavenger_hunt/magma_cream run function uhcp:augments/effects/gold/scavengerhunt/items/3/magma_cream
execute if score @s uhcp_aug_sh_item3 matches 14 run return run execute if predicate uhcp:augments/scavenger_hunt/pumpkin_pie run function uhcp:augments/effects/gold/scavengerhunt/items/3/pumpkin_pie
execute if score @s uhcp_aug_sh_item3 matches 15 run return run execute if predicate uhcp:augments/scavenger_hunt/cake run function uhcp:augments/effects/gold/scavengerhunt/items/3/cake
execute if score @s uhcp_aug_sh_item3 matches 16 run return run execute if predicate uhcp:augments/scavenger_hunt/tnt_minecart run function uhcp:augments/effects/gold/scavengerhunt/items/3/tnt_minecart
execute if score @s uhcp_aug_sh_item3 matches 17 run return run execute if predicate uhcp:augments/scavenger_hunt/blue_ice run function uhcp:augments/effects/gold/scavengerhunt/items/3/blue_ice
execute if score @s uhcp_aug_sh_item3 matches 18 run return run execute if predicate uhcp:augments/scavenger_hunt/rabbit_hide run function uhcp:augments/effects/gold/scavengerhunt/items/3/rabbit_hide
execute if score @s uhcp_aug_sh_item3 matches 19 if predicate uhcp:augments/scavenger_hunt/bell run function uhcp:augments/effects/gold/scavengerhunt/items/3/bell
