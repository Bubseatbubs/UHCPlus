# Five minute warning
execute at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1 1
tellraw @s [{"text":"5 minutes","color":"blue"},{"text":" of use left for your compass.","color":"white"}]
