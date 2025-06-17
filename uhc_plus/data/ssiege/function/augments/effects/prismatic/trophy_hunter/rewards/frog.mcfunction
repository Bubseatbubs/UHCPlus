attribute @s safe_fall_distance modifier add uhcp:safe_fall_distance 10 add_value
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"[Trophy Hunter]","bold":true,"color":"aqua"},{"text":" The "},{"text":"Frog","color":"yellow"},{"text":" increased "},{"text":"your safe fall distance by 10","color":"yellow"},{"text":"!"}]