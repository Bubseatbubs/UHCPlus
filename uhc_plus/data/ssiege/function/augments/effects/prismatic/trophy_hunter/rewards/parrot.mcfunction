attribute @s gravity modifier add uhcp:gravity -.1 add_value
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"[Trophy Hunter]","bold":true,"color":"aqua"},{"text":" The "},{"text":"Parrot","color":"yellow"},{"text":" gave you"},{"text":" reduced gravity","color":"yellow"},{"text":"!"}]