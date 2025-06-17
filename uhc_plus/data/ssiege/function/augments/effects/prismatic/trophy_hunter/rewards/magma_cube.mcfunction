tag @s add TH_MagmaCube
effect give @s fire_resistance infinite 0 true
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"[Trophy Hunter]","bold":true,"color":"aqua"},{"text":" The "},{"text":"Magma Cube","color":"yellow"},{"text":" gave you "},{"text":"permanent Fire Resistance","color":"yellow"},{"text":"!"}]