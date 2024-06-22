clear @s *[minecraft:custom_data~{uhcp_consumable:12b}] 1

execute as @a[distance=..9,gamemode=survival] at @s run function uhcp:consumables/magic_trick/transform

scoreboard players operation @s[scores={uhcp_augment=122}] uhcp_aug_regenItem = %time uhcp_game_time
scoreboard players add @s[scores={uhcp_augment=122}] uhcp_aug_regenItem 3600
