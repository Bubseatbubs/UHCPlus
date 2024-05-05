effect give @s minecraft:fire_resistance infinite 0 false
item replace entity @s container.0 with minecraft:diamond_pickaxe[minecraft:enchantments={levels:{"minecraft:efficiency":1,"minecraft:unbreaking":3}}]
item replace entity @s container.1 with minecraft:diamond_axe
item replace entity @s container.2 with minecraft:diamond_shovel
item replace entity @s container.3 with minecraft:diamond_sword
item replace entity @s container.4 with minecraft:diamond_hoe
item replace entity @s weapon.offhand with minecraft:shield
item replace entity @s container.5 with minecraft:crimson_stem 32
item replace entity @s container.6 with minecraft:oak_boat 2
item replace entity @s container.7 with minecraft:cooked_beef 12
item replace entity @s container.8 with minecraft:lava_bucket 2
item replace entity @s armor.head with minecraft:diamond_helmet
item replace entity @s armor.chest with minecraft:diamond_chestplate
item replace entity @s armor.legs with minecraft:diamond_leggings

# Always replace the snow boots with augment's boots
item replace entity @s armor.feet with minecraft:diamond_boots

# Teleport player to the Nether
execute store success score %nether_spread uhcp_initStatus at @s in minecraft:the_nether run spreadplayers ~ ~ 0 1 under 127 false @s
execute if score %nether_spread uhcp_initStatus matches 0 at @s in minecraft:the_nether run function uhcp:augments/effects/prismatic/netherborn/fail

scoreboard players set @s uhcp_game_time 24000
