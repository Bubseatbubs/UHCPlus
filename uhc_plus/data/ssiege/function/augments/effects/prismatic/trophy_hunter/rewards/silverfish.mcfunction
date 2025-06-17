attribute @s scale modifier add uhcp:scale -0.15 add_value
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"[Trophy Hunter]","bold":true,"color":"aqua"},{"text":" The "},{"text":"Silverfish","color":"yellow"},{"text":" reduced your size by 15%","color":"yellow"},{"text":"!"}]