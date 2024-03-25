item replace entity @s armor.head with diamond_helmet
item replace entity @s armor.head with diamond_chestplate
item replace entity @s armor.head with diamond_leggings
execute unless biome ~ ~-1 ~ #uhcp:snowy run item replace entity @s armor.feet with diamond_boots
execute if biome ~ ~-1 ~ #uhcp:snowy run give @s diamond_boots 1
