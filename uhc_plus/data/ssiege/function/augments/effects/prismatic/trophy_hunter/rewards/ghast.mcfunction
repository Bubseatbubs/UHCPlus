give @s potion[potion_contents={potion:"minecraft:strong_regeneration"}] 2
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"[Trophy Hunter]","bold":true,"color":"aqua"},{"text":" The "},{"text":"Ghast","color":"yellow"},{"text":" gave you "},{"text":"2 Regeneration II Potions","color":"yellow"},{"text":"!"}]