# On the Hunt
tellraw @a[scores={uhcp_augment=120},gamemode=survival] {"text":"You will receive a Player Tracking Compass in 5 minutes!","color":"red"}
execute as @a[scores={uhcp_augment=120},gamemode=survival] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1
