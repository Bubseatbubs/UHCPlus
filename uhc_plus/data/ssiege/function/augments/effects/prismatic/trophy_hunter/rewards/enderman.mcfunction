give @s ender_pearl 3
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"[Trophy Hunter]","bold":true,"color":"aqua"},{"text":" The "},{"text":"Enderman","color":"yellow"},{"text":" gave you "},{"text":"3 Ender Pearls","color":"yellow"},{"text":"!"}]