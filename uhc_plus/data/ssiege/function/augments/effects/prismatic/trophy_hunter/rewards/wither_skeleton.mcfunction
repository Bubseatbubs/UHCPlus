scoreboard players set @s ssiege_multi 6
loot give @s loot ssiege:multi_soulshard
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"[Trophy Hunter]","bold":true,"color":"aqua"},{"text":" The "},{"text":"Wither Skeleton","color":"yellow"},{"text":" gave you a ","color":"white"},{"text":"6 Soul Shards","color":"yellow"},{"text":"!"}]