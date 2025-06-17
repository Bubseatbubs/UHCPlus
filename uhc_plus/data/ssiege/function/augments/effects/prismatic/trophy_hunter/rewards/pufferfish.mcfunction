give @s lingering_potion[potion_contents={potion:"minecraft:poison"}] 2
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2 1
tellraw @s ["",{"text":"[Trophy Hunter]","bold":true,"color":"aqua"},{"text":" The "},{"text":"Pufferfish","color":"yellow"},{"text":" gave you"},{"text":" 2 Lingering Poison Potions","color":"yellow"},{"text":"!"}]