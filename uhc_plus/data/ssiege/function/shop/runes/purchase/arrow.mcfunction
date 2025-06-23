execute store result score @s ssiege_unlocked_runesmith run clear @s nether_star[custom_data={ssiege_soulshard:true}] 1

execute if score @s ssiege_unlocked_runesmith matches ..0 run scoreboard players set %cost ssiege_unlocked_runesmith 1
execute if score @s ssiege_unlocked_runesmith matches ..0 run function ssiege:shop/runes/purchase/bank_check
execute if score @s ssiege_unlocked_runesmith matches ..0 run execute store result storage ssiege:temp shop.refund int 1 run scoreboard players get @s ssiege_unlocked_runesmith
execute if score @s ssiege_unlocked_runesmith matches ..0 run return run function ssiege:shop/runes/purchase/refund_consumable with storage ssiege:temp shop

give @s arrow 12

tellraw @s ["",{"text":"You purchased an "},{"text":"Arrow Pack","color":"yellow"},{"text":"!"}]
function ssiege:shop/runes/show_consumable_shop