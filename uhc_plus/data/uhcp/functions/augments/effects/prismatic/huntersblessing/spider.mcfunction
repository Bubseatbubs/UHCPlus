effect give @s minecraft:speed infinite 0 true
tag @s add UHCP_Spider
playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1 1
tellraw @s [{"text":"You have absorbed the power of Spiders and gained ","color":"white"},{"text":"Speed I","color":"yellow"},{"text":".","color":"white"}]