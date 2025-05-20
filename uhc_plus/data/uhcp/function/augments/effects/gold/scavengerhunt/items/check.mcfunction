execute as @s[tag=!UHCP_SHItem1] run function uhcp:augments/effects/gold/scavengerhunt/items/1/item
execute as @s[tag=!UHCP_SHItem2] run function uhcp:augments/effects/gold/scavengerhunt/items/2/item
execute as @s[tag=!UHCP_SHItem3] run function uhcp:augments/effects/gold/scavengerhunt/items/3/item
execute as @s[tag=!UHCP_SHItem4] run function uhcp:augments/effects/gold/scavengerhunt/items/4/item
execute as @s[tag=!UHCP_SHItem5] run function uhcp:augments/effects/gold/scavengerhunt/items/5/item
execute as @s[tag=!UHCP_SHItem6] run function uhcp:augments/effects/gold/scavengerhunt/items/6/item
execute as @s[tag=!UHCP_SHItem7] run function uhcp:augments/effects/gold/scavengerhunt/items/7/item

execute if score @s uhcp_aug_count matches 5.. run function uhcp:augments/effects/gold/scavengerhunt/reward
advancement revoke @s only uhcp:augments/scavenger_hunt/check
