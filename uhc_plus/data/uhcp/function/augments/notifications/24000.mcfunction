# Delayed Protection
tellraw @a[scores={uhcp_augment=143},gamemode=survival] {"text":"Armor will be supplied in 5 minutes!","color":"red"}
execute as @a[scores={uhcp_augment=143},gamemode=survival] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1
