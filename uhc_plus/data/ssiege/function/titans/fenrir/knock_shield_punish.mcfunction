damage @s 6 minecraft:generic by @n[tag=UHCP_Fenrir]
tellraw @s {"text":"You weren't holding a shield in your offhand! Fenrir struck for extra damage!","color":"dark_red","bold":true}
playsound minecraft:entity.wolf.growl master @s ~ ~ ~ 1 1 1
playsound minecraft:block.note_block.snare master @s ~ ~ ~ 1 1 1
particle minecraft:crit ~ ~ ~ 0.1 0.5 0.1 1 50 normal
