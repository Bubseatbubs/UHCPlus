advancement revoke @s only uhcp:augments/scavenger_hunt
execute if score @s uhcp_aug_tier matches 1 run return 0

execute unless entity @s[tag=UHCP_SHItem1] run function uhcp:augments/effects/gold/scavengerhunt/items/item_1
execute unless entity @s[tag=UHCP_SHItem2] run function uhcp:augments/effects/gold/scavengerhunt/items/item_2
execute unless entity @s[tag=UHCP_SHItem3] run function uhcp:augments/effects/gold/scavengerhunt/items/item_3
execute unless entity @s[tag=UHCP_SHItem4] run function uhcp:augments/effects/gold/scavengerhunt/items/item_4
execute unless entity @s[tag=UHCP_SHItem5] run function uhcp:augments/effects/gold/scavengerhunt/items/item_5

execute if score @s uhcp_aug_count matches 5.. run function uhcp:augments/effects/gold/scavengerhunt/reward