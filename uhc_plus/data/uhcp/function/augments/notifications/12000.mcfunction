# Cram Session
tellraw @a[scores={uhcp_augment=150},gamemode=survival] {"text":"You will gain experience in 5 minutes!","color":"red"}
execute as @a[scores={uhcp_augment=150},gamemode=survival] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1
