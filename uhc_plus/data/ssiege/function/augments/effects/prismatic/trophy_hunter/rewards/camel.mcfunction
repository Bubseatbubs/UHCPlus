tag @s add TH_Camel
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"[Trophy Hunter]","bold":true,"color":"aqua"},{"text":" The "},{"text":"Camel","color":"yellow"},{"text":" gave you "},{"text":"2 Absorption 🖤","color":"yellow"},{"text":" every time you return to your spawn","color":"yellow"},{"text":"!"}]