attribute @s step_height modifier add uhcp:step_height 1.4 add_value
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"[Trophy Hunter]","bold":true,"color":"aqua"},{"text":" The "},{"text":"Strider","color":"yellow"},{"text":" gave you ","color":"white"},{"text":"increased step height","color":"yellow"},{"text":"!"}]