loot give @s loot uhcp:consumables/royal_jelly
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"[Trophy Hunter]","bold":true,"color":"aqua"},{"text":" The "},{"text":"Bee","color":"yellow"},{"text":" gave you a "},{"text":"Royal Jelly","color":"yellow"},{"text":"!"}]