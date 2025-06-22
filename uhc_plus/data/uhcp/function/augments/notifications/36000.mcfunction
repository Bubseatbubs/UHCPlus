# Water to Wine
tellraw @a[scores={uhcp_augment=27},gamemode=survival] {"text":"Water Bottles will convert to Potions in 5 minutes!","color":"red"}
execute as @a[scores={uhcp_augment=27},gamemode=survival] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

# Copper Collector
tellraw @a[scores={uhcp_augment=35},gamemode=survival] {"text":"Copper will convert to Gold in 5 minutes!","color":"red"}
execute as @a[scores={uhcp_augment=35},gamemode=survival] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

# Redstone Ritual
tellraw @a[scores={uhcp_augment=36},gamemode=survival] {"text":"Redstone will convert to Absorption Hearts in 5 minutes!","color":"red"}
execute as @a[scores={uhcp_augment=36},gamemode=survival] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

# Fossil Fuel
tellraw @a[scores={uhcp_augment=49},gamemode=survival] {"text":"Bones will convert to Speed in 5 minutes!","color":"red"}
execute as @a[scores={uhcp_augment=49},gamemode=survival] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

# Planned Economy
tellraw @a[scores={uhcp_augment=50},gamemode=survival] {"text":"You will gain 100 Gold in 5 minutes!","color":"red"}
execute as @a[scores={uhcp_augment=50},gamemode=survival] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1
