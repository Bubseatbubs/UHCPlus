give @s trident[enchantments={"minecraft:loyalty":3}] 1
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"[Trophy Hunter]","bold":true,"color":"aqua"},{"text":" The "},{"text":"Drowned","color":"yellow"},{"text":" gave you a "},{"text":"Loyalty III Triden","color":"yellow"},{"text":"!"}]