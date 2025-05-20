execute store result score @s uhcp_lava_currentLayers run loot give @s loot uhcp:augments/ra/2
execute unless score @s uhcp_lava_currentLayers matches 2 run function uhcp:augments/effects/prismatic/gloryofra/loot/radiant_relic

give @s minecraft:enchanted_golden_apple 1
tellraw @s [{"text":"Ra's blesses you with his Relics!","color":"gold"},{"text":" You've received ","color":"gray"},{"text":"2 Radiant Relics","color":"light_purple","bold":true},{"text":" and an ","color":"gray"},{"text":"Enchanted Golden Apple","color":"light_purple","bold":true},{"text":".","color":"gray"}]
