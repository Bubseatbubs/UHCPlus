# Prevent disguise due to current transformation 
tellraw @s [{"text":"You are currently transformed.","color":"dark_red"}]
playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1 1 1
