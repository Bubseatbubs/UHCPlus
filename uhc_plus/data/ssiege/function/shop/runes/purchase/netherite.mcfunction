execute store result score @s ssiege_unlocked_runesmith run clear @s nether_star[custom_data={ssiege_soulshard:true}] 24

execute if score @s ssiege_unlocked_runesmith matches ..23 run scoreboard players set %cost ssiege_unlocked_runesmith 24
execute if score @s ssiege_unlocked_runesmith matches ..23 run function ssiege:shop/runes/purchase/bank_check
execute if score @s ssiege_unlocked_runesmith matches ..23 run execute store result storage ssiege:temp shop.refund int 1 run scoreboard players get @s ssiege_unlocked_runesmith
execute if score @s ssiege_unlocked_runesmith matches ..23 run return run function ssiege:shop/runes/purchase/refund_consumable with storage ssiege:temp shop

give @s netherite_ingot 1
give @s netherite_upgrade_smithing_template 1

tellraw @s ["",{"text":"You purchased 1 "},{"text":"Netherite Ingot and Upgrade Template","color":"yellow"},{"text":"!"}]
function ssiege:shop/runes/show_consumable_shop