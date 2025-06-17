give @s potion[potion_contents={potion:"minecraft:swiftness"}] 1
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"[Trophy Hunter]","bold":true,"color":"aqua"},{"text":" The "},{"text":"Witch","color":"yellow"},{"text":" gave you a ","color":"white"},{"text":"Potion of Speed","color":"yellow"},{"text":"!"}]