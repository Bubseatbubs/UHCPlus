advancement revoke @s only uhcp:augments/scavenger_hunt
execute if score @s uhcp_aug_tier matches 1 run return 0
scoreboard players reset @s uhcp_aug_count

function uhcp:augments/effects/gold/scavengerhunt/items/item_1
function uhcp:augments/effects/gold/scavengerhunt/items/item_2
function uhcp:augments/effects/gold/scavengerhunt/items/item_3
function uhcp:augments/effects/gold/scavengerhunt/items/item_4
function uhcp:augments/effects/gold/scavengerhunt/items/item_5

execute if score @s uhcp_aug_count matches 5.. run function uhcp:augments/effects/gold/scavengerhunt/reward