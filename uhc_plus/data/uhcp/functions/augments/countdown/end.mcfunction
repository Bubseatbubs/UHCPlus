# Ran once the countdown ends
effect clear @s
effect give @s speed 15 0 false
effect give @s resistance 120 4 false
effect give @s haste infinite 0 true

# Boots Effect (from UHC Pack)
execute if biome ~ ~ ~ minecraft:snowy_beach run item replace entity @s[gamemode=survival] armor.feet with minecraft:leather_boots
execute if biome ~ ~ ~ minecraft:snowy_plains run item replace entity @s[gamemode=survival] armor.feet with minecraft:leather_boots
execute if biome ~ ~ ~ minecraft:snowy_slopes run item replace entity @s[gamemode=survival] armor.feet with minecraft:leather_boots
execute if biome ~ ~ ~ minecraft:snowy_taiga run item replace entity @s[gamemode=survival] armor.feet with minecraft:leather_boots
execute if biome ~ ~ ~ minecraft:frozen_peaks run item replace entity @s[gamemode=survival] armor.feet with minecraft:leather_boots
execute if biome ~ ~ ~ minecraft:frozen_ocean run item replace entity @s[gamemode=survival] armor.feet with minecraft:leather_boots
execute if biome ~ ~ ~ minecraft:frozen_river run item replace entity @s[gamemode=survival] armor.feet with minecraft:leather_boots
execute if biome ~ ~ ~ minecraft:ice_spikes run item replace entity @s[gamemode=survival] armor.feet with minecraft:leather_boots
execute if biome ~ ~ ~ minecraft:grove run item replace entity @s[gamemode=survival] armor.feet with minecraft:leather_boots
execute if biome ~ ~ ~ minecraft:jagged_peaks run item replace entity @s[gamemode=survival] armor.feet with minecraft:leather_boots
execute run execute if block ~ ~-1 ~ minecraft:powder_snow run setblock ~ ~-1 ~ minecraft:snow_block

execute at @s run function uhcp:augments/initializeaugments
execute at @s run function uhcp:augments/announceaugments