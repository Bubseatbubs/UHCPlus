execute store success score @s ssiege_unlocked_runesmith run clear @s nether_star[custom_data={ssiege_soulshard:true}] 1

execute if score @s ssiege_unlocked_runesmith matches 0 run return run tellraw @s ["",{"text":"You don't have any ","color":"red"},{"text":"Soul Shards","color":"light_purple"},{"text":"!","color":"red"}]

give @s wind_charge 5

tellraw @s ["",{"text":"You purchased 5 "},{"text":"Wind Charges","color":"yellow"},{"text":"!"}]