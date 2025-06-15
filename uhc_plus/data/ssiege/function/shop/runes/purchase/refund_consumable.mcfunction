tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"Soul Shards","color":"light_purple"},{"text":" for that!","color":"red"}]
$scoreboard players set @s ssiege_multi $(refund)
loot give @s loot ssiege:multi_soulshard