effect give @s minecraft:fire_resistance infinite 0 false
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

# Teleport player to the Nether
execute store success score %uhcp_nBSpread uhcp_initStatus at @s in minecraft:the_nether run spreadplayers ~ ~ 0 1 under 127 false @s
execute if score %uhcp_nBSpread uhcp_initStatus matches 0 at @s in minecraft:the_nether run function uhcp:augments/effects/prismatic/netherborn/fail
