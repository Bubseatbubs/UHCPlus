give @s totem_of_undying
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"[Trophy Hunter]","bold":true,"color":"aqua"},{"text":" The "},{"text":"Panda","color":"yellow"},{"text":" gave you"},{"text":" a ","color":"white"},{"text":"Totem of Undying","color":"yellow"},{"text":"!"}]