execute store result score @s uhcp_lava_currentLayers run loot give @s loot uhcp:relics/soulflames_embrace
execute if score @s uhcp_lava_currentLayers matches 0 run function uhcp:augments/effects/prismatic/gloryofra/loot/soulflames_embrace

execute store result score @s uhcp_lava_currentLayers run loot give @s loot uhcp:relics/windfall
execute if score @s uhcp_lava_currentLayers matches 0 run function uhcp:augments/effects/prismatic/gloryofra/loot/windfall

give @s minecraft:golden_apple 30
tellraw @s [{"text":"Ra blesses you with his orchards!","color":"gold"},{"text":" You've received ","color":"gray"},{"text":"Soulflame's Embrace","color":"light_purple","bold":true},{"text":", ","color":"gray"},{"text":"Windfall","color":"light_purple","bold":true},{"text":", and ","color":"gray"},{"text":"30 Golden Apples","color":"light_purple","bold":true},{"text":".","color":"gray"}]
