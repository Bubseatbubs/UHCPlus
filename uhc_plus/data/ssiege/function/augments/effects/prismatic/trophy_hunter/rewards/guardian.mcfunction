give @s book[enchantments={"minecraft:thorns":3}] 1
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"[Trophy Hunter]","bold":true,"color":"aqua"},{"text":" The "},{"text":"Guardian","color":"yellow"},{"text":" gave you a "},{"text":"Thorns III Book","color":"yellow"},{"text":"!"}]