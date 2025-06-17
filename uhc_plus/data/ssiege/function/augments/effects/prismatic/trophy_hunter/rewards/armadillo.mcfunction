attribute @s armor modifier add uhcp:armor 2 add_value
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"[Trophy Hunter]","bold":true,"color":"aqua"},{"text":" The "},{"text":"Armadillo","color":"yellow"},{"text":" gave you "},{"text":"+2 Armor","color":"yellow"},{"text":"!"}]