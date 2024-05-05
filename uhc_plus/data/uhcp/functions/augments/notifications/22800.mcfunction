tellraw @a[scores={uhcp_augment=42},gamemode=survival] {"text":"Coal will convert to Diamonds in 1 minute!","color":"red"}
execute as @a[scores={uhcp_augment=42},gamemode=survival] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1
