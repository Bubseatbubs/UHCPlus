give @s minecraft:iron_pickaxe[minecraft:enchantments={levels:{"minecraft:efficiency":1,"minecraft:unbreaking":3}}]
give @s minecraft:iron_shovel[minecraft:enchantments={levels:{"minecraft:efficiency":1,"minecraft:unbreaking":3}}]
give @s minecraft:iron_axe[minecraft:enchantments={levels:{"minecraft:efficiency":1,"minecraft:unbreaking":3}}]
give @s minecraft:oak_sign 32
give @s minecraft:piston 12
give @s minecraft:sticky_piston 12
give @s minecraft:pointed_dripstone 12
give @s minecraft:observer 12
give @s minecraft:cobweb 6
give @s minecraft:tnt 10
give @s minecraft:redstone_block 64
give @s minecraft:stone 64
give @s minecraft:dirt 64
give @s minecraft:sand 64
give @s minecraft:gravel 64
give @s minecraft:sculk_sensor 1
item replace entity @s weapon.offhand with minecraft:shield
item replace entity @s armor.head with minecraft:iron_helmet
item replace entity @s armor.chest with minecraft:iron_chestplate
item replace entity @s armor.legs with minecraft:iron_leggings
execute store success score @s uhcp_initStatus run spreadplayers 0 0 0 50 false @s
tp @s[scores={uhcp_initStatus=0}] 0 300 0
execute unless biome ~ ~-1 ~ #uhcp:snowy run return run item replace entity @s armor.feet with minecraft:iron_boots
give @s minecraft:iron_boots 1
