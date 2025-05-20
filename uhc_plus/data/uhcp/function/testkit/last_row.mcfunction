# Last row of test kit
execute if score @s uhcp_augment matches 31 at @s run return run function uhcp:testkit/tightly_packed
item replace entity @s container.28 with minecraft:air
item replace entity @s container.29 with minecraft:air
item replace entity @s container.33 with minecraft:air
item replace entity @s container.34 with minecraft:air
item replace entity @s container.35 with minecraft:golden_carrot 64

execute if score @s uhcp_augment matches 138 run return run function uhcp:testkit/crazy_cat_lady
item replace entity @s container.30 with minecraft:fishing_rod[minecraft:enchantments={"minecraft:luck_of_the_sea":5,"minecraft:lure":5,"minecraft:unbreaking":5,"minecraft:vanishing_curse":1},minecraft:custom_data={uhcp_cat_lady:false}] 1
item replace entity @s container.31 with minecraft:fishing_rod[minecraft:enchantments={"minecraft:luck_of_the_sea":6,"minecraft:lure":5,"minecraft:unbreaking":5,"minecraft:vanishing_curse":1},minecraft:custom_data={uhcp_cat_lady:false}] 1
item replace entity @s container.32 with minecraft:fishing_rod[minecraft:enchantments={"minecraft:luck_of_the_sea":10,"minecraft:lure":5,"minecraft:unbreaking":5,"minecraft:vanishing_curse":1},minecraft:custom_data={uhcp_cat_lady:false}] 1

scoreboard players set @s uhcp_leave 1
item replace entity @s container.27 with minecraft:arrow 12
