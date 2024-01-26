# Run on targets
effect give @s glowing 10 0 false
playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1
particle minecraft:end_rod ~ ~ ~ 0.5 1 0.5 0.1 100 normal
tellraw @s [{"text":"Someone inflicted you with Glowing!","color":"dark_red"}]
