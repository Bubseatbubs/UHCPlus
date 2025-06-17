give @s splash_potion[potion_contents={potion:"minecraft:long_slowness"}] 1
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"[Trophy Hunter]","bold":true,"color":"aqua"},{"text":" The "},{"text":"Stray","color":"yellow"},{"text":" gave you a ","color":"white"},{"text":"Splash Potion of Slowness","color":"yellow"},{"text":"!"}]