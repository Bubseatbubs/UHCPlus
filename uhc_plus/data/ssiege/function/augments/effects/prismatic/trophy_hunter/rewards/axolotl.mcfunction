give @s book[enchantments={"minecraft:depth_strider":2}] 1
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"[Trophy Hunter]","bold":true,"color":"aqua"},{"text":" The "},{"text":"Axolotl","color":"yellow"},{"text":" gave you a "},{"text":"Depth Strider II Book","color":"yellow"},{"text":"!"}]