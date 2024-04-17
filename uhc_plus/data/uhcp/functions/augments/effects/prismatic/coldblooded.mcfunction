execute unless biome ~ ~-1 ~ #uhcp:snowy run item replace entity @s armor.feet with diamond_boots[enchantments={levels:{"minecraft:frost_walker":2,"minecraft:unbreaking":3}},trim={material:"minecraft:diamond",pattern:"minecraft:vex",show_in_tooltip:false}]
execute if biome ~ ~-1 ~ #uhcp:snowy run give @s diamond_boots[enchantments={levels:{"minecraft:frost_walker":2,"minecraft:unbreaking":3}},trim={material:"minecraft:diamond",pattern:"minecraft:vex",show_in_tooltip:false}] 1
give @s ice 64
