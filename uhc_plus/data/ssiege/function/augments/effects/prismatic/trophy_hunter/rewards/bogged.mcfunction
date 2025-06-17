give @s bow[enchantments={"minecraft:power":1}] 1
give @s tipped_arrow[potion_contents={potion:"minecraft:poison"}] 12
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"[Trophy Hunter]","bold":true,"color":"aqua"},{"text":" The "},{"text":"Bogged","color":"yellow"},{"text":" gave you a "},{"text":"Bow and Poison Arrows","color":"yellow"},{"text":"!"}]