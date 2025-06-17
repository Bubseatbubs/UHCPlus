tag @s add TH_Fish
effect give @s conduit_power infinite 0 true
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"[Trophy Hunter]","bold":true,"color":"aqua"},{"text":" The "},{"text":"Tropical Fish","color":"yellow"},{"text":" gave you ","color":"white"},{"text":"permanent Conduit Power","color":"yellow"},{"text":"!"}]