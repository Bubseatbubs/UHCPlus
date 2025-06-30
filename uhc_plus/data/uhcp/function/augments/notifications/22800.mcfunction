# On the Hunt
tellraw @a[scores={uhcp_augment=120},gamemode=survival] {"text":"You will receive a Player Tracking Compass in 1 minute!","color":"red"}
execute as @a[scores={uhcp_augment=120},gamemode=survival] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

# Speedy Start
tellraw @a[scores={uhcp_augment=126},gamemode=survival] {"text":"Speed will wear off in 1 minute!","color":"red"}
execute as @a[scores={uhcp_augment=126},gamemode=survival] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1.5 1

# Center of Attention
tellraw @a[scores={uhcp_augment=217},gamemode=survival] {"text":"Glowing will be cleared in 1 minute!","color":"red"}
execute as @a[scores={uhcp_augment=217},gamemode=survival] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1.5 1
