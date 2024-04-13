# Ran once the countdown ends
# Give player Snow Boots if in Snowy Biome
execute if biome ~ ~-1 ~ #uhcp:snowy run loot replace entity @s armor.feet loot uhcp:snow_boots

execute if entity @a[scores={uhcp_augment=25}] run function uhcp:augments/effects/gold/scavengerhunt/init
execute at @s run function uhcp:augments/effects/init
execute at @s run function uhcp:augments/announce
