# Man's Best Friend
tellraw @a[scores={uhcp_augment=43},gamemode=survival] {"text":"All your wolves will fetch loot in 5 minutes!","color":"red"}
execute as @a[scores={uhcp_augment=43},gamemode=survival] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

# Supply Drop
tellraw @a[scores={uhcp_augment=130},gamemode=survival] {"text":"Diamonds will be provided in 5 minutes!","color":"red"}
execute as @a[scores={uhcp_augment=130},gamemode=survival] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1
