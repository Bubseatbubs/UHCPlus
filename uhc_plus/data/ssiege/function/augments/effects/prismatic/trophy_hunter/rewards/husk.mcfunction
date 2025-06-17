tag @s add TH_Husk
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"[Trophy Hunter]","bold":true,"color":"aqua"},{"text":" The "},{"text":"Husk","color":"yellow"},{"text":" made your attacks "},{"text":"apply Hunger on-hit","color":"yellow"},{"text":"!"}]