advancement revoke @s only ssiege:blue_shopkeeper_interact
execute store result score @s ssiege_unlocked_runesmith run clear @s diamond 0
execute if score @s ssiege_unlocked_runesmith matches 0 run return run tellraw @s {"text":"You have no Diamonds!","color":"dark_red"}
execute as @s run function ssiege:shop/perks/show_blue_perk_shop