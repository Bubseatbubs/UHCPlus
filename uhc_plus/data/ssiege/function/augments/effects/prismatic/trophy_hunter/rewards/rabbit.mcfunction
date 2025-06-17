tag @s add TH_Rabbit
effect give @s jump_boost infinite 1 true
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"[Trophy Hunter]","bold":true,"color":"aqua"},{"text":" The "},{"text":"Rabbit","color":"yellow"},{"text":" gave you"},{"text":" permanent Jump Boost II","color":"yellow"},{"text":"!"}]