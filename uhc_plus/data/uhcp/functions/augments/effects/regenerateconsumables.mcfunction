execute if score @s uhcp_augment matches 147 run loot give @s loot uhcp:consumables/suspicious_bamboo_shoot
execute if score @s uhcp_augment matches 118 run loot give @s loot uhcp:consumables/groovy_disc
execute if score @s uhcp_augment matches 122 run loot give @s loot uhcp:consumables/magic_trick

execute if score @s uhcp_augment matches 147 run tellraw @s [{"text":"You received a ","color":"white"},{"text":"Suspicious Bamboo","color":"light_purple"},{"text":" from ","color":"white"},{"text":"Kung-Fu Panda","color":"gray"},{"text":"!","color":"white"}]
execute if score @s uhcp_augment matches 147 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

execute if score @s uhcp_augment matches 118 run tellraw @s [{"text":"You received a ","color":"white"},{"text":"Groovy Disc","color":"light_purple"},{"text":" from ","color":"white"},{"text":"Rave Party","color":"gray"},{"text":"!","color":"white"}]
execute if score @s uhcp_augment matches 118 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

execute if score @s uhcp_augment matches 122 run tellraw @s [{"text":"You received a ","color":"white"},{"text":"Magic Trick","color":"light_purple"},{"text":" from ","color":"white"},{"text":"Bunny Magic","color":"gray"},{"text":"!","color":"white"}]
execute if score @s uhcp_augment matches 122 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

scoreboard players reset @s uhcp_aug_regenItem