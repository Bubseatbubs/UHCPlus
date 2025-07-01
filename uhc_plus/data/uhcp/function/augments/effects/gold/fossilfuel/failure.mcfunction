# Failure
tellraw @s {"text":"No fuel was supplied.","color":"dark_red"}
playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1 1
scoreboard players set @s uhcp_timer -1
