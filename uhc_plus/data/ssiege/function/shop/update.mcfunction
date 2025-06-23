execute if score @s shop matches 1 run function ssiege:shop/perks/purchase/regen_cost
execute if score @s shop matches 2 run function ssiege:shop/perks/purchase/aura_cost
execute if score @s shop matches 3 run function ssiege:shop/perks/purchase/recall_cost
execute if score @s shop matches 4 run function ssiege:shop/perks/purchase/swimspeed_cost
execute if score @s shop matches 5 run function ssiege:shop/perks/purchase/featherfalling_cost
execute if score @s shop matches 6 run function ssiege:shop/perks/purchase/sonar_cost
execute if score @s shop matches 7 run function ssiege:shop/perks/purchase/titanslayer_cost
execute if score @s shop matches 8 run function ssiege:shop/perks/purchase/homeguard_cost

execute if score @s shop matches 9 run function ssiege:shop/runes/purchase/strength_cost
execute if score @s shop matches 10 run function ssiege:shop/runes/purchase/toughness_cost
execute if score @s shop matches 11 run function ssiege:shop/runes/purchase/swiftness_cost
execute if score @s shop matches 12 run function ssiege:shop/runes/purchase/golden_apple
execute if score @s shop matches 13 run function ssiege:shop/runes/purchase/bridge_ball
execute if score @s shop matches 14 run function ssiege:shop/runes/purchase/ender_pearl
execute if score @s shop matches 15 run function ssiege:shop/runes/purchase/netherite
execute if score @s shop matches 16 run function ssiege:shop/runes/purchase/arrow
execute if score @s shop matches 16 run function ssiege:shop/runes/purchase/royaljelly

execute if score @s shop matches 97 run function ssiege:shop/runes/show_rune_shop
execute if score @s shop matches 98 run function ssiege:shop/runes/show_consumable_shop
execute if score @s shop matches 99 run function ssiege:shop/runes/purchase/donate_shards
execute if score @s shop matches 100 run function ssiege:shop/perks/purchase/donate_diamonds
execute if score @s shop matches 101 run scoreboard players set @s ssiege_currently_shopping 0
scoreboard players set @s shop 0