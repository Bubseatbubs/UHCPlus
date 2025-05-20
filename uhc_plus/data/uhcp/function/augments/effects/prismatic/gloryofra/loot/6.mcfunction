# 5 of Ra's Gaze
execute store result score @s uhcp_lava_currentLayers run loot give @s loot uhcp:augments/ra/6
execute unless score @s uhcp_lava_currentLayers matches 5 run function uhcp:augments/effects/prismatic/gloryofra/loot/ras_gaze

give @s minecraft:enchanted_golden_apple
tellraw @s [{"text":"Ra blesses you with his might!","color":"gold"},{"text":" Use the","color":"gray"},{"text":" Ra's Gaze","color":"gold","bold":true},{"text":" item to call upon his power!","color":"gray"},{"text":" Additionally, you gained an ","color":"gray"},{"text":"Enchanted Golden Apple","color":"light_purple","bold":true},{"text":".","color":"gray"}]
