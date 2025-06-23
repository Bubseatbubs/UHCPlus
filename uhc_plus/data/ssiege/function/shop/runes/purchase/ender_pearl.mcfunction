execute store result score @s ssiege_unlocked_runesmith run clear @s nether_star[custom_data={ssiege_soulshard:true}] 8

data merge storage ssiege:temp {shop.cost:8}
execute store result score %success uhcp_initStatus run function ssiege:shop/runes/purchase/check_enough_consumable
execute if score %success uhcp_initStatus matches 0 run return fail

give @s ender_pearl 1

tellraw @s ["",{"text":"You purchased an "},{"text":"Ender Pearl","color":"yellow"},{"text":"!"}]
function ssiege:shop/runes/show_consumable_shop