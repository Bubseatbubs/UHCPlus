loot give @s loot uhcp:consumables/relic_invoker
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"[Trophy Hunter]","bold":true,"color":"aqua"},{"text":" The "},{"text":"Piglin Brute","color":"yellow"},{"text":" gave you"},{"text":" a ","color":"white"},{"text":"Relic Invoker","color":"yellow"},{"text":"!"}]