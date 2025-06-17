# Sniffer Siege Prismatic Augments
execute if score @s uhcp_augment matches 502 run effect give @s resistance infinite 0 true
execute if score @s uhcp_augment matches 504 run loot give @s loot uhcp:consumables/titan_spinal_fluid
execute if score @s uhcp_augment matches 531 run function ssiege:augments/effects/prismatic/immovable_object
execute if score @s uhcp_augment matches 539 run function ssiege:augments/effects/prismatic/phantom_saber_ii/phantomsaber