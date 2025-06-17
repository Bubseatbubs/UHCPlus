give @s gold_ingot 40
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"[Trophy Hunter]","bold":true,"color":"aqua"},{"text":" The "},{"text":"Piglin","color":"yellow"},{"text":" gave you"},{"text":" 40 Gold Ingots","color":"yellow"},{"text":"!"}]