give @s lingering_potion[potion_contents={potion:"minecraft:weakness"}] 1
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"[Trophy Hunter]","bold":true,"color":"aqua"},{"text":" The "},{"text":"Zombie Villager","color":"yellow"},{"text":" gave you a ","color":"white"},{"text":"Splash Potion of Weakness","color":"yellow"},{"text":"!"}]