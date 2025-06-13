execute store result score @s ssiege_unlocked_runesmith run clear @s minecraft:copper_block 8

execute if score @s ssiege_unlocked_runesmith matches 8 run scoreboard players add @s ssiege_multi 1
execute if score @s ssiege_unlocked_runesmith matches 8 run return run function ssiege:shop/runes/sell/copper/trade

execute store result storage ssiege:temp refund int 1 run scoreboard players get @s ssiege_unlocked_runesmith
function ssiege:shop/runes/sell/copper/refund with storage ssiege:temp
function ssiege:shop/runes/sell/copper/finalize