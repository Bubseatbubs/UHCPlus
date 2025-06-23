execute store result score @s ssiege_unlocked_runesmith run clear @s nether_star[custom_data={ssiege_soulshard:true}] 24

data merge storage ssiege:temp {shop.cost:24}
execute store result score %success uhcp_initStatus run function ssiege:shop/runes/purchase/check_enough_consumable
execute if score %success uhcp_initStatus matches 0 run return fail

give @s netherite_ingot 1
give @s netherite_upgrade_smithing_template 1

tellraw @s ["",{"text":"You purchased 1 "},{"text":"Netherite Ingot and Upgrade Template","color":"yellow"},{"text":"!"}]
function ssiege:shop/runes/show_consumable_shop