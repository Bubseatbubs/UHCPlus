give @s minecraft:tnt 15
give @s minecraft:redstone 64
give @s minecraft:flint_and_steel
give @s minecraft:rail 6
give @s minecraft:minecart 6
execute unless biome ~ ~-1 ~ #uhcp:snowy run return run item replace entity @s armor.feet with minecraft:diamond_boots[minecraft:enchantments={"minecraft:blast_protection":4}]
give @s minecraft:diamond_boots[minecraft:enchantments={"minecraft:blast_protection":4}] 1
