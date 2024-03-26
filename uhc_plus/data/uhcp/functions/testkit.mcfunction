clear @s
give @s minecraft:diamond_sword[minecraft:enchantments={levels:{"minecraft:sharpness":3}}]
give @s minecraft:diamond_axe[minecraft:enchantments={levels:{"minecraft:sharpness":2}}]
give @s minecraft:water_bucket
give @s minecraft:lava_bucket
give @s minecraft:bow[minecraft:enchantments={levels:{"minecraft:sharpness":2}}]
give @s minecraft:cobweb 8
give @s minecraft:diamond_pickaxe[minecraft:enchantments={levels:{"minecraft:efficiency":1}}]
give @s minecraft:cobblestone 64
give @s minecraft:golden_apple 12
give @s arrow 12

attribute @s generic.max_health base set 40

effect give @s regeneration 5 10 true

function uhcp:relics/give

give @s minecraft:fishing_rod[minecraft:enchantments={levels:{"minecraft:luck_of_the_sea":5,"minecraft:lure":5,"minecraft:unbreaking":5,"minecraft:vanishing_curse":1}}] 1
give @s minecraft:fishing_rod[minecraft:enchantments={levels:{"minecraft:luck_of_the_sea":6,"minecraft:lure":5,"minecraft:unbreaking":5,"minecraft:vanishing_curse":1}}] 1
give @s minecraft:fishing_rod[minecraft:enchantments={levels:{"minecraft:luck_of_the_sea":10,"minecraft:lure":5,"minecraft:unbreaking":5,"minecraft:vanishing_curse":1}}] 1

item replace entity @s armor.head with minecraft:diamond_helmet[minecraft:enchantments={levels:{"minecraft:protection":2}}]
item replace entity @s armor.chest with minecraft:diamond_chestplate[minecraft:enchantments={levels:{"minecraft:protection":2}}]
item replace entity @s armor.legs with minecraft:diamond_leggings[minecraft:enchantments={levels:{"minecraft:protection":2}}]
item replace entity @s armor.feet with minecraft:diamond_boots[minecraft:enchantments={levels:{"minecraft:protection":2}}]
item replace entity @s weapon.offhand with minecraft:shield

tellraw @a [{"selector":"@s","color":"gold"},{"text":" was given a Test Kit!","color":"gray"}]
scoreboard players reset @s testkit
