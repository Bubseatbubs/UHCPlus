execute store result score %cost ssiege_unlocked_runesmith run data get storage ssiege:temp shop.cost 1
execute store result storage ssiege:temp shop.refund int 1 run scoreboard players get @s ssiege_unlocked_runesmith
execute if score @s ssiege_unlocked_runesmith < %cost ssiege_unlocked_runesmith run function ssiege:shop/perks/purchase/bank_check
execute if score @s ssiege_unlocked_runesmith < %cost ssiege_unlocked_runesmith run return run function ssiege:shop/perks/purchase/refund with storage ssiege:temp shop
return 1