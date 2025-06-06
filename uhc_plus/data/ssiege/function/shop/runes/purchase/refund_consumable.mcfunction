tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"Soul Shards","color":"light_purple"},{"text":" for the ","color":"red"},{"text":"consumable","color":"yellow"},{"text":"!","color":"white"}]
$scoreboard players set @s ssiege_drop_shards $(refund)
loot give @s loot ssiege:multi_soulshard