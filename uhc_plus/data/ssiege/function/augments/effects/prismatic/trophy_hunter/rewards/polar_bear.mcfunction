attribute @s minecraft:max_health modifier add uhcp:max_health 4 add_value
effect give @s instant_health 1 0 true
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"[Trophy Hunter]","bold":true,"color":"aqua"},{"text":" The "},{"text":"Polar Bear","color":"yellow"},{"text":" gave you"},{"text":" 2 Max 🖤","color":"yellow"},{"text":"!"}]