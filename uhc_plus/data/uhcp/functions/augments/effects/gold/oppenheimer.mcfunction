give @s minecraft:tnt 15
give @s minecraft:redstone 64
give @s minecraft:flint_and_steel
give @s minecraft:rail 6
execute unless biome ~ ~-1 ~ #uhcp:snowy run item replace entity @s armor.feet with minecraft:diamond_boots[minecraft:enchantments={levels:{"minecraft:blast_protection":4}}]
execute if biome ~ ~-1 ~ #uhcp:snowy run give @s minecraft:diamond_boots[minecraft:enchantments={levels:{"minecraft:blast_protection":4}}] 1

give @s minecraft:minecart 6
