$execute store success score @s ssiege_unlocked_runesmith run clear @s nether_star[custom_name="Soul Shard"] $(cost)
execute if score @s ssiege_unlocked_runesmith matches 0 run return run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"Soul Shards","color":"light_purple"},{"text":" for the ","color":"red"},{"text":"Rune of Strength","color":"yellow"},{"text":" (need ","color":"red"},{"score":{"name":"@s","objective":"ssiege_rune_strength_cost"},"color":"red"},{"text":").","color":"red"}]

function ssiege:shop/runes/effects/update_strength