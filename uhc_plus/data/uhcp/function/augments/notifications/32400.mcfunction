# Drunken Stupor
tellraw @a[scores={uhcp_augment=108},gamemode=survival] {"text":"Effects will wear off in 1 minute!","color":"red"}
execute as @a[scores={uhcp_augment=108},gamemode=survival] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1.5 1
