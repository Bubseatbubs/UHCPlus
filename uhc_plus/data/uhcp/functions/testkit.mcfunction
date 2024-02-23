clear @s
give @s diamond_sword{Enchantments:[{id:"minecraft:sharpness",lvl:3}]}
give @s diamond_axe{Enchantments:[{id:"minecraft:sharpness",lvl:2}]}
give @s water_bucket
give @s lava_bucket
give @s bow{Enchantments:[{id:"minecraft:power",lvl:2}]}
give @s cobweb 8
give @s diamond_pickaxe{Enchantments:[{id:"minecraft:efficiency",lvl:1}]}
give @s cobblestone 64
give @s golden_apple 12

loot give @s loot uhcp:relics/soulflame_saber
loot give @s loot uhcp:relics/gravity_smasher
loot give @s loot uhcp:relics/flux_factor
loot give @s loot uhcp:relics/smooth_getaway
loot give @s loot uhcp:relics/thread_of_fate
loot give @s loot uhcp:relics/the_harvester
loot give @s loot uhcp:relics/boomburst
loot give @s loot uhcp:relics/yggdrasil_bark
loot give @s loot uhcp:relics/dragons_protection
loot give @s loot uhcp:relics/luminous_night

give @s fishing_rod{Enchantments:[{id:"minecraft:luck_of_the_sea",lvl:5},{id:"minecraft:lure",lvl:5},{id:"minecraft:unbreaking",lvl:5},{id:"minecraft:vanishing_curse",lvl:1}]} 1
give @s fishing_rod{Enchantments:[{id:"minecraft:luck_of_the_sea",lvl:6},{id:"minecraft:lure",lvl:5},{id:"minecraft:unbreaking",lvl:5},{id:"minecraft:vanishing_curse",lvl:1}]} 1
give @s fishing_rod{Enchantments:[{id:"minecraft:luck_of_the_sea",lvl:10},{id:"minecraft:lure",lvl:5},{id:"minecraft:unbreaking",lvl:5},{id:"minecraft:vanishing_curse",lvl:1}]} 1

item replace entity @s armor.head with diamond_helmet{Enchantments:[{id:"minecraft:protection",lvl:2}]}
item replace entity @s armor.chest with diamond_chestplate{Enchantments:[{id:"minecraft:protection",lvl:2}]}
item replace entity @s armor.legs with diamond_leggings{Enchantments:[{id:"minecraft:protection",lvl:2}]}
item replace entity @s armor.feet with diamond_boots{Enchantments:[{id:"minecraft:protection",lvl:2}]}
item replace entity @s weapon.offhand with shield

tellraw @a [{"selector":"@s","color":"gold"},{"text":" was given a Test Kit!","color":"gray"}]
scoreboard players reset @s testkit