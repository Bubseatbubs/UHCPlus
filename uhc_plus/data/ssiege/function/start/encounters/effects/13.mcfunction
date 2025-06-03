execute store result score %random uhcp_aug_count run random value 0..99
execute if score %random uhcp_aug_count matches ..14 run give @s minecraft:golden_apple
execute if score %random uhcp_aug_count matches ..14 run tellraw @s ["",{"text":"Encounter: ","bold":true,"color":"green"},{"text":"flamez made the mob drop a "},{"text":"Golden Apple","bold":true,"color":"yellow"},{"text":"!"}]
advancement revoke @s only ssiege:player_killed_mob_flamez