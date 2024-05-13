scoreboard players operation @s uhcp_arrowCount = %gold_nugget uhcp_aug_count
scoreboard players operation @s uhcp_arrowCount /= @s uhcp_initStatus
execute if score @s uhcp_arrowCount matches 1.. run function uhcp:augments/effects/gold/plannedeconomy/nugget/stack

scoreboard players operation %gold_nugget uhcp_aug_count %= @s uhcp_initStatus
execute if score %gold_nugget uhcp_aug_count matches 1.. run function uhcp:augments/effects/gold/plannedeconomy/nugget/single
