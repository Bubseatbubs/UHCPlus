execute store result score @s uhcp_lava_currentLayers run loot give @s loot uhcp:augments/ra/2
execute unless score @s uhcp_lava_currentLayers matches 2 run function uhcp:augments/effects/prismatic/gloryofra/loot/radiant_relic

tellraw @s ["You've gained 2 ",{"text":"Radiant Relics","bold":true,"color":"light_purple"}," from your ",{"text":"Radiant Blessing","bold":true,"color":"aqua"},"!"]
