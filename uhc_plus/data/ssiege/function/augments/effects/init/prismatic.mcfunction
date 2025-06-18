# Sniffer Siege Prismatic Augments
execute if score @s uhcp_augment matches 502 run return run effect give @s resistance infinite 0 true
execute if score @s uhcp_augment matches 503 run return run function ssiege:augments/effects/prismatic/exalted_adventure/init
execute if score @s uhcp_augment matches 504 run return run loot give @s loot uhcp:consumables/titan_spinal_fluid
execute if score @s uhcp_augment matches 508 run return run function ssiege:augments/effects/prismatic/bowmaster
execute if score @s uhcp_augment matches 509 run return run function ssiege:augments/effects/prismatic/buzzy_bees/init
execute if score @s uhcp_augment matches 510 run return run function ssiege:augments/effects/prismatic/center_of_attention
execute if score @s uhcp_augment matches 516 run return run give @s totem_of_undying
execute if score @s uhcp_augment matches 519 run return run function ssiege:augments/effects/prismatic/gapplegapiii
execute if score @s uhcp_augment matches 520 run return run function ssiege:augments/effects/prismatic/gasgasgas
execute if score @s uhcp_augment matches 522 run return run give @s golden_apple 3
execute if score @s uhcp_augment matches 528 run return run function ssiege:augments/effects/prismatic/hedge_fund/init
execute if score @s uhcp_augment matches 526 run return run function ssiege:augments/effects/prismatic/gomugomu
execute if score @s uhcp_augment matches 531 run return run function ssiege:augments/effects/prismatic/immovable_object
execute if score @s uhcp_augment matches 532 run return run give @s diamond_pickaxe[enchantments={"minecraft:efficiency":2,"minecraft:fortune":2}] 1
execute if score @s uhcp_augment matches 533 run return run attribute @s scale modifier add uhcp:scale -.3 add_multiplied_total
execute if score @s uhcp_augment matches 536 run return run function ssiege:augments/effects/prismatic/midas_touch/init
execute if score @s uhcp_augment matches 537 run return run function ssiege:augments/effects/prismatic/goldenless_apples/init
execute if score @s uhcp_augment matches 539 run return run function ssiege:augments/effects/prismatic/phantom_saber_ii/phantomsaber
execute if score @s uhcp_augment matches 542 run return run loot give @s loot ssiege:relics/radiant_relics
execute if score @s uhcp_augment matches 545 run return run function ssiege:augments/effects/prismatic/perseverence/init
execute if score @s uhcp_augment matches 550 run return run function ssiege:augments/effects/prismatic/starterkitiii
execute if score @s uhcp_augment matches 552 run return run function ssiege:augments/effects/prismatic/thehare
execute if score @s uhcp_augment matches 553 run return run function ssiege:augments/effects/prismatic/thetortoise
execute if score @s uhcp_augment matches 554 run return run function ssiege:augments/effects/prismatic/thinkfast
execute if score @s uhcp_augment matches 559 run return run scoreboard players set @s uhcp_game_time 0
execute if score @s uhcp_augment matches 560 run return run give @s fishing_rod[enchantments={"minecraft:luck_of_the_sea":11,"minecraft:lure":5},unbreakable={}] 1
execute if score @s uhcp_augment matches 562 run return run function ssiege:augments/effects/prismatic/unleashthebeastii