tag @s add TH_Slime
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"[Trophy Hunter]","bold":true,"color":"aqua"},{"text":" The "},{"text":"Slime","color":"yellow"},{"text":" will make you ","color":"white"},{"text":"split into 2 large Slimes whenever you die","color":"yellow"},{"text":"!"}]