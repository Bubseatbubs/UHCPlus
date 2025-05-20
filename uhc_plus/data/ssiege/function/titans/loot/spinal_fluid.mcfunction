# Attack on Titan loot
execute store result score @s uhcp_lava_currentLayers run loot give @s loot uhcp:consumables/titan_spinal_fluid
execute if score @s uhcp_lava_currentLayers matches 0 at @s run function uhcp:titans/loot/spinal_fluid_item
