loot give @s loot uhcp:player_compass
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"[Trophy Hunter]","bold":true,"color":"aqua"},{"text":" The "},{"text":"Ocelot","color":"yellow"},{"text":" gave you"},{"text":" a ","color":"white"},{"text":"Player Tracking Compass","color":"yellow"},{"text":"!"}]