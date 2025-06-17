give @s bow[enchantments={"minecraft:flame":1},damage=372,repair_cost=2147483647] 1
give @s arrow 12
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"[Trophy Hunter]","bold":true,"color":"aqua"},{"text":" The "},{"text":"Blaze","color":"yellow"},{"text":" gave you a "},{"text":"damaged Flame Bow","color":"yellow"},{"text":"!"}]