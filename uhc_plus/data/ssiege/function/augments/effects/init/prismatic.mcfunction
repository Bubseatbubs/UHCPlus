# Sniffer Siege Prismatic Augments
execute if score @s uhcp_augment matches 502 run effect give @s resistance infinite 0 true
execute if score @s uhcp_augment matches 504 run loot give @s loot uhcp:consumables/titan_spinal_fluid
execute if score @s uhcp_augment matches 508 run function ssiege:augments/effects/prismatic/bowmaster
execute if score @s uhcp_augment matches 509 run function ssiege:augments/effects/prismatic/buzzy_bees/init
execute if score @s uhcp_augment matches 510 run function ssiege:augments/effects/prismatic/center_of_attention
execute if score @s uhcp_augment matches 531 run function ssiege:augments/effects/prismatic/immovable_object
execute if score @s uhcp_augment matches 539 run function ssiege:augments/effects/prismatic/phantom_saber_ii/phantomsaber
execute if score @s uhcp_augment matches 550 run function ssiege:augments/effects/prismatic/starterkitiii
execute if score @s uhcp_augment matches 552 run function ssiege:augments/effects/prismatic/thehare
execute if score @s uhcp_augment matches 554 run function ssiege:augments/effects/prismatic/thinkfast
execute if score @s uhcp_augment matches 560 run give @s fishing_rod[enchantments={"minecraft:luck_of_the_sea":11,"minecraft:lure":5},unbreakable={}] 1