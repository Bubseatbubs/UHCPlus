give @s diamond 24
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"[Trophy Hunter]","bold":true,"color":"aqua"},{"text":" The "},{"text":"Goat","color":"yellow"},{"text":" gave you "},{"text":"24 Diamonds","color":"yellow"},{"text":"!"}]