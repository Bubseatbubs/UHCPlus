scoreboard players operation @s uhcp_initStatus = %raw_gold uhcp_aug_count
scoreboard players operation @s uhcp_initStatus /= #64 uhcp_const
execute if score @s uhcp_initStatus matches 1.. run function uhcp:augments/effects/gold/plannedeconomy/raw/stack

scoreboard players operation %raw_gold uhcp_aug_count %= #64 uhcp_const
execute if score %raw_gold uhcp_aug_count matches 1.. run function uhcp:augments/effects/gold/plannedeconomy/raw/single
