$tellraw @s ["",{"text":"You don't have enough ","color":"dark_red"},{"text":"Soul Shards","color":"light_purple"},{"text":" for that ","color":"dark_red"},{"text":"Rune","color":"yellow"},{"text":"!","color":"white"},{"text":" (need $(cost))","color":"dark_red"}]
$scoreboard players set @s ssiege_multi $(refund)
loot give @s loot ssiege:multi_soulshard
return 0