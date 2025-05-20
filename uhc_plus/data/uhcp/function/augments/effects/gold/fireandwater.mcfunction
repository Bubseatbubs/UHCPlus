give @s minecraft:water_bucket 2
give @s minecraft:lava_bucket 2
give @s minecraft:obsidian 4
give @s minecraft:potion[minecraft:potion_contents={"potion":"minecraft:long_fire_resistance"}] 1
execute unless biome ~ ~-1 ~ #uhcp:snowy run return run item replace entity @s armor.feet with minecraft:diamond_boots[minecraft:enchantments={"minecraft:depth_strider":2},minecraft:trim={material:"minecraft:redstone",pattern:"minecraft:coast"},minecraft:tooltip_display={hidden_components:["minecraft:trim"]}]
give @s minecraft:diamond_boots[minecraft:enchantments={"minecraft:depth_strider":2},minecraft:trim={material:"minecraft:redstone",pattern:"minecraft:coast"},minecraft:tooltip_display={hidden_components:["minecraft:trim"]}] 1
