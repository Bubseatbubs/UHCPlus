item replace entity @s armor.head with minecraft:diamond_helmet
item replace entity @s armor.chest with minecraft:diamond_chestplate
item replace entity @s armor.legs with minecraft:diamond_leggings
execute unless biome ~ ~-1 ~ #uhcp:snowy run return run item replace entity @s armor.feet with minecraft:diamond_boots
give @s minecraft:diamond_boots 1
