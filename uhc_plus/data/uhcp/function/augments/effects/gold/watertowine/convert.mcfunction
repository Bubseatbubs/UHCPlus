execute store result score @s uhcp_lava_currentLayers run loot give @s loot uhcp:augments/watertowine
execute if score @s uhcp_lava_currentLayers matches 0 run function uhcp:augments/effects/gold/watertowine/loot

scoreboard players remove @s uhcp_initStatus 1
execute unless score @s uhcp_initStatus matches 0 run function uhcp:augments/effects/gold/watertowine/convert
