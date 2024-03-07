# Ran once the countdown ends
effect clear @s
effect give @s minecraft:speed 15 0 false
effect give @s minecraft:resistance 120 4 false
attribute @s minecraft:player.block_break_speed modifier add 4329681b-2b41-4dc1-8b3a-4a5ebae3c1ce "" 1.2 add_multiplied_total

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

execute at @s run function uhcp:augments/effects/init
execute at @s run function uhcp:augments/announce
