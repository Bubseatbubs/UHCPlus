scoreboard players reset @s uhcp_aug_regenItem
execute as @s[gamemode=!survival] run return 0
execute if score @s uhcp_augment matches 118 run function uhcp:augments/effects/regenerate_consumables/groovy_disc
execute if score @s uhcp_augment matches 122 run function uhcp:augments/effects/regenerate_consumables/magic_trick
execute if score @s uhcp_augment matches 232 run function uhcp:augments/effects/regenerate_consumables/suspicious_bamboo_shoot

tellraw @s[scores={uhcp_augment=118}] [{"text":"You received a ","color":"white"},{"text":"Groovy Disc","color":"light_purple"},{"text":" from ","color":"white"},{"text":"Rave Party","color":"gray"},{"text":"!","color":"white"}]
tellraw @s[scores={uhcp_augment=122}] [{"text":"You received a ","color":"white"},{"text":"Magic Trick","color":"light_purple"},{"text":" from ","color":"white"},{"text":"Bunny Magic","color":"gray"},{"text":"!","color":"white"}]
tellraw @s[scores={uhcp_augment=232}] [{"text":"You received a ","color":"white"},{"text":"Suspicious Bamboo","color":"light_purple"},{"text":" from ","color":"white"},{"text":"Kung-Fu Panda","color":"gray"},{"text":"!","color":"white"}]

playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1
