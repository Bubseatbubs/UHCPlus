give @s minecraft:water_bucket 2
give @s minecraft:lava_bucket 2
give @s minecraft:obsidian 4
give @s minecraft:potion[minecraft:potion_contents={"potion":"minecraft:long_fire_resistance"}] 1
execute unless biome ~ ~-1 ~ #uhcp:snowy run item replace entity @s armor.feet with diamond_boots[enchantments={levels:{"minecraft:depth_strider":2}},trim={material:"minecraft:redstone",pattern:"minecraft:coast",show_in_tooltip:0b}]
execute if biome ~ ~-1 ~ #uhcp:snowy run give @s diamond_boots[enchantments={levels:{"minecraft:depth_strider":2}},trim={material:"minecraft:redstone",pattern:"minecraft:coast",show_in_tooltip:0b}] 1
