# Late Looter
tellraw @a[scores={uhcp_augment=18},gamemode=survival] {"text":"Haste will be granted in 1 minute!","color":"red"}
execute as @a[scores={uhcp_augment=18},gamemode=survival] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1
