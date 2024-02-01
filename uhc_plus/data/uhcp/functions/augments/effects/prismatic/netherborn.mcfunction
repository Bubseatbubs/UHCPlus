effect give @s fire_resistance infinite 0
give @s diamond_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:unbreaking",lvl:3s}]}
give @s diamond_axe
give @s diamond_shovel
give @s diamond_sword
give @s diamond_hoe
give @s shield
give @s crimson_stem 32
give @s oak_boat 2
give @s cooked_beef 12
give @s lava_bucket 2
give @s iron_helmet
give @s iron_chestplate
give @s iron_leggings
give @s iron_boots

# Teleport player to the_nether
execute in minecraft:the_nether if score TotalWorldSize setting matches 1000 run spreadplayers 0 0 100 400 under 127 false @s
execute in minecraft:the_nether if score TotalWorldSize setting matches 1500 run spreadplayers 0 0 100 700 under 127 false @s
execute in minecraft:the_nether if score TotalWorldSize setting matches 2000 run spreadplayers 0 0 100 900 under 127 false @s
execute in minecraft:the_nether if score TotalWorldSize setting matches 2500 run spreadplayers 0 0 100 1200 under 127 false @s
execute in minecraft:the_nether if score TotalWorldSize setting matches 3000 run spreadplayers 0 0 100 1400 under 127 false @s
execute in minecraft:the_nether if score TotalWorldSize setting matches 4000 run spreadplayers 0 0 100 1900 under 127 false @s
execute in minecraft:the_nether if score TotalWorldSize setting matches 5000 run spreadplayers 0 0 100 2400 under 127 false @s
execute in minecraft:the_nether if score TotalWorldSize setting matches 7000 run spreadplayers 0 0 100 3400 under 127 false @s
execute in minecraft:the_nether if score TotalWorldSize setting matches 10000 run spreadplayers 0 0 100 4900 under 127 false @s