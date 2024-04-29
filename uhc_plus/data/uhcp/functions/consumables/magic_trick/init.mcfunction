clear @s *[custom_data~{uhcp_consumable:12b}] 1

execute as @a[distance=..9,gamemode=survival] at @s run function uhcp:consumables/magic_trick/transform

execute if score @s uhcp_augment matches 122 run scoreboard players operation @s uhcp_aug_regenItem = %time uhcp_game_time
execute if score @s uhcp_augment matches 122 run scoreboard players add @s uhcp_aug_regenItem 3600