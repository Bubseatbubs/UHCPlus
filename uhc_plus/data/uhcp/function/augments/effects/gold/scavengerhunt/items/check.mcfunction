execute if score @s uhcp_aug_tier matches 1 run return 0
scoreboard players reset %current_item uhcp_aug_count

execute as @s[tag=!UHCP_SHItem1] run function uhcp:augments/effects/gold/scavengerhunt/items/item_1
execute as @s[tag=!UHCP_SHItem2] run function uhcp:augments/effects/gold/scavengerhunt/items/item_2
execute as @s[tag=!UHCP_SHItem3] run function uhcp:augments/effects/gold/scavengerhunt/items/item_3
execute as @s[tag=!UHCP_SHItem4] run function uhcp:augments/effects/gold/scavengerhunt/items/item_4
execute as @s[tag=!UHCP_SHItem5] run function uhcp:augments/effects/gold/scavengerhunt/items/item_5
execute as @s[tag=!UHCP_SHItem6] run function uhcp:augments/effects/gold/scavengerhunt/items/item_6
execute as @s[tag=!UHCP_SHItem7] run function uhcp:augments/effects/gold/scavengerhunt/items/item_7

execute if score @s uhcp_aug_count matches 5.. run function uhcp:augments/effects/gold/scavengerhunt/reward

advancement revoke @s only uhcp:augments/scavenger_hunt
